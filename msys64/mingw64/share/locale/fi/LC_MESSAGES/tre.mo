��            )         �     �     �  /   �  5     !   A     c     {     �     �     �     �  #   �               '     3     <     E  u   S  7   �             #     *  &   =     d     �     �  (   �  �   �  ~  �     N     n  0   |  9   �  #   �          "     A     a     y     �  )   �     �     �     �     �  (   �     (  �   5  <     �  M  "     5  A     w  /   �     �     �     �  5     {  =                                                                                   
                                                 	    %s: invalid option --%s
 (standard input) Cannot use -B when reading from standard input. Copyright (c) 2001-2009 Ville Laurikari <vl@iki.fi>.
 Error in record delimiter pattern Error in search pattern Error reading from %s: %s
 Invalid back reference Invalid character range Invalid contents of {} Invalid regexp Invalid use of repetition operators Missing ')' Missing ']' Missing '}' No error No match Out of memory PATTERN is a POSIX extended regular expression (ERE) with the TRE extensions.
See tre(7) for a complete description.
 Record delimiter pattern must not match an empty string Regexp selection and interpretation:
  -e, --regexp=PATTERN	    use PATTERN as a regular expression
  -i, --ignore-case	    ignore case distinctions
  -k, --literal		    PATTERN is a literal string
  -w, --word-regexp	    force PATTERN to match only whole words

Approximate matching settings:
  -D, --delete-cost=NUM	    set cost of missing characters
  -I, --insert-cost=NUM	    set cost of extra characters
  -S, --substitute-cost=NUM set cost of wrong characters
  -E, --max-errors=NUM	    select records that have at most NUM errors
  -#			    select records that have at most # errors (# is a
			    digit between 0 and 9)

Miscellaneous:
  -d, --delimiter=PATTERN   set the record delimiter regular expression
  -v, --invert-match	    select non-matching records
  -V, --version		    print version information and exit
  -y, --nothing		    does nothing (for compatibility with the non-free
			    agrep program)
      --help		    display this help and exit

Output control:
  -B, --best-match	    only output records with least errors
  -c, --count		    only print a count of matching records per FILE
  -h, --no-filename	    suppress the prefixing filename on output
  -H, --with-filename	    print the filename for each match
  -l, --files-with-matches  only print FILE names containing matches
  -M, --delimiter-after     print record delimiter after record if -d is used
  -n, --record-number	    print record number with output
      --line-number         same as -n
  -q, --quiet, --silent	    suppress all normal output
  -s, --show-cost	    print match cost with output
      --colour, --color     use markers to distinguish the matching strings
      --show-position       prefix each output record with start and end
                            position of the first match within the record
 Report bugs to:  Searches for approximate matches of PATTERN in each FILE or standard input.
