\version "2.12.1"

\header {
	title = "Erosal"
	composer = "Rumen 'Sali' Shopov"
	copyright = "3/18/2010"
	}

	%\paper { page-count=2 }

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }

% music pieces
%Part: melody
melody =  \relative e' {
        \clef "treble" \key c \major \time 2/2 <e gis b>1 | % 2
        <f a b>1 | % 3
        <d f a>1 | % 4
        \times 4/6  {
            e8 [ f8 gis8 ] gis8 [ f8 e8 ] }
        \times 4/6  {
            f8 [ f8 e8 ] e8 r8 r8 }
        | % 5
        <e gis b>1 | % 6
        <f a b>1 | % 7
        <d f b>1 | % 8
        \times 4/6  {
            a'8 [ gis8 f8 ] e8 [ f8 gis8 ] }
        \times 4/6  {
            gis8 [ f8 e8 ] e8 r8 r8 }
        \bar "||"
        | % 9
        e8 ^"1" [ f8 ] e4 e8 [ f8 ] e4 | \barNumberCheck #10
        e8 [ f8 e8 f8 ] gis8 [ gis8 gis8 f8 ] | % 11
        gis8 [ a8 ] gis4 gis8 [ a8 ] gis4 | % 12
        gis8 [ a8 gis8 a8 ] b8 [ b8 b8 a8 ] | % 13
        b8 [ c8 ] a4 a8 [ b8 ] gis4 | % 14
        \times 2/3  {
            b8 [ a8 gis8 ] }
        a8 [ b8 ] gis8 [ gis8 f8 e8 ] | % 15
        d8 [ d8 cis8 d8 ] e8 [ e8 d8 e8 ] | % 16
        f8 [ f8 e8 f8 ] gis8 [ gis8 f8 gis8 ] | % 17
        \times 2/3  {
            b8 [ a8 gis8 ] }
        a8 [ b8 ] gis8 [ gis8 f8 gis8 ] | % 18
        a8 [ gis8 f8 e8 ] e8 [ d8 ] e4 \bar "||" | % 19
        e8 ^"1" -"1" [ f8 ] e4 e8 [ f8 ] e4 | 
        e8 [ f8 e8 f8 ] gis8 [ gis8 gis8 f8 ] | % 21
        \times 2/3  {
            b8 [ a8 gis8 ] }
        gis4 \times 2/3 {
            b8 [ a8 gis8 ] }
        gis4 | % 22
        \times 2/3  {
            b8 [ a8 gis8 ] }
        gis8 [ a8 ] b8 [ b8 b8 a8 ] | % 23
        b8 [ c8 ] a4 a8 [ b8 ] gis4 | % 24
        \times 2/3  {
            b8 [ a8 gis8 ] }
        a8 [ b8 ] gis8 [ gis8 f8 e8 ] | % 25
        d8 [ d8 cis8 d8 ] e8 [ e8 d8 e8 ] | % 26
        f8 [ f8 e8 f8 ] gis8 [ gis8 f8 gis8 ] | % 27
        \times 2/3  {
            b8 [ a8 gis8 ] }
        a8 [ b8 ] gis8 [ gis8 f8 gis8 ] | % 28
        a8 [ gis8 f8 e8 ] e8 [ d8 e8 d8 ] \bar "||"
        \repeat volta 2 {
            | % 29
            e8 ^"1" r8 d'8 [ e8 ] e4 e4 | \barNumberCheck #30
            \times 4/6  {
                e8 [ e8 d8 ] e8 [ f8 ] r8 }
            \times 4/6  {
                d8 [ d8 cis8 ] d8 [ e8 ] r8 }
            | % 31
            \times 4/6  {
                c8 [ c8 b8 ] c8 [ d8 ] r8 }
            \times 4/6  {
                b8 [ b8 a8 ] b8 [ c8 ] r8 }
            | % 32
            \times 4/6  {
                a8 [ a8 gis8 ] a8 [ b8 ] r8 }
            \times 2/3  {
                gis4 b4 cis4 }
            | % 33
            | % 33
            d8 r8 cis8 [ d8 ] d4 d4 | % 34
            | % 34
            \times 4/6  {
                d8 [ d8 cis8 ] d8 [ e8 ] r8 }
            \times 4/6  {
                c8 [ c8 b8 ] c8 [ d8 ] r8 }
            | % 35
            | % 35
            \times 4/6  {
                b8 [ b8 a8 ] b8 [ c8 ] r8 }
            \times 4/6  {
                a8 [ a8 gis8 ] a8 [ b8 ] r8 }
            | % 36
            | % 36
            \times 2/3  {
                gis8 [ gis8 f8 ] }
            gis8 [ a8 ] b8 [ gis8 a8 f8 ] }
        | % 37
        | % 37
        | % 37
        e8 ^"1" r8 d8 [ e8 ] e4 e4 | % 38
        | % 38
        \times 2/3  {
            e8 [ e8 d8 ] }
        e8 [ f8 ] gis8 [ a8 f8 a8 ] | % 39
        | % 39
        gis8 [ d8 e8 f8 ] gis8 [ a8 a8 gis8 ] | \barNumberCheck #40
        | \barNumberCheck #40
        \times 2/3  {
            gis8 [ gis8 f8 ] }
        gis8 [ a8 ] b8 [ c8 a8 c8 ] | % 41
        | % 41
        b8 [ gis8 a8 b8 ] c4 cis4 | % 42
        | % 42
        \times 4/6  {
            d8 [ d8 e8 ] e8 [ d8 cis8 ] }
        \times 4/6  {
            cis8 [ cis8 d8 ] d8 [ c8 b8 ] }
        | % 43
        | % 43
        \times 4/6  {
            b8 [ b8 c8 ] c8 [ b8 a8 ] }
        \times 4/6  {
            a8 [ a8 b8 ] b8 [ a8 gis8 ] }
        | % 44
        | % 44
        \times 4/6  {
            gis8 [ gis8 a8 ] a8 [ gis8 f8 ] }
        \times 4/6  {
            f8 [ f8 gis8 ] gis8 [ f8 e8 ] }
        | % 45
        | % 45
        f8 r8 e8 [ f8 ] f4 f4 | % 46
        | % 46
        \times 2/3  {
            e8 [ f8 gis8 ] }
        \times 2/3  {
            gis8 [ f8 e8 ] }
        \times 2/3  {
            e8 [ f8 gis8 ] }
        \times 2/3  {
            a8 [ b8 cis8 ] }
        | % 47
        | % 47
        d8 r8 cis8 [ d8 ] d4 d4 | % 48
        | % 48
        \times 4/6  {
            d8 [ cis8 d8 ] e8 [ d8 c8 ] }
        \times 4/6  {
            c8 [ b8 c8 ] d8 [ c8 b8 ] }
        | % 49
        | % 49
        \times 4/6  {
            b8 [ a8 b8 ] c8 [ b8 a8 ] }
        \times 4/6  {
            a8 [ gis8 a8 ] b8 [ a8 gis8 ] }
        | \barNumberCheck #50
        | \barNumberCheck #50
        \times 4/6  {
            gis8 [ f8 gis8 ] a8 [ gis8 f8 ] }
        \times 4/6  {
            f8 [ e8 f8 ] gis8 [ f8 e8 ] }
        | % 51
        | % 51
        f8 r8 e8 [ f8 ] f4 f4 | % 52
        | % 52
        \times 2/3  {
            e8 [ f8 gis8 ] }
        \times 2/3  {
            gis8 [ f8 e8 ] }
        \times 2/3  {
            f8 [ f8 e8 ] }
        e4 \bar "||"
        \repeat volta 2 {
            | % 53
            | % 53
            | % 53
            b'4 ^"Solos" b8 [ b8 ] a8 [ gis8 ] f4 | % 54
            | % 54
            gis4 gis8 [ gis8 ] f8 [ e8 ] d4 | % 55
            | % 55
            gis4 gis8 [ gis8 ] f8 [ e8 d8 f8 ] | % 56
            | % 56
            e8 [ e8 e8 d8 ] e8 [ f8 gis8 a8 ] | % 57
            r8 b8 b8 [ b8 ] a8 [ gis8 ] f4 | % 58
            r8 gis8 gis8 [ gis8 ] f8 [ e8 ] d8 r8 | % 59
            | % 59
            gis4 gis8 [ gis8 ] f8 [ e8 d8 f8 ] | \barNumberCheck #60
            | \barNumberCheck #60
            e8 [ e8 e8 d8 ] e8 [ d8 ] e4 }
        \repeat volta 2 {
            | % 61
            b'4 \times 2/3 {
                b8 [ b8 b8 ] }
            \times 2/3  {
                d8 [ c8 b8 ] }
            b4 | % 62
            | % 62
            \times 2/3  {
                e,8 [ f8 gis8 ] }
            \times 2/3  {
                a8 [ b8 c8 ] }
            \times 2/3  {
                d8 [ c8 b8 ] }
            b4 }
        \alternative { {
                | % 63
                e4 e8 [ e8 ] d8 [ e8 d8 d8 ] | % 64
                cis8 [ d8 c8 c8 ] b8 [ c8 b8 b8 ] }
            {
                | % 65
                e8 [ d8 ] r8 c8 r8 b8 r8 a8 
			  gis8 [ gis8 f8 gis8 ] \times 2/3 { f8 [ f8 e8 ] } e4 
}
            } 
    \repeat volta 2 {
        | % 67
        a,8  [ c8 ] r8 d8 r8 es8 r8 d8 | % 68
        d4 \times 2/3 {
            d8 [ d8 d8 ] }
        \times 2/3  {
            a'8 [ g8 g8 ] }
        a4 | % 69
        a,8 [ c8 ] r8 d8 r8 es8 r8 d8 | \barNumberCheck #70
        d4 \times 2/3 {
            a'8 [ g8 fis8 ] }
        \times 2/3  {
            fis8 [ es8 d8 ] }
        d4 }
    \repeat volta 2 {
        | % 71
        \times 2/3  {
            bes'8 [ bes8 a8 ] }
        bes8 [ c8 ] a8 [ a8 g8 fis8 ] | % 72
        \times 2/3  {
            g8 [ g8 fis8 ] }
        g8 [ a8 ] fis8 [ fis8 es8 d8 ] | % 73
        \times 2/3  {
            g8 [ g8 fis8 ] }
        g8 [ a8 ] fis8 [ fis8 es8 fis8 ] | % 74
        g8 [ fis8 es8 d8 ] d8 [ fis8 a8 d,8 ] | % 75
        \times 2/3  {
            d8 [ d8 d8 ] }
        \times 2/3  {
            es8 [ es8 es8 ] }
        \times 2/3  {
            fis8 [ fis8 fis8 ] }
        \times 2/3  {
            g8 [ g8 g8 ] }
        | % 76
        b8 [ c8 c8 bes8 ] bes8 [ a8 ] g4 | % 77
        a8 [ bes8 bes8 a8 ] g8 [ fis8 ] es4 }
    \alternative {
	  		{ \times 2/3  { a8 [ g8 fis8 ] }
            g8 [ a8 ] fis8 [ fis8 es8 fis8 ] | % 79
            g8 [ fis8 es8 d8 ] d8 [ c8 ] d4 
		  }
        { \times 2/3  { b'8 [ a8 gis8 ] }
            a8 [ b8 ] gis8 [ gis8 f8 gis8 ] 
		  a8 [ gis8 f8 e8 ] e8 [ d8 ] e4 \bar "||"
		 }
        } | % 81
    \repeat volta 4 {
        \times 2/3  {
            r8 -"Solos" r8 <e gis>16 [ <e gis>16 ]
            }
        <e gis>8 [ <e gis>8 ] \times 2/3 {
            r8 r8 <e gis>16 [ <e gis>16 ] }
        <e gis>8 [ <e gis>8 ] }
    \repeat volta 4 {
        | % 83
        \times 2/3  {
            r8 r8 <d fis>16 [ <d fis>16 ] }
        <d fis>8 [ <d fis>8 ] \times 2/3 {
            r8 r8 <d fis>16 [ <d fis>16 ] }
        <d fis>8 [ <d fis>8 ] }
    | % 84
    \times 2/3  {
        c4 c4 c4 }
    \times 2/3  {
        <c es>4 <c es>4 <c es>4 }
    | % 85
    \times 2/3  {
        <c es a>4 <c es a>4 <c es a>4 }
    <c es a c>4 <c es a c>4 
    R1 \bar "||"
    | % 89
    \mark \markup { \musicglyph #"scripts.coda" } d8 [ e8
    ] r8 f8 r8 gis8 r8 e8 | 
    f8 [ gis8 ] r8 a8 r8 b8 r8 gis8 | % 91
    a8 [ b8 ] r8 c8 r8 d8 r8 f8 | % 92
    e4 r4 <e, gis b e>2 ~ ~ ~ ~ | % 93
    <e gis b e>2 r2
    }


%Part: tenorOne
tenorOne = {
  \transpose a c' { \relative e' { \time 2/2
	  f1 fis fis r| f fis d r
	  \mark \default %A
	  r8 f16 f f8 f8 r f16 f f8 f|
	  r8 f16 f f8 f8 r f16 f f8 f|
	  r8 f16 f f8 f8 r f16 f f8 f|
	  r8 f16 f f8 f8 r f16 f f8 f|
	  r8 fis16 fis fis8 fis r8 f16 f f8 f|
	  r8 fis16 fis fis8 fis r8 f16 f f8 f|
	  r8 d16 d d8 d r8 d16 d d8 d|
	  r8 d16 d d8 d r8 d16 d d8 d|
	  r8 d16 d d8 d r8 f16 f f8 f|
	  r8 d16 d d8 d r8 f16 f f8 f|

	  \mark "A" %A
	  r8 f16 f f8 f r f16 f f8 f|
	  r8 f16 f f8 f r f16 f f8 f|
	  r8 f16 f f8 f r f16 f f8 f|
	  r8 f16 f f8 f r f16 f f8 f|
	  r8 fis16 fis fis8 fis r8 f16 f f8 f|
	  r8 fis16 fis fis8 fis r8 f16 f f8 f|
	  r8 d16 d d8 d r d16 d d8 d|
	  r8 d16 d d8 d r d16 d d8 d|
	  r8 d16 d d8 d r f16 f f8 f|
	  r8 d16 d d8 d r f16 f f8 f|

	  \mark \default %B
	  \repeat volta 2 {
	  cis8 r r4 r2 |
	  cis8 r r4 e8 r r4  |
	  fis8 r r4 f8 r r4  |
	  d8 r r4 \times 2/3 {f4 gis ais}  |
	  d,8 r r4 r2 |
	  r8 d16 d d8 d r f16 f f8 f|
	  r8 f16 f f8 f r fis16 fis fis8 fis|
	  r8 fis16 fis fis8 fis r f16 f f8 f|
		}

	  \mark \default %C
	  r8 f16 f f8 f r f16 f f8 f|
	  r8 f16 f f8 f r f16 f f8 f|
	  r8 f16 f f8 f r f16 f f8 f|
	  r8 f16 f f8 f r f16 f f8 f|
	  r8 f16 f f8 f r f16 f f8 f|
	  d8 r r4 f8 r r4  |
	  f8 r r4 fis8 r r4  |
	  f8 r r4 d8 r r4  |
	  d8 r r4 r2 |
	  r8 fis16 fis fis8 fis r f16 f f8 f|
	  r8 d16 d d8 d r d16 d d8 d|
	  r8 d16 d d8 d r f16 f f8 f|
	  r8 f16 f f8 f r fis16 fis fis8 fis|
	  r8 f16 f f8 f r d16 d d8 d|
	  d8 r r4 r2 |
	  r8 fis16 fis fis8 fis r f16 f f8 f|

	  \mark \default %D
	  \repeat volta 2 {
	  r8 f16 f f8 f r f16 f f8 f|
	  r8 f16 f f8 f r d16 d d8 d|
	  r8 f16 f f8 f r d16 d d8 d|
	  r8 f16 f f8 f r r f8 \accent r8|
	  r2 f8 \accent r8  f8\accent r8|
	  r2 f8 \accent r8  f8\accent r8|
	  r8 f16 f f8 f r d16 d d8 d|
	  r8 d16 d d8 d r f16 f f8 f|
		}

	  \mark \default %E

	  \repeat volta 2 {
	  \times 2/3 {r8 
	  \mark \markup { \musicglyph #"scripts.segno" }
	  
	  r f16 f} f8 f  \times 2/3 {r8 r f16 f} f8 f |
	  \times 2/3 {r8 r f16 f} f8 f  \times 2/3 {r8 r f16 f} f8 f |
	}
	  \alternative {
		{\times 2/3 {r8 r e16 e} e8 e  \times 2/3 {e8 r e16 e} e8 e | \times 2/3 {r8 r fis16 fis} fis8 fis  \times 2/3 {r8 r f16 f} f8 f | }
		{cis'8 b r a r gis r fis | f8 f d f \times 2/3 { d8 d cis } cis4 | }

		}	

	\mark \default %F
	\repeat volta 2 { fis,8 a r b r c r b  | b4 r4 r2 | fis8 a r b r c r b | b4 r4 r2 | }

	\mark \default %G
	\repeat volta 2 { 
	  r8 e16 e e8 e r dis16 dis dis8 dis|
	  r8 e16 e e8 e r dis16 dis dis8 dis|
	  r8 e16 e e8 e r dis16 dis dis8 dis|
	  r8 c16 c c8 c r dis16 dis dis8 dis|
	  \times 2/3 { b8 b b } \times 2/3 {c c c} \times 2/3 {dis dis dis} \times 2/3 { e e e} |
	  r8 e16 e e8 e r e16 e e8 e | 
	  r8 e16 e e8 e r e16 e e8 e |
	}
	\alternative { 
	  { r8 e16 e e8 e r dis16 dis dis8 dis| r8 c16 c c8 c r dis16 dis dis8 dis| }
	  { r8 fis16 fis fis8 fis r f16 f f8 f| r8 d16 d d8 d r f16 f f8 f| }
	}

	\repeat volta 4 {
	  \times 2/3 {r8 r cis16 cis} cis8 cis  \times 2/3 {r8 r cis16 cis} cis8 cis |
	}
	\repeat volta 4 {
	  \times 2/3 {r8 r b16 b} b8 b  \times 2/3 {r8 r b16 b} b8 b |
	 }
	 \times 2/3 { a4 a a} \times 2/3 { a4 a a} |
	 
	 \times 2/3 { a,4 a a} \times 2/3 { a4 a a} |
	 \mark \markup "D.S. al Coda"
	r1
	  \mark \markup { \musicglyph #"scripts.coda" }
	  b'8 cis r d r f r cis | d f r fis r gis r f | fis gis r a r b r d | cis4 r4 cis,2 (|  cis2) r2 |
  }
}
}
%\tempo 4=170
%layout
#(set-default-paper-size "letter")

\book { 
    \score {
	<<
        \new Staff {
		\melody
	}
        \new Staff {
		\tenorOne
	}
	>>
    }
}
