
\version "2.12.2"
% automatically converted from PME.xml

\header {
    encodingsoftware = "Finale 2008 for Windows"
    tagline = "Finale 2008 for Windows"
    encodingdate = "2010-02-09"
	title = "Romani Dream"
    }

#(set-global-staff-size 20.5767485433)
\paper {
    paper-width = 21.59\cm
    paper-height = 27.93\cm
    top-margin = 1.59\cm
    botton-margin = 1.59\cm
    left-margin = 2.53\cm
    right-margin = 1.27\cm
    between-system-space = 2.19\cm
    page-top-space = 1.27\cm
    }
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
%part: melody
melody =  \relative d' {
   \set Score.markFormatter = #format-mark-box-letters
    \repeat volta 2 {
        \repeat volta 2 {
            \clef "treble" \key g \minor \time 2/2 \repeat volta 2 {
                d4 r8 fis8 r4 a4 | % 2
                r8 c8 r8 d8 es8 [ es8 ] d4 | % 3
                d,8 [ d8 d8 fis8 ] fis8 [ fis8 a8 a8 ] | % 4
                a8 [ d8 es8 c8 ] es8 [ es8 ] d4 }
            \repeat volta 2 {
                | % 5
                d,8 [ fis8 ] r8 a8 r8 c8 r8 d8 | % 6
                d8 [ es8 es8 d8 ] d8 [ c8 ] d4 | % 7
                d,8 [ fis8 ] r8 a8 r8 c8 r8 d8 | % 8
                d8 [ fis8 es8 d8 ] d8 [ c8 ] d4 }

			\mark \default %A

            \repeat volta 2 {
                | % 9
                d4 d8 [ d8 ] c4 c8 [ c8 ] | \barNumberCheck #10
                r8 es8 fis8 [ es8 ] d8 [ d8 d8 d8 ] }
            \alternative { {
                    | % 11
                    d8 [ d8 d8 d8 ] c4 c8 [ c8 ] | % 12
                    r8 es8 fis8 [ es8 ] d8 [ d8 ] d4 }
                {
                    | % 13
                    d8 [ d8 d8 d8 ] c4 c8 [ c8 ] }
                } | % 14
            r8 es8 fis8 [ es8 ] d8 [ d8 d8 d8 ] \bar "||"
			\mark \default %B
            \repeat volta 2 {
                | % 15
                | % 15
                <d, d'>8 -"2nd x" r8 g8 [ a8 ] a4 a8 [ a8 ] | % 16
                fis8 [ g8 a8 fis8 ] g8 [ a8 fis8 es8 ] | % 17
                d8 [ d8 d'8 c8 ] c8 [ bes8 bes8 a8 ] | % 18
                a8 [ g8 g8 fis8 ] g8 [ a8 fis8 fis8 ] | % 19
                fis8 r8 g8 [ a8 ] a4 a8 [ a8 ] | \barNumberCheck #20
                fis8 [ g8 g8 a8 ] fis8 [ fis8 es8 d8 ] | % 21
                \times 2/3  {
                    c8 [ c8 c8 ] }
                \times 2/3  {
                    d8 [ d8 d8 ] }
                \times 2/3  {
                    es8 [ es8 es8 ] }
                fis8 [ g8 ] }
            \alternative { {
                    | % 22
                    fis8 [ fis8 es8 d8 ] d8 [ c8 d8 c8 ] }
                {
                    | % 23
                    fis8 [ fis8 es8 d8 ] d8 [ c8 ] d4 }
                } \bar "||"
			\mark \default %A
            \repeat volta 2 {
                | % 24
                | % 24
                d'4 ^"2" d8 [ d8 ] c4 c8 [ c8 ] | % 25
                r8 es8 fis8 [ es8 ] d8 [ d8 ] d4 }
            \alternative { {
                    | % 26
                    d8 [ d8 d8 d8 ] c4 c8 [ c8 ] | % 27
                    r8 es8 fis8 [ es8 ] d8 [ d8 ] d4 }
                {
                    | % 28
                    d8 [ d8 d8 d8 ] c4 c8 [ c8 ] }
                } | % 29
            r8 es8 fis8 [ es8 ] d8 [ d8 ] d4 \bar "||"
			\mark \default %C
            \repeat volta 2 {
                | \barNumberCheck #30
                \times 2/3  {
                    d,8 [ d8 d8 ] }
                d4 \times 2/3 {
                    d'8 [ d8 d8 ] }
                d4 | % 31
                \times 2/3  {
                    d8 [ d8 d8 ] }
                d4 \times 2/3 {
                    d8 [ d8 d8 ] }
                d4 | % 32
                a8 [ a8 a8 c8 ] bes8 [ c8 bes8 a8 ] | % 33
                g8 _. r8 r4 r2 | % 34
                \times 2/3  {
                    a8 [ g8 fis8 ] }
                g8 [ a8 ] bes8 [ bes8 a8 g8 ] | % 35
                \times 2/3  {
                    fis8 [ fis8 es8 ] }
                fis8 [ g8 ] a8 [ a8 g8 fis8 ] | % 36
                \times 2/3  {
                    es8 [ es8 d8 ] }
                es8 [ fis8 ] g8 [ g8 fis8 es8 ] }
            \alternative { {
                    | % 37
                    d8 [ c8 d8 es8 ] fis8 [ g8 ] a4 }
                {
                    | % 38
                    d,8 [ es8 es8 d8 ] d8 [ c8 ] d4 }
                } \bar "||"
			\mark \default %D
            \repeat volta 2 {
                | % 39
                \times 2/3  {
                    a'8 [ g8 fis8 ] }
                g8 [ a8 ] bes8 [ bes8 a8 g8 ] | \barNumberCheck #40
                \times 2/3  {
                    fis8 [ fis8 es8 ] }
                fis8 [ g8 ] a8 [ a8 g8 fis8 ] | % 41
                \times 2/3  {
                    es8 [ es8 d8 ] }
                es8 [ fis8 ] g8 [ g8 fis8 es8 ] }
            \alternative { {
                    | % 42
                    d8 [ c8 d8 es8 ] fis8 [ g8 ] a4 }
                {
                    | % 43
                    d,8 [ es8 es8 d8 ] d8 [ c8 ] d4 }
                {
                    | % 44
                    d8 [ es8 es8 d8 ] d8 [ c8 d8 c8 ] }
                } \bar "||"
			\mark \default %E
            \repeat volta 2 {
                | % 45
                <d d'>8 r8 fis8 [ g8 ] a4 a4 | % 46
                a8 [ bes8 bes8 a8 ] g8 [ fis8 ] g4 | % 47
                \times 2/3  {
                    b4 g4 fis4 }
                \times 2/3  {
                    g4 a4 b4 }
                | % 48
                c8 [ d8 d8 c8 ] c8 [ b8 ] c4 | % 49
                r4 d8 [ es8 ] es4 es4 | \barNumberCheck #50
                d8 [ es8 es8 d8 ] c8 [ b8 ] c4 | % 51
                \times 2/3  {
                    fis4 fis4 es4 }
                es8 [ es8 es8 d8 ] }
            \alternative { {
                    | % 52
                    d8 [ es8 es8 d8 ] d8 [ c8 d8 d8 ] }
                {
                    | % 53
                    d8 [ es8 es8 d8 ] d8 [ c8 ] d4 }
                } 
			\mark \default %F
				\repeat volta 2 {
                | % 54
                fis8 [ es8 d8 fis8 ] es8 [ d8 fis8 es8 ] | % 55
                d8 [ fis8 es8 d8 ] fis8 [ es8 d8 c8 ] | % 56
                es8 [ d8 c8 es8 ] d8 [ c8 es8 d8 ] | % 57
                c8 [ es8 d8 c8 ] es8 [ d8 c8 bes8 ] | % 58
                c8 [ bes8 a8 c8 ] bes8 [ a8 bes8 a8 ] }
            \alternative { {
                    | % 59
                    \times 2/3  {
                        fis8 [ fis8 fis8 ] }
                    \times 2/3  {
                        g8 [ g8 g8 ] }
                    \times 2/3  {
                        a8 [ a8 a8 ] }
                    \times 2/3  {
                        bes8 [ bes8 bes8 ] }
                    }
                } | \barNumberCheck #60
            \times 2/3  {
                c8 [ c8 c8 ] }
            \times 2/3  {
                d8 [ d8 d8 ] }
            \times 2/3  {
                es8 [ es8 es8 ] }
            \times 2/3  {
                fis8 [ fis8 fis8 ] }
            | % 61
            d1 ~ }
        \alternative { {
                | % 62
                d1 }
            {
                | % 63
                es4. d4. bes4 }
            } | % 64
        g4. fis4. es4 | % 65
        d1 ~ | % 66
        d1 }
	\mark \default %G
    \repeat volta 2 {
        | % 67
        d8 [ d8 d8 fis8 ] fis8 [ fis8 a8 a8 ] | % 68
        a8 [ bes8 bes8 a8 ] g8 [ fis8 ] es4 | % 69
        es8 [ es8 es8 g8 ] g8 [ g8 bes8 bes8 ] | \barNumberCheck #70
        bes8 [ c8 c8 bes8 ] bes8 [ a8 ] g4 | % 71
        c8 [ c8 c8 d8 ] d8 [ d8 ] es4 | % 72
        r8 b8 c8 [ d8 ] es8 [ d8 ] c4 | % 73
        fis8 [ fis8 fis8 es8 ] es8 [ es8 es8 d8 ] | % 74
        d8 [ es8 es8 d8 ] d8 [ c8 ] d4 }
    | % 75
    fis8 [ es8 d8 fis8 ] es8 [ d8 c8 bes8 ] | % 76
    d8 [ c8 bes8 a8 ] c8 [ bes8 a8 g8 ] | % 77
    g8 [ fis8 g8 c8 ] r8 bes8 r8 a8 | % 78
    bes8 [ a8 bes8 es8 ] r8 d8 r8 c8 | % 79
    c8 [ b8 c8 fis8 ] r8 es8 r8 d8 | \barNumberCheck #80
    d8 [ es8 es8 d8 ] d8 [ c8 ] d4 \repeat volta 2 {
        | % 81
        d,4 r8 fis8 r4 a4 | % 82
        r8 c8 r8 d8 es8 [ es8 ] d4 | % 83
        d,8 [ d8 d8 fis8 ] fis8 [ fis8 a8 a8 ] | % 84
        a8 [ d8 es8 c8 ] es8 [ es8 ] d4 }
    | % 85
    d4 r4 r2 \bar "|."
    }

%part: changes
changes = \chordmode  {
	d1 | r1 | r1 | r1 |
	d1 | r1 | r1 | r1 |
	%A
	d1 | ees1 | d1 | c1:m | d1 | c1:m
	%B
	d1 | d1 | ees1 | ees1 | 
	d1 | d1 | c1:m | c1:m | c1:m
	%A
	d1 | ees1 | d1 | c1:m | d1 | c1:m
	%C
	d1 | d1 | d1 | ees1 | ees1 | 
	d1 | c1:m | d1 | d1 |
	%D
	ees | d | c:m | d |
	d |
	%E
	d | d | g | c:m | c:m | c:m | d | d | d
	%F
	d | d | ees | ees | c:m | c:m | c:m | c:m | d | d | c:m | c:m | d | d
	%G
	d | d | ees | ees | c:m | c:m | c:m | d | d | d | d | d | ees | c:m | d | d 
	d | d | d | d
}
%layout
\book { 
  \header { poet = "Melody - C" }
	\score {
	<<
	\new ChordNames { \set chordChanges = ##t \changes }
		\new Staff {
		\melody
	}
	>>
	}
%    \words
}
% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \melody }
        >>
    >>

