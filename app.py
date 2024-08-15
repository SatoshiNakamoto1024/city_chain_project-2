from flask import Flask, request, jsonify
from flask_cors import CORS  # ここでCORSをインポート

import requests
import json
from datetime import datetime
from ntru import Ntru
from random import choice
import hashlib
import pytz
import sys
import os
sys.path.append(os.path.dirname(__file__))

app = Flask(__name__)
CORS(app)  # CORSを全てのエンドポイントに対して許可
ntru = Ntru()

class DPoS:
    def __init__(self, municipalities):
        self.municipalities = municipalities
        self.approved_representative = None

    def elect_representative(self):
        self.approved_representative = choice(self.municipalities)
        return self.approved_representative

    def approve_transaction(self, transaction):
        if self.approved_representative:
            transaction['signature'] = f"approved_by_{self.approved_representative}"
            return True
        return False

class ProofOfPlace:
    def __init__(self, location):
        self.location = location
        self.timestamp = datetime.now(pytz.utc)

    def generate_proof(self):
        hasher = hashlib.sha256()
        hasher.update(f"{self.location}{self.timestamp}".encode())
        return hasher.hexdigest()

    @staticmethod
    def verify_proof(proof, location, timestamp):
        hasher = hashlib.sha256()
        hasher.update(f"{location}{timestamp}".encode())
        return hasher.hexdigest() == proof

dpos = DPoS(municipalities=["MunicipalityA", "MunicipalityB", "MunicipalityC"])

@app.route('/create_transaction', methods=['POST'])
def create_transaction():
    data = request.get_json()  # ここでリクエストデータを取得
    # 取得したデータをデバッグ用に表示
    print(f"Received data: {data}")

    if data is None:
        return jsonify({"error": "Invalid JSON or no data received"}), 400

    # 取得したデータをデバッグ用に表示
    print(f"Received data: {data}")
    
    transaction = {
        "sender": data['sender'],
        "receiver": data['receiver'],
        "amount": data['amount'],
        "timestamp": data['timestamp'],
        "transaction_id": data['transaction_id'],
        "verifiable_credential": data['verifiable_credential'],
        "signature": ntru.sign(json.dumps(data).encode(), data['private_key'])
    }

    if dpos.approve_transaction(transaction):
        response = requests.post('http://continental_main_chain:8001/transaction', json=transaction)
        return jsonify(response.json())
    else:
        return jsonify({"error": "Transaction not approved by DPoS"}), 403

@app.route('/add_block', methods=['POST'])
def add_block():
    data = request.json
    response = requests.post('http://continental_main_chain:8001/add_block', json=data)
    return jsonify(response.json())

@app.route('/sign_transaction', methods=['POST'])
def sign_transaction():
    try:
        data = request.get_json(force=True)  # JSONデータを強制的に取得
        transaction = json.dumps(data, ensure_ascii=False)  # 日本語を含めたデータを正しくエンコード
        signature = ntru.sign(transaction.encode('utf-8'), data['private_key'])  # UTF-8でエンコード
        return jsonify({"signature": signature.hex()})
    except Exception as e:
        return jsonify({"error": str(e)}), 400

@app.route('/verify_signature', methods=['POST'])
def verify_signature():
    try:
        data = request.get_json(force=True)  # 入力データをJSON形式として強制的に解釈
        transaction = json.dumps(data['transaction'], ensure_ascii=False)  # 日本語を扱うためにensure_ascii=Falseを設定
        signature = bytes.fromhex(data['signature'])
        public_key = data['public_key']
        is_valid = ntru.verify(transaction.encode('utf-8'), signature, public_key)  # UTF-8エンコーディングでエンコード
        return jsonify({"is_valid": is_valid})
    except Exception as e:
        return jsonify({"error": str(e)}), 400

@app.route('/generate_proof_of_place', methods=['POST'])
def generate_proof_of_place():
    try:
        data = request.get_json(force=True)  # JSONデータを強制的に取得
        proof_of_place = ProofOfPlace(location=(data['latitude'], data['longitude']))
        proof = proof_of_place.generate_proof()
        return jsonify({"proof": proof, "timestamp": proof_of_place.timestamp.isoformat()})
    except Exception as e:
        return jsonify({"error": str(e)}), 400

@app.route('/verify_proof_of_place', methods=['POST'])
def verify_proof_of_place():
    try:
        data = request.get_json(force=True)  # JSONデータを強制的に取得
        proof = data['proof']
        location = (data['latitude'], data['longitude'])
        timestamp = datetime.fromisoformat(data['timestamp'])
        is_valid = ProofOfPlace.verify_proof(proof, location, timestamp)
        return jsonify({"is_valid": is_valid})
    except Exception as e:
        return jsonify({"error": str(e)}), 400

# DApps側からMunicipal Chainへの送信を行うエンドポイント
@app.route('/send', methods=['POST'])
def send_love_currency():
    data = request.json  # フロントエンドからのデータを受け取る

    # Municipal Chainのエンドポイントにトランザクションを送信
    try:
        response = requests.post('http://localhost:5001/receive_transaction', json=data)
        
        if response.status_code == 200:
            # トランザクション送信後に保留リストを確認して出力
            get_pending_transactions()

        return jsonify(response.json())  # Municipal Chainからのレスポンスをフロントエンドに返す
    except requests.exceptions.RequestException as e:
        return jsonify({"error": str(e)}), 500  # エラー時の処理

# 保留トランザクションリストを取得するエンドポイント
@app.route('/pending_transactions', methods=['GET'])
def get_pending_transactions():
    try:
        response = requests.get('http://localhost:5001/pending_transactions')
        
        if response.status_code == 200:
            transactions = response.json()
            for tx in transactions:
                print(f"Transaction ID: {tx['transaction_id']}")
                print(f"Sender: {tx['sender']}")
                print(f"Receiver: {tx['receiver']}")
                print(f"Amount: {tx['amount']}")
                print(f"Timestamp: {tx['timestamp']}")
                print("-----------")
            return jsonify(transactions)  # 保留トランザクションを返す
        else:
            return jsonify({"error": "Failed to retrieve transactions"}), response.status_code
    except requests.exceptions.RequestException as e:
        return jsonify({"error": str(e)}), 500

@app.route('/')
def index():
    return "Flask app is running!"

# ルートエンドポイント
@app.route('/')
def home():
    return "Flaskアプリケーションは正常に動作しています！"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
