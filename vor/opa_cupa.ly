
\version "2.12.2"
% automatically converted from OpaTsupa2.xml

\header {
    encodingsoftware = "Finale 2008 for Windows"
    encodingdate = "2010-03-18"
	title = "Opa Cupa"
    }

	\paper {
	  page-count = 1 
	}

%part: melody
melody =  \relative b' {
   \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'break-align-symbols = #'(clef)
		\mark \default
    \repeat volta 2 {
        \clef "treble" \key c \minor \time 4/4 | % 1
        b16 [ c16 c16 c16 ] g8 [ c16 c16 ] c8 [ g8 ] c16 [ c16 bes16 a16
        ] | % 2
        bes16 [ bes16 bes16 bes16 ] g8 [ bes16 bes16 ] bes8 [ g8 ] bes16
        [ bes16 a16 g16 ] | % 3
        | % 3
        a16 [ ais16 b16 c16 ] bes16 [ a16 g16 fis16 ] g8 [ fis8 ] es16 [
        es16 es16 d16 ] | % 4
        | % 4
        g16 [ fis16 es16 d16 ] c8 [ d16 es16 ] d16 [ d16 d16 g,16 ] g8 r8
        }
		\break
		\mark \default
    \repeat volta 2 {
        | % 5
        | % 5
        d'16 [ es16 es16 es16 ] c8 [ es16 es16 ] es8 [ c8 ] es16 [ es16
        d16 c16 ] | % 6
        | % 6
        f16 [ f16 f16 f16 ] d8 [ f16 f16 ] f16 [ e16 f16 e16 ] f16 [ f16
        es16 d16 ] | % 7
        | % 7
        d16 [ es16 es16 es16 ] c8 [ d16 es16 ] es16 [ c16 d16 es16 ] fis16
        [ fis16 fis16 fis16 ] | % 8
        | % 8
        d16 [ es16 es16 d16 ] c16 [ d16 es16 c16 ] d16 [ d16 d16 g,16 ]
        g8 r8 }
		\break
		\mark \default
    | % 9
    | % 9
    bes'8 [ a16 a16 ] bes8 [ a8 ] bes8 [ a8 ] g16 [ g16 g16 g16 ] |
    \barNumberCheck #10
    | \barNumberCheck #10
    fis8 [ g16 g16 ] g8 [ fis8 ] g8 [ fis8 ] es16 [ es16 es16 es16 ] | % 11
    | % 11
    c8 [ d16 es16 ] es8 [ es8 ] f8 [ es8 ] es16 [ es16 es16 d16 ] | % 12
    | % 12
    c8 [ d16 es16 ] d8 [ d8 ] d8 [ d8 d8 ] r8 | % 13
	\break
	\mark \default
    | % 13
    c8 [ c8 d8 es8 ] f8 [ es8 ~ ] es4 | % 14
    | % 14
    c8 [ c8 d8 es8 ] f8 [ es8 ~ ] es4 | % 15
    | % 15
    c8 [ c'8 bes8 a8 ] bes8 [ a8 ] g16 [ g16 g16 fis16 ] | % 16
    | % 16
    d16 [ es16 es16 d16 ] c8 [ d16 es16 ] d16 [ d16 d16 d16 ] d4
\break
\mark \default
	
	\repeat volta 2 {
        | % 17
        | % 17
        f2 f8 _> [ es8 d8 c8 ] | % 18
        | % 18
        r8 es16 [ es16 ] es8 [ es8 ] f8 [ es8 d8 c8 ] | % 19
        | % 19
        c8 [ c'8 bes8 a8 ] bes8 [ a8 ] g16 [ g16 g16 fis16 ] |
        \barNumberCheck #20
        | \barNumberCheck #20
        d16 [ es16 es16 d16 ] c8 [ d16 es16 ] d16 [ d16 d16 d16 ] d4 }
\break
\mark \default

    \repeat volta 2 {
        | % 21
        | % 21
        c8 [ g'16 g16 ] g8 [ g8 ] g8 [ g8 ] g16 [ g16 g16 fis16 ] | % 22
        | % 22
        fis8 [ fis16 fis16 ] fis8 [ fis8 ] g16 [ g16 g16 fis16 ] es16 [
        es16 es16 d16 ] | % 23
        | % 23
        c8 [ d16 es16 ] es8 [ es16 es16 ] f8 [ es8 ] es16 [ es16 es16 d16
        ] | % 24
        | % 24
        c8 [ d16 es16 ] d8 [ d8 ] d8 [ d8 ] d4 }
    }

%part: changes
changes =  \chordmode {
    | % 1
    c16:m5 | % 2
    | % 3
    | % 3
    s16*31 c16:m5 s8. c16:m5/+bes s8. as8:5 | % 4
    | % 4
    s4. d16:7 s16*7 g16:7 | % 5
    | % 5
    s16*7 c16:m5 | % 6
    | % 6
    s16*15 d16:m5 s16*7 g16:7 | % 7
    | % 7
    s16*7 c16:m5 s8. c8:m5/+bes s8 as16:5 s8. c16:dim5 | % 8
    | % 8
    s8. d16:7 s16*7 g16:7 | % 9
    | % 9
    s16*7 c8:m5 | \barNumberCheck #10
    | \barNumberCheck #10
    s8*7 c8:m5 s4. g8:7 | % 11
    | % 11
    s4. c8:m5 s8 c8:m5/+bes s8 as8:5 | % 12
    | % 12
    s4. d8:7 s4. g8:7 | % 13
    | % 13
    s4. c8:m5 s4. g8:7 | % 14
    | % 14
    s4. c8:m5 s4. g8:7 | % 15
    | % 15
    s4. c8:m5 s8 c8:m5/+bes s8 as8:5 | % 16
    | % 16
    s4. d16:7 s16*7 g16:7 | % 17
    | % 17
    s16*7 f2:m5 g8:7 | % 18
    | % 18
    s4. c8:m5 s4. g8:7 | % 19
    | % 19
    s4. c8:m5 s8 c8:m5/+bes s8 as8:5 | \barNumberCheck #20
    | \barNumberCheck #20
    s4. d16:7 s16*7 g16:7 | % 21
    | % 21
    s16*7 c8:m5 | % 22
    | % 22
    s8*7 d8:7 s4. g16:7 | % 23
    | % 23
    s16*7 c8:m5 s8 c8:m5/+bes s8 as8:5 | % 24
    | % 24
    s4. d8:7 s4. g8:7 }


% The score definition
\new Staff <<
    \context ChordNames = "Changes" \changes
    \context Staff <<
        \context Voice = "Melody" { \melody }
        >>
    >>

