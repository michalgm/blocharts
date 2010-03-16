\version "2.12.1"

\header {
	title = "Arosal"
	composer = "Rumen 'Sali' Shopov"
	copyright = "3/16/2010"
	}

	\paper { page-count=2 }

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }

% music pieces

%part: tenorOne
tenorOne = {
  \relative ees'' { \time 4/4
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
%\tempo 4=170
%layout
#(set-default-paper-size "letter")

\book { 
    \score {
	<<
        \new Staff {
		\tenorOne
	}
	>>
    }
}
