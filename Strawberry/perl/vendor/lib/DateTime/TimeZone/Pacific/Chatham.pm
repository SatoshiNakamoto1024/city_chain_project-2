# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.08) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/DzE_ngvtVe/australasia.  Olson data version 2023c
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Pacific::Chatham;

use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '2.60';

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Pacific::Chatham::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
58943245572, #      utc_end 1868-11-01 11:46:12 (Sun)
DateTime::TimeZone::NEG_INFINITY, #  local_start
58943289600, #    local_end 1868-11-02 00:00:00 (Mon)
44028,
0,
'LMT',
    ],
    [
58943245572, #    utc_start 1868-11-01 11:46:12 (Sun)
61378256700, #      utc_end 1945-12-31 11:45:00 (Mon)
58943289672, #  local_start 1868-11-02 00:01:12 (Mon)
61378300800, #    local_end 1946-01-01 00:00:00 (Tue)
44100,
0,
'+1215',
    ],
    [
61378256700, #    utc_start 1945-12-31 11:45:00 (Mon)
62288316000, #      utc_end 1974-11-02 14:00:00 (Sat)
61378302600, #  local_start 1946-01-01 00:30:00 (Tue)
62288361900, #    local_end 1974-11-03 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62288316000, #    utc_start 1974-11-02 14:00:00 (Sat)
62297992800, #      utc_end 1975-02-22 14:00:00 (Sat)
62288365500, #  local_start 1974-11-03 03:45:00 (Sun)
62298042300, #    local_end 1975-02-23 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62297992800, #    utc_start 1975-02-22 14:00:00 (Sat)
62319160800, #      utc_end 1975-10-25 14:00:00 (Sat)
62298038700, #  local_start 1975-02-23 02:45:00 (Sun)
62319206700, #    local_end 1975-10-26 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62319160800, #    utc_start 1975-10-25 14:00:00 (Sat)
62330652000, #      utc_end 1976-03-06 14:00:00 (Sat)
62319210300, #  local_start 1975-10-26 03:45:00 (Sun)
62330701500, #    local_end 1976-03-07 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62330652000, #    utc_start 1976-03-06 14:00:00 (Sat)
62351215200, #      utc_end 1976-10-30 14:00:00 (Sat)
62330697900, #  local_start 1976-03-07 02:45:00 (Sun)
62351261100, #    local_end 1976-10-31 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62351215200, #    utc_start 1976-10-30 14:00:00 (Sat)
62362101600, #      utc_end 1977-03-05 14:00:00 (Sat)
62351264700, #  local_start 1976-10-31 03:45:00 (Sun)
62362151100, #    local_end 1977-03-06 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62362101600, #    utc_start 1977-03-05 14:00:00 (Sat)
62382664800, #      utc_end 1977-10-29 14:00:00 (Sat)
62362147500, #  local_start 1977-03-06 02:45:00 (Sun)
62382710700, #    local_end 1977-10-30 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62382664800, #    utc_start 1977-10-29 14:00:00 (Sat)
62393551200, #      utc_end 1978-03-04 14:00:00 (Sat)
62382714300, #  local_start 1977-10-30 03:45:00 (Sun)
62393600700, #    local_end 1978-03-05 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62393551200, #    utc_start 1978-03-04 14:00:00 (Sat)
62414114400, #      utc_end 1978-10-28 14:00:00 (Sat)
62393597100, #  local_start 1978-03-05 02:45:00 (Sun)
62414160300, #    local_end 1978-10-29 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62414114400, #    utc_start 1978-10-28 14:00:00 (Sat)
62425000800, #      utc_end 1979-03-03 14:00:00 (Sat)
62414163900, #  local_start 1978-10-29 03:45:00 (Sun)
62425050300, #    local_end 1979-03-04 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62425000800, #    utc_start 1979-03-03 14:00:00 (Sat)
62445564000, #      utc_end 1979-10-27 14:00:00 (Sat)
62425046700, #  local_start 1979-03-04 02:45:00 (Sun)
62445609900, #    local_end 1979-10-28 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62445564000, #    utc_start 1979-10-27 14:00:00 (Sat)
62456450400, #      utc_end 1980-03-01 14:00:00 (Sat)
62445613500, #  local_start 1979-10-28 03:45:00 (Sun)
62456499900, #    local_end 1980-03-02 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62456450400, #    utc_start 1980-03-01 14:00:00 (Sat)
62477013600, #      utc_end 1980-10-25 14:00:00 (Sat)
62456496300, #  local_start 1980-03-02 02:45:00 (Sun)
62477059500, #    local_end 1980-10-26 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62477013600, #    utc_start 1980-10-25 14:00:00 (Sat)
62487900000, #      utc_end 1981-02-28 14:00:00 (Sat)
62477063100, #  local_start 1980-10-26 03:45:00 (Sun)
62487949500, #    local_end 1981-03-01 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62487900000, #    utc_start 1981-02-28 14:00:00 (Sat)
62508463200, #      utc_end 1981-10-24 14:00:00 (Sat)
62487945900, #  local_start 1981-03-01 02:45:00 (Sun)
62508509100, #    local_end 1981-10-25 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62508463200, #    utc_start 1981-10-24 14:00:00 (Sat)
62519954400, #      utc_end 1982-03-06 14:00:00 (Sat)
62508512700, #  local_start 1981-10-25 03:45:00 (Sun)
62520003900, #    local_end 1982-03-07 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62519954400, #    utc_start 1982-03-06 14:00:00 (Sat)
62540517600, #      utc_end 1982-10-30 14:00:00 (Sat)
62520000300, #  local_start 1982-03-07 02:45:00 (Sun)
62540563500, #    local_end 1982-10-31 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62540517600, #    utc_start 1982-10-30 14:00:00 (Sat)
62551404000, #      utc_end 1983-03-05 14:00:00 (Sat)
62540567100, #  local_start 1982-10-31 03:45:00 (Sun)
62551453500, #    local_end 1983-03-06 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62551404000, #    utc_start 1983-03-05 14:00:00 (Sat)
62571967200, #      utc_end 1983-10-29 14:00:00 (Sat)
62551449900, #  local_start 1983-03-06 02:45:00 (Sun)
62572013100, #    local_end 1983-10-30 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62571967200, #    utc_start 1983-10-29 14:00:00 (Sat)
62582853600, #      utc_end 1984-03-03 14:00:00 (Sat)
62572016700, #  local_start 1983-10-30 03:45:00 (Sun)
62582903100, #    local_end 1984-03-04 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62582853600, #    utc_start 1984-03-03 14:00:00 (Sat)
62603416800, #      utc_end 1984-10-27 14:00:00 (Sat)
62582899500, #  local_start 1984-03-04 02:45:00 (Sun)
62603462700, #    local_end 1984-10-28 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62603416800, #    utc_start 1984-10-27 14:00:00 (Sat)
62614303200, #      utc_end 1985-03-02 14:00:00 (Sat)
62603466300, #  local_start 1984-10-28 03:45:00 (Sun)
62614352700, #    local_end 1985-03-03 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62614303200, #    utc_start 1985-03-02 14:00:00 (Sat)
62634866400, #      utc_end 1985-10-26 14:00:00 (Sat)
62614349100, #  local_start 1985-03-03 02:45:00 (Sun)
62634912300, #    local_end 1985-10-27 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62634866400, #    utc_start 1985-10-26 14:00:00 (Sat)
62645752800, #      utc_end 1986-03-01 14:00:00 (Sat)
62634915900, #  local_start 1985-10-27 03:45:00 (Sun)
62645802300, #    local_end 1986-03-02 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62645752800, #    utc_start 1986-03-01 14:00:00 (Sat)
62666316000, #      utc_end 1986-10-25 14:00:00 (Sat)
62645798700, #  local_start 1986-03-02 02:45:00 (Sun)
62666361900, #    local_end 1986-10-26 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62666316000, #    utc_start 1986-10-25 14:00:00 (Sat)
62677202400, #      utc_end 1987-02-28 14:00:00 (Sat)
62666365500, #  local_start 1986-10-26 03:45:00 (Sun)
62677251900, #    local_end 1987-03-01 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62677202400, #    utc_start 1987-02-28 14:00:00 (Sat)
62697765600, #      utc_end 1987-10-24 14:00:00 (Sat)
62677248300, #  local_start 1987-03-01 02:45:00 (Sun)
62697811500, #    local_end 1987-10-25 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62697765600, #    utc_start 1987-10-24 14:00:00 (Sat)
62709256800, #      utc_end 1988-03-05 14:00:00 (Sat)
62697815100, #  local_start 1987-10-25 03:45:00 (Sun)
62709306300, #    local_end 1988-03-06 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62709256800, #    utc_start 1988-03-05 14:00:00 (Sat)
62729820000, #      utc_end 1988-10-29 14:00:00 (Sat)
62709302700, #  local_start 1988-03-06 02:45:00 (Sun)
62729865900, #    local_end 1988-10-30 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62729820000, #    utc_start 1988-10-29 14:00:00 (Sat)
62740706400, #      utc_end 1989-03-04 14:00:00 (Sat)
62729869500, #  local_start 1988-10-30 03:45:00 (Sun)
62740755900, #    local_end 1989-03-05 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62740706400, #    utc_start 1989-03-04 14:00:00 (Sat)
62759455200, #      utc_end 1989-10-07 14:00:00 (Sat)
62740752300, #  local_start 1989-03-05 02:45:00 (Sun)
62759501100, #    local_end 1989-10-08 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62759455200, #    utc_start 1989-10-07 14:00:00 (Sat)
62773365600, #      utc_end 1990-03-17 14:00:00 (Sat)
62759504700, #  local_start 1989-10-08 03:45:00 (Sun)
62773415100, #    local_end 1990-03-18 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62773365600, #    utc_start 1990-03-17 14:00:00 (Sat)
62790904800, #      utc_end 1990-10-06 14:00:00 (Sat)
62773411500, #  local_start 1990-03-18 02:45:00 (Sun)
62790950700, #    local_end 1990-10-07 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62790904800, #    utc_start 1990-10-06 14:00:00 (Sat)
62804815200, #      utc_end 1991-03-16 14:00:00 (Sat)
62790954300, #  local_start 1990-10-07 03:45:00 (Sun)
62804864700, #    local_end 1991-03-17 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62804815200, #    utc_start 1991-03-16 14:00:00 (Sat)
62822354400, #      utc_end 1991-10-05 14:00:00 (Sat)
62804861100, #  local_start 1991-03-17 02:45:00 (Sun)
62822400300, #    local_end 1991-10-06 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62822354400, #    utc_start 1991-10-05 14:00:00 (Sat)
62836264800, #      utc_end 1992-03-14 14:00:00 (Sat)
62822403900, #  local_start 1991-10-06 03:45:00 (Sun)
62836314300, #    local_end 1992-03-15 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62836264800, #    utc_start 1992-03-14 14:00:00 (Sat)
62853804000, #      utc_end 1992-10-03 14:00:00 (Sat)
62836310700, #  local_start 1992-03-15 02:45:00 (Sun)
62853849900, #    local_end 1992-10-04 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62853804000, #    utc_start 1992-10-03 14:00:00 (Sat)
62868319200, #      utc_end 1993-03-20 14:00:00 (Sat)
62853853500, #  local_start 1992-10-04 03:45:00 (Sun)
62868368700, #    local_end 1993-03-21 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62868319200, #    utc_start 1993-03-20 14:00:00 (Sat)
62885253600, #      utc_end 1993-10-02 14:00:00 (Sat)
62868365100, #  local_start 1993-03-21 02:45:00 (Sun)
62885299500, #    local_end 1993-10-03 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62885253600, #    utc_start 1993-10-02 14:00:00 (Sat)
62899768800, #      utc_end 1994-03-19 14:00:00 (Sat)
62885303100, #  local_start 1993-10-03 03:45:00 (Sun)
62899818300, #    local_end 1994-03-20 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62899768800, #    utc_start 1994-03-19 14:00:00 (Sat)
62916703200, #      utc_end 1994-10-01 14:00:00 (Sat)
62899814700, #  local_start 1994-03-20 02:45:00 (Sun)
62916749100, #    local_end 1994-10-02 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62916703200, #    utc_start 1994-10-01 14:00:00 (Sat)
62931218400, #      utc_end 1995-03-18 14:00:00 (Sat)
62916752700, #  local_start 1994-10-02 03:45:00 (Sun)
62931267900, #    local_end 1995-03-19 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62931218400, #    utc_start 1995-03-18 14:00:00 (Sat)
62948152800, #      utc_end 1995-09-30 14:00:00 (Sat)
62931264300, #  local_start 1995-03-19 02:45:00 (Sun)
62948198700, #    local_end 1995-10-01 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62948152800, #    utc_start 1995-09-30 14:00:00 (Sat)
62962668000, #      utc_end 1996-03-16 14:00:00 (Sat)
62948202300, #  local_start 1995-10-01 03:45:00 (Sun)
62962717500, #    local_end 1996-03-17 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62962668000, #    utc_start 1996-03-16 14:00:00 (Sat)
62980207200, #      utc_end 1996-10-05 14:00:00 (Sat)
62962713900, #  local_start 1996-03-17 02:45:00 (Sun)
62980253100, #    local_end 1996-10-06 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
62980207200, #    utc_start 1996-10-05 14:00:00 (Sat)
62994117600, #      utc_end 1997-03-15 14:00:00 (Sat)
62980256700, #  local_start 1996-10-06 03:45:00 (Sun)
62994167100, #    local_end 1997-03-16 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
62994117600, #    utc_start 1997-03-15 14:00:00 (Sat)
63011656800, #      utc_end 1997-10-04 14:00:00 (Sat)
62994163500, #  local_start 1997-03-16 02:45:00 (Sun)
63011702700, #    local_end 1997-10-05 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63011656800, #    utc_start 1997-10-04 14:00:00 (Sat)
63025567200, #      utc_end 1998-03-14 14:00:00 (Sat)
63011706300, #  local_start 1997-10-05 03:45:00 (Sun)
63025616700, #    local_end 1998-03-15 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63025567200, #    utc_start 1998-03-14 14:00:00 (Sat)
63043106400, #      utc_end 1998-10-03 14:00:00 (Sat)
63025613100, #  local_start 1998-03-15 02:45:00 (Sun)
63043152300, #    local_end 1998-10-04 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63043106400, #    utc_start 1998-10-03 14:00:00 (Sat)
63057621600, #      utc_end 1999-03-20 14:00:00 (Sat)
63043155900, #  local_start 1998-10-04 03:45:00 (Sun)
63057671100, #    local_end 1999-03-21 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63057621600, #    utc_start 1999-03-20 14:00:00 (Sat)
63074556000, #      utc_end 1999-10-02 14:00:00 (Sat)
63057667500, #  local_start 1999-03-21 02:45:00 (Sun)
63074601900, #    local_end 1999-10-03 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63074556000, #    utc_start 1999-10-02 14:00:00 (Sat)
63089071200, #      utc_end 2000-03-18 14:00:00 (Sat)
63074605500, #  local_start 1999-10-03 03:45:00 (Sun)
63089120700, #    local_end 2000-03-19 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63089071200, #    utc_start 2000-03-18 14:00:00 (Sat)
63106005600, #      utc_end 2000-09-30 14:00:00 (Sat)
63089117100, #  local_start 2000-03-19 02:45:00 (Sun)
63106051500, #    local_end 2000-10-01 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63106005600, #    utc_start 2000-09-30 14:00:00 (Sat)
63120520800, #      utc_end 2001-03-17 14:00:00 (Sat)
63106055100, #  local_start 2000-10-01 03:45:00 (Sun)
63120570300, #    local_end 2001-03-18 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63120520800, #    utc_start 2001-03-17 14:00:00 (Sat)
63138060000, #      utc_end 2001-10-06 14:00:00 (Sat)
63120566700, #  local_start 2001-03-18 02:45:00 (Sun)
63138105900, #    local_end 2001-10-07 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63138060000, #    utc_start 2001-10-06 14:00:00 (Sat)
63151970400, #      utc_end 2002-03-16 14:00:00 (Sat)
63138109500, #  local_start 2001-10-07 03:45:00 (Sun)
63152019900, #    local_end 2002-03-17 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63151970400, #    utc_start 2002-03-16 14:00:00 (Sat)
63169509600, #      utc_end 2002-10-05 14:00:00 (Sat)
63152016300, #  local_start 2002-03-17 02:45:00 (Sun)
63169555500, #    local_end 2002-10-06 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63169509600, #    utc_start 2002-10-05 14:00:00 (Sat)
63183420000, #      utc_end 2003-03-15 14:00:00 (Sat)
63169559100, #  local_start 2002-10-06 03:45:00 (Sun)
63183469500, #    local_end 2003-03-16 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63183420000, #    utc_start 2003-03-15 14:00:00 (Sat)
63200959200, #      utc_end 2003-10-04 14:00:00 (Sat)
63183465900, #  local_start 2003-03-16 02:45:00 (Sun)
63201005100, #    local_end 2003-10-05 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63200959200, #    utc_start 2003-10-04 14:00:00 (Sat)
63215474400, #      utc_end 2004-03-20 14:00:00 (Sat)
63201008700, #  local_start 2003-10-05 03:45:00 (Sun)
63215523900, #    local_end 2004-03-21 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63215474400, #    utc_start 2004-03-20 14:00:00 (Sat)
63232408800, #      utc_end 2004-10-02 14:00:00 (Sat)
63215520300, #  local_start 2004-03-21 02:45:00 (Sun)
63232454700, #    local_end 2004-10-03 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63232408800, #    utc_start 2004-10-02 14:00:00 (Sat)
63246924000, #      utc_end 2005-03-19 14:00:00 (Sat)
63232458300, #  local_start 2004-10-03 03:45:00 (Sun)
63246973500, #    local_end 2005-03-20 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63246924000, #    utc_start 2005-03-19 14:00:00 (Sat)
63263858400, #      utc_end 2005-10-01 14:00:00 (Sat)
63246969900, #  local_start 2005-03-20 02:45:00 (Sun)
63263904300, #    local_end 2005-10-02 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63263858400, #    utc_start 2005-10-01 14:00:00 (Sat)
63278373600, #      utc_end 2006-03-18 14:00:00 (Sat)
63263907900, #  local_start 2005-10-02 03:45:00 (Sun)
63278423100, #    local_end 2006-03-19 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63278373600, #    utc_start 2006-03-18 14:00:00 (Sat)
63295308000, #      utc_end 2006-09-30 14:00:00 (Sat)
63278419500, #  local_start 2006-03-19 02:45:00 (Sun)
63295353900, #    local_end 2006-10-01 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63295308000, #    utc_start 2006-09-30 14:00:00 (Sat)
63309823200, #      utc_end 2007-03-17 14:00:00 (Sat)
63295357500, #  local_start 2006-10-01 03:45:00 (Sun)
63309872700, #    local_end 2007-03-18 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63309823200, #    utc_start 2007-03-17 14:00:00 (Sat)
63326757600, #      utc_end 2007-09-29 14:00:00 (Sat)
63309869100, #  local_start 2007-03-18 02:45:00 (Sun)
63326803500, #    local_end 2007-09-30 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63326757600, #    utc_start 2007-09-29 14:00:00 (Sat)
63343087200, #      utc_end 2008-04-05 14:00:00 (Sat)
63326807100, #  local_start 2007-09-30 03:45:00 (Sun)
63343136700, #    local_end 2008-04-06 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63343087200, #    utc_start 2008-04-05 14:00:00 (Sat)
63358207200, #      utc_end 2008-09-27 14:00:00 (Sat)
63343133100, #  local_start 2008-04-06 02:45:00 (Sun)
63358253100, #    local_end 2008-09-28 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63358207200, #    utc_start 2008-09-27 14:00:00 (Sat)
63374536800, #      utc_end 2009-04-04 14:00:00 (Sat)
63358256700, #  local_start 2008-09-28 03:45:00 (Sun)
63374586300, #    local_end 2009-04-05 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63374536800, #    utc_start 2009-04-04 14:00:00 (Sat)
63389656800, #      utc_end 2009-09-26 14:00:00 (Sat)
63374582700, #  local_start 2009-04-05 02:45:00 (Sun)
63389702700, #    local_end 2009-09-27 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63389656800, #    utc_start 2009-09-26 14:00:00 (Sat)
63405986400, #      utc_end 2010-04-03 14:00:00 (Sat)
63389706300, #  local_start 2009-09-27 03:45:00 (Sun)
63406035900, #    local_end 2010-04-04 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63405986400, #    utc_start 2010-04-03 14:00:00 (Sat)
63421106400, #      utc_end 2010-09-25 14:00:00 (Sat)
63406032300, #  local_start 2010-04-04 02:45:00 (Sun)
63421152300, #    local_end 2010-09-26 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63421106400, #    utc_start 2010-09-25 14:00:00 (Sat)
63437436000, #      utc_end 2011-04-02 14:00:00 (Sat)
63421155900, #  local_start 2010-09-26 03:45:00 (Sun)
63437485500, #    local_end 2011-04-03 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63437436000, #    utc_start 2011-04-02 14:00:00 (Sat)
63452556000, #      utc_end 2011-09-24 14:00:00 (Sat)
63437481900, #  local_start 2011-04-03 02:45:00 (Sun)
63452601900, #    local_end 2011-09-25 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63452556000, #    utc_start 2011-09-24 14:00:00 (Sat)
63468885600, #      utc_end 2012-03-31 14:00:00 (Sat)
63452605500, #  local_start 2011-09-25 03:45:00 (Sun)
63468935100, #    local_end 2012-04-01 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63468885600, #    utc_start 2012-03-31 14:00:00 (Sat)
63484610400, #      utc_end 2012-09-29 14:00:00 (Sat)
63468931500, #  local_start 2012-04-01 02:45:00 (Sun)
63484656300, #    local_end 2012-09-30 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63484610400, #    utc_start 2012-09-29 14:00:00 (Sat)
63500940000, #      utc_end 2013-04-06 14:00:00 (Sat)
63484659900, #  local_start 2012-09-30 03:45:00 (Sun)
63500989500, #    local_end 2013-04-07 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63500940000, #    utc_start 2013-04-06 14:00:00 (Sat)
63516060000, #      utc_end 2013-09-28 14:00:00 (Sat)
63500985900, #  local_start 2013-04-07 02:45:00 (Sun)
63516105900, #    local_end 2013-09-29 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63516060000, #    utc_start 2013-09-28 14:00:00 (Sat)
63532389600, #      utc_end 2014-04-05 14:00:00 (Sat)
63516109500, #  local_start 2013-09-29 03:45:00 (Sun)
63532439100, #    local_end 2014-04-06 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63532389600, #    utc_start 2014-04-05 14:00:00 (Sat)
63547509600, #      utc_end 2014-09-27 14:00:00 (Sat)
63532435500, #  local_start 2014-04-06 02:45:00 (Sun)
63547555500, #    local_end 2014-09-28 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63547509600, #    utc_start 2014-09-27 14:00:00 (Sat)
63563839200, #      utc_end 2015-04-04 14:00:00 (Sat)
63547559100, #  local_start 2014-09-28 03:45:00 (Sun)
63563888700, #    local_end 2015-04-05 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63563839200, #    utc_start 2015-04-04 14:00:00 (Sat)
63578959200, #      utc_end 2015-09-26 14:00:00 (Sat)
63563885100, #  local_start 2015-04-05 02:45:00 (Sun)
63579005100, #    local_end 2015-09-27 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63578959200, #    utc_start 2015-09-26 14:00:00 (Sat)
63595288800, #      utc_end 2016-04-02 14:00:00 (Sat)
63579008700, #  local_start 2015-09-27 03:45:00 (Sun)
63595338300, #    local_end 2016-04-03 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63595288800, #    utc_start 2016-04-02 14:00:00 (Sat)
63610408800, #      utc_end 2016-09-24 14:00:00 (Sat)
63595334700, #  local_start 2016-04-03 02:45:00 (Sun)
63610454700, #    local_end 2016-09-25 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63610408800, #    utc_start 2016-09-24 14:00:00 (Sat)
63626738400, #      utc_end 2017-04-01 14:00:00 (Sat)
63610458300, #  local_start 2016-09-25 03:45:00 (Sun)
63626787900, #    local_end 2017-04-02 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63626738400, #    utc_start 2017-04-01 14:00:00 (Sat)
63641858400, #      utc_end 2017-09-23 14:00:00 (Sat)
63626784300, #  local_start 2017-04-02 02:45:00 (Sun)
63641904300, #    local_end 2017-09-24 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63641858400, #    utc_start 2017-09-23 14:00:00 (Sat)
63658188000, #      utc_end 2018-03-31 14:00:00 (Sat)
63641907900, #  local_start 2017-09-24 03:45:00 (Sun)
63658237500, #    local_end 2018-04-01 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63658188000, #    utc_start 2018-03-31 14:00:00 (Sat)
63673912800, #      utc_end 2018-09-29 14:00:00 (Sat)
63658233900, #  local_start 2018-04-01 02:45:00 (Sun)
63673958700, #    local_end 2018-09-30 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63673912800, #    utc_start 2018-09-29 14:00:00 (Sat)
63690242400, #      utc_end 2019-04-06 14:00:00 (Sat)
63673962300, #  local_start 2018-09-30 03:45:00 (Sun)
63690291900, #    local_end 2019-04-07 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63690242400, #    utc_start 2019-04-06 14:00:00 (Sat)
63705362400, #      utc_end 2019-09-28 14:00:00 (Sat)
63690288300, #  local_start 2019-04-07 02:45:00 (Sun)
63705408300, #    local_end 2019-09-29 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63705362400, #    utc_start 2019-09-28 14:00:00 (Sat)
63721692000, #      utc_end 2020-04-04 14:00:00 (Sat)
63705411900, #  local_start 2019-09-29 03:45:00 (Sun)
63721741500, #    local_end 2020-04-05 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63721692000, #    utc_start 2020-04-04 14:00:00 (Sat)
63736812000, #      utc_end 2020-09-26 14:00:00 (Sat)
63721737900, #  local_start 2020-04-05 02:45:00 (Sun)
63736857900, #    local_end 2020-09-27 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63736812000, #    utc_start 2020-09-26 14:00:00 (Sat)
63753141600, #      utc_end 2021-04-03 14:00:00 (Sat)
63736861500, #  local_start 2020-09-27 03:45:00 (Sun)
63753191100, #    local_end 2021-04-04 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63753141600, #    utc_start 2021-04-03 14:00:00 (Sat)
63768261600, #      utc_end 2021-09-25 14:00:00 (Sat)
63753187500, #  local_start 2021-04-04 02:45:00 (Sun)
63768307500, #    local_end 2021-09-26 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63768261600, #    utc_start 2021-09-25 14:00:00 (Sat)
63784591200, #      utc_end 2022-04-02 14:00:00 (Sat)
63768311100, #  local_start 2021-09-26 03:45:00 (Sun)
63784640700, #    local_end 2022-04-03 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63784591200, #    utc_start 2022-04-02 14:00:00 (Sat)
63799711200, #      utc_end 2022-09-24 14:00:00 (Sat)
63784637100, #  local_start 2022-04-03 02:45:00 (Sun)
63799757100, #    local_end 2022-09-25 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63799711200, #    utc_start 2022-09-24 14:00:00 (Sat)
63816040800, #      utc_end 2023-04-01 14:00:00 (Sat)
63799760700, #  local_start 2022-09-25 03:45:00 (Sun)
63816090300, #    local_end 2023-04-02 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63816040800, #    utc_start 2023-04-01 14:00:00 (Sat)
63831160800, #      utc_end 2023-09-23 14:00:00 (Sat)
63816086700, #  local_start 2023-04-02 02:45:00 (Sun)
63831206700, #    local_end 2023-09-24 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63831160800, #    utc_start 2023-09-23 14:00:00 (Sat)
63848095200, #      utc_end 2024-04-06 14:00:00 (Sat)
63831210300, #  local_start 2023-09-24 03:45:00 (Sun)
63848144700, #    local_end 2024-04-07 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63848095200, #    utc_start 2024-04-06 14:00:00 (Sat)
63863215200, #      utc_end 2024-09-28 14:00:00 (Sat)
63848141100, #  local_start 2024-04-07 02:45:00 (Sun)
63863261100, #    local_end 2024-09-29 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63863215200, #    utc_start 2024-09-28 14:00:00 (Sat)
63879544800, #      utc_end 2025-04-05 14:00:00 (Sat)
63863264700, #  local_start 2024-09-29 03:45:00 (Sun)
63879594300, #    local_end 2025-04-06 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63879544800, #    utc_start 2025-04-05 14:00:00 (Sat)
63894664800, #      utc_end 2025-09-27 14:00:00 (Sat)
63879590700, #  local_start 2025-04-06 02:45:00 (Sun)
63894710700, #    local_end 2025-09-28 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63894664800, #    utc_start 2025-09-27 14:00:00 (Sat)
63910994400, #      utc_end 2026-04-04 14:00:00 (Sat)
63894714300, #  local_start 2025-09-28 03:45:00 (Sun)
63911043900, #    local_end 2026-04-05 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63910994400, #    utc_start 2026-04-04 14:00:00 (Sat)
63926114400, #      utc_end 2026-09-26 14:00:00 (Sat)
63911040300, #  local_start 2026-04-05 02:45:00 (Sun)
63926160300, #    local_end 2026-09-27 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63926114400, #    utc_start 2026-09-26 14:00:00 (Sat)
63942444000, #      utc_end 2027-04-03 14:00:00 (Sat)
63926163900, #  local_start 2026-09-27 03:45:00 (Sun)
63942493500, #    local_end 2027-04-04 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63942444000, #    utc_start 2027-04-03 14:00:00 (Sat)
63957564000, #      utc_end 2027-09-25 14:00:00 (Sat)
63942489900, #  local_start 2027-04-04 02:45:00 (Sun)
63957609900, #    local_end 2027-09-26 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63957564000, #    utc_start 2027-09-25 14:00:00 (Sat)
63973893600, #      utc_end 2028-04-01 14:00:00 (Sat)
63957613500, #  local_start 2027-09-26 03:45:00 (Sun)
63973943100, #    local_end 2028-04-02 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
63973893600, #    utc_start 2028-04-01 14:00:00 (Sat)
63989013600, #      utc_end 2028-09-23 14:00:00 (Sat)
63973939500, #  local_start 2028-04-02 02:45:00 (Sun)
63989059500, #    local_end 2028-09-24 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
63989013600, #    utc_start 2028-09-23 14:00:00 (Sat)
64005343200, #      utc_end 2029-03-31 14:00:00 (Sat)
63989063100, #  local_start 2028-09-24 03:45:00 (Sun)
64005392700, #    local_end 2029-04-01 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
64005343200, #    utc_start 2029-03-31 14:00:00 (Sat)
64021068000, #      utc_end 2029-09-29 14:00:00 (Sat)
64005389100, #  local_start 2029-04-01 02:45:00 (Sun)
64021113900, #    local_end 2029-09-30 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
64021068000, #    utc_start 2029-09-29 14:00:00 (Sat)
64037397600, #      utc_end 2030-04-06 14:00:00 (Sat)
64021117500, #  local_start 2029-09-30 03:45:00 (Sun)
64037447100, #    local_end 2030-04-07 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
64037397600, #    utc_start 2030-04-06 14:00:00 (Sat)
64052517600, #      utc_end 2030-09-28 14:00:00 (Sat)
64037443500, #  local_start 2030-04-07 02:45:00 (Sun)
64052563500, #    local_end 2030-09-29 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
64052517600, #    utc_start 2030-09-28 14:00:00 (Sat)
64068847200, #      utc_end 2031-04-05 14:00:00 (Sat)
64052567100, #  local_start 2030-09-29 03:45:00 (Sun)
64068896700, #    local_end 2031-04-06 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
64068847200, #    utc_start 2031-04-05 14:00:00 (Sat)
64083967200, #      utc_end 2031-09-27 14:00:00 (Sat)
64068893100, #  local_start 2031-04-06 02:45:00 (Sun)
64084013100, #    local_end 2031-09-28 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
64083967200, #    utc_start 2031-09-27 14:00:00 (Sat)
64100296800, #      utc_end 2032-04-03 14:00:00 (Sat)
64084016700, #  local_start 2031-09-28 03:45:00 (Sun)
64100346300, #    local_end 2032-04-04 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
64100296800, #    utc_start 2032-04-03 14:00:00 (Sat)
64115416800, #      utc_end 2032-09-25 14:00:00 (Sat)
64100342700, #  local_start 2032-04-04 02:45:00 (Sun)
64115462700, #    local_end 2032-09-26 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
64115416800, #    utc_start 2032-09-25 14:00:00 (Sat)
64131746400, #      utc_end 2033-04-02 14:00:00 (Sat)
64115466300, #  local_start 2032-09-26 03:45:00 (Sun)
64131795900, #    local_end 2033-04-03 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
64131746400, #    utc_start 2033-04-02 14:00:00 (Sat)
64146866400, #      utc_end 2033-09-24 14:00:00 (Sat)
64131792300, #  local_start 2033-04-03 02:45:00 (Sun)
64146912300, #    local_end 2033-09-25 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
    [
64146866400, #    utc_start 2033-09-24 14:00:00 (Sat)
64163196000, #      utc_end 2034-04-01 14:00:00 (Sat)
64146915900, #  local_start 2033-09-25 03:45:00 (Sun)
64163245500, #    local_end 2034-04-02 03:45:00 (Sun)
49500,
1,
'+1345',
    ],
    [
64163196000, #    utc_start 2034-04-01 14:00:00 (Sat)
64178316000, #      utc_end 2034-09-23 14:00:00 (Sat)
64163241900, #  local_start 2034-04-02 02:45:00 (Sun)
64178361900, #    local_end 2034-09-24 02:45:00 (Sun)
45900,
0,
'+1245',
    ],
];

