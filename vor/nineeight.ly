\version "2.12.2"

\header {
	title = "Aǧır Roman"
	copyright = "3/6/10" % put date center bottom
	}

%music pieces
melody = {
\relative c'' { \time 9/8 \set beatLength = #(ly:make-moment 1 16) \set beatGrouping = #'(4 4 6 4)
	\mark \default %A
	\repeat volta 2 {
	a,4 c d16 ees ees d d c d d d d | }
	\alternative {
		{ a8 c d fis ees16 fis ees d d c d d d d | }
		{ a8 c d fis ees16 fis ees d d c d d d8  | }
	}
	
	\mark \default %B
	\repeat volta 2 {
	\times 2/3 { c'16 bes a } a bes a a a g \times 2/3 { a g g } f g f8 g16 g g g |
	g8 b,16 c d e f g \times 4/6 { a ais b c bes a } a8 a16 a a a |
	d,16 f a d c bes a g \times 2/3 { a g g } f g f8 g16 g g g |
	f8 g16 g g f g e? f f ees d d c d d d8 | }

	\mark \default %C
	\repeat volta 2 {
	d16 f a d c16 c c c \times 2/3 { d c bes } bes c bes8 bes16 bes bes bes |
	d,16 f a c a f a c \times 2/3 { c bes a } a bes a8 a16 a a a |
	g16 aes g f g aes b? c b ees d c c b aes g f e? |
	f8 g16 g g f g e? f f ees d d c d d d8  | }

	\mark \default %D
	\repeat volta 2 {
	e8 f g16 g g g g aes aes g g f g g g g | g8 ees'16 d d c b aes b b aes g g f g g g g | 
	g8 g'16 f f ees ees d \times 2/3 { f ees d } ees f d ees c d b aes |
	aes8 b c16 d c b aes aes aes g g f g g g g }

	\mark \default %E
	\repeat volta 2 {
	g8 f16 g f8 e?16 f \times 2/3 { f ees d } d ees d8 d16 d d c |
	d8 e f g g16 aes aes g g f g g g g | }

	\repeat volta 6 {
	
	d8_\markup { \italic "speed up lots" } e f g g16 aes aes g g f g g g g | }
	
}
}

%layout

\book { \header { poet = "Melody - C" }
	\score {
	\new Staff {	
		\melody	
	}
	}
}

\book { \header { poet = "Melody - Bb" }
	\score {
	\new Staff { \transpose c d
		\melody	
	}
	}
}

\book { \header { poet = "Melody - Eb" }
    \score {
	\new Staff { \transpose c a 	
		\melody	
	}
    }
}
%}