Example: `%s -2 optimize foo.txt' outputs all lines in file `foo.txt' that
match "optimize" within two errors.  E.g. lines which contain "optimise",
"optmise", and "opitmize" all match.
 Trailing backslash Try `%s --help' for more information.
 Unknown character class name Unknown collating element Unknown error Usage: %s [OPTION]... PATTERN [FILE]...
 With no FILE, or when FILE is -, reads standard input.  If less than two
FILEs are given, -h is assumed.  Exit status is 0 if a match is found, 1 for
no match, and 2 if there were errors.  If -E or -# is not specified, only
exact matches are selected.
 Project-Id-Version: TRE 0.7.4
Report-Msgid-Bugs-To: tre-general@lists.laurikari.net
PO-Revision-Date: 2002-07-29 23:46+0300
Last-Translator: Ville Laurikari <vl@iki.fi>
Language-Team: Finnish <translation-team-fi@lists.sourceforge.net>
Language: fi
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 %s: virheellinen valitsin --%s
 (vakiosyöte) Vakiosyötteestä luettaessa -B ei ole sallittu. Tekijänoikeus © 2001-2009 Ville Laurikari <vl@iki.fi>.
 Virhe tietueiden erotinlausekkeessa Virhe hakulausekkeessa Ei voi lukea kohteesta %s: %s
 Virheellinen osalausekeviittaus Virheellinen merkkialue Virhe {} sisällä Virheellinen lauseke Virheellinen toisto-operaattorin käyttö Puuttuva ')' Puuttuva ']' Puuttuva '}' Ei virhettä Hakulausekkeen esiintymää ei löytynyt Muisti loppu HAKULAUSEKE on POSIXin määrittelemä laajennettu säännöllinen lauseke (engl. 
extended regular expression).  Lisäksi voidaan käyttää TRE:n laajennuksia.
Hakulausekkeiden täysimittainen kuvaus on tre(7):ssä.
 Tietueiden erotinlauseke ei saa sopia tyhjään merkkijonoon Hakulausekkeen valinta ja tulkinta:
  -e, --regexp=HAKULAUSEKE  käytä HAKULAUSEKEtta säännöllisenä lausekkeena
  -i, --ignore-case         älä erottele isoja ja pieniä kirjaimia
  -k, --literal             HAKULAUSEKE on kiinteä merkkijono
  -w, --word-regexp         anna hakulausekkeen sopia vain kokonaisiin sanoihin

Likimääräisen sovittamisen asetukset:
  -D, --delete-cost=N       aseta puuttuvien merkkien hinnaksi N
  -I, --insert-cost=N       aseta ylimääräisten merkkien hinnaksi N
  -S, --substitute-cost=N   aseta väärien merkkien hinnaksi N
  -E, --max-errors=N        valitse tietueet joissa on enintään N virhettä
  -#                        valitse tietueet joissa on enintään # virhettä (# on
                            kokonaisluku väliltä 0-9)

Sekalaista:
  -d, --delimiter=LAUSEKE   aseta LAUSEKE tietueiden erotinlausekkeeksi
  -v, --invert-match        valitse tietueet jotka eivät sovi hakulausekkeeseen
  -V, --version             tulosta versiotieto ja lopeta
  -y, --nothing             ei tee mitään (yhteensopivuudeksi ei-vapaan
                            agrep -ohjelman kanssa)
      --help                tulosta tämä ohje ja lopeta

Tulostuksen asetukset:
  -B, --best-match          valitse tietueet joissa on vähiten virheitä
  -c, --count               tulosta vain sopivien tietueiden määrä per TIEDOSTO
  -h, --no-filename         älä lisää tiedoston nimeä tietueen alkuun
  -H, --with-filename       lisää aina tiedoston nimi tietueen alkuun
  -l, --files-with-matches  tulosta vain niiden TIEDOSTOjen nimet, joissa on
                            sopivia tietueita
  -M, --delimiter-after     tulosta erotin tietueen jälkeen jos -d on käytössä
  -n, --record-number       tulosta tietuenumerot
      --line-number         sama kuin -n
  -q, --quiet, --silent     älä tulosta mitään
  -s, --show-cost           tulosta virheiden määrä
      --colour, --color     korosta tulostetuista tietueista osat jotka
                            sopivat hakulausekkeeseen
      --show-position       lisää tulostettujen tietueiden alkuun haku-
                            lausekkeeseen sopivan osamerkkijonon alku- ja
                            loppusijainti tietueessa
 Raportoi virheistä osoitteeseen:  Etsii hakulausekkeen likimääräisiä esiintymiä tiedostoista tai vakiosyötteestä.
Esimerkki: `%s -2 lähteä foo.txt' palauttaa kaikki rivit tiedostossa
`foo.txt' joihin hakukaava "lähteä" sopii enintään kahdella virheellä.
Esimerkiksi rivit jotka sisältävät "lähtee" tai "lähtö" palautetaan.
 Lauseke loppuu kenoviivaan Kokeile `%s --help' saadaksesi lisää tietoa.
 Tuntematon merkkiluokka Tuntematon lajittuva merkki Tuntematon virhe Käyttö: %s [VALITSIN]... HAKULAUSEKE [TIEDOSTO]...
 Jos TIEDOSTOja ei ole annettu, tai jos TIEDOSTO on -, luetaan vakiosyötteestä.
Jos TIEDOSTOja on annettu vähemmän kuin kaksi, valitsin -h otetaan käyttöön
automaattisesti.  Paluukoodi on 0 jos hakukaavan esiintymiä löytyi, 1 jos
niitä ei löytynyt ja 2 jos tapahtui virhe.  Jos -E tai -# ei ole annettu,
vain tietueet jotka sopivat tarkasti hakulausekkeeseen valitaan.
 