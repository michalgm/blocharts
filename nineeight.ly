\version "2.12.2"

\header {
	title = "Ar Roman (?)"
	}

%music pieces
%Part: melody
melody = {
\relative c'' { \time 9/8 \set beatLength = #(ly:make-moment 1 16) \set beatGrouping = #'(4 4 6 4)
	\mark \default 
	\repeat volta 2 {
	a,4 c d16 ees ees d d c d d d d | 
	a8 c d fis ees16 fis ees d d c d d d d | }
	\mark \default
	\times 2/3 { c'16 bes a } a bes a a a g \times 2/3 { a g g } f g f8 g16 g g g |
	g8 b,16 c d e f g \times 4/6 { a ais b c bes a } a8 a16 a a8
	d,16 f a d c bes a g \times 2/3 { a g g } f g f8 g16 g g g |
	f8 g16 g g f g e f f ees d d c d d d8 |
	d16 f a d c8 c16 c \times 2/3 { d c bes } bes c bes bes bes bes bes8 |
	d,16 f a c a f a c \times 2/3 { c bes a } a bes a a a a a8 |
	g16 aes g f g aes b c b ees d c c b aes g f e |
	f8 g16 g g f g e f f ees d d c d8 r8 |
	r4 r r8. r r4 | 
}
}


%layout
\book { 
    \score {  
	  \new Staff \with {midiInstrument = #"trumpet"} { \tempo 8 = 144 
			\melody	
		}
		%\midi { }
    }
}