sub olson_version {'2023c'}

sub has_dst_changes {61}

sub _max_year {2033}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}

sub _last_offset { 45900 }

my $last_observance = bless( {
  'format' => '+1245/+1345',
  'gmtoff' => '12:45',
  'local_start_datetime' => bless( {
    'formatter' => undef,
    'local_rd_days' => 710397,
    'local_rd_secs' => 1800,
    'offset_modifier' => 0,
    'rd_nanosecs' => 0,
    'tz' => bless( {
      'name' => 'floating',
      'offset' => 0
    }, 'DateTime::TimeZone::Floating' ),
    'utc_rd_days' => 710397,
    'utc_rd_secs' => 1800,
    'utc_year' => 1947
  }, 'DateTime' ),
  'offset_from_std' => 0,
  'offset_from_utc' => 45900,
  'until' => [],
  'utc_start_datetime' => bless( {
    'formatter' => undef,
    'local_rd_days' => 710396,
    'local_rd_secs' => 42300,
    'offset_modifier' => 0,
    'rd_nanosecs' => 0,
    'tz' => bless( {
      'name' => 'floating',
      'offset' => 0
    }, 'DateTime::TimeZone::Floating' ),
    'utc_rd_days' => 710396,
    'utc_rd_secs' => 42300,
    'utc_year' => 1946
  }, 'DateTime' )
}, 'DateTime::TimeZone::OlsonDB::Observance' )
;
sub _last_observance { $last_observance }

my $rules = [
  bless( {
    'at' => '2:45s',
    'from' => '2007',
    'in' => 'Sep',
    'letter' => '',
    'name' => 'Chatham',
    'offset_from_std' => 3600,
    'on' => 'lastSun',
    'save' => '1:00',
    'to' => 'max'
  }, 'DateTime::TimeZone::OlsonDB::Rule' ),
  bless( {
    'at' => '2:45s',
    'from' => '2008',
    'in' => 'Apr',
    'letter' => '',
    'name' => 'Chatham',
    'offset_from_std' => 0,
    'on' => 'Sun>=1',
    'save' => '0',
    'to' => 'max'
  }, 'DateTime::TimeZone::OlsonDB::Rule' )
]
;
sub _rules { $rules }


1;

