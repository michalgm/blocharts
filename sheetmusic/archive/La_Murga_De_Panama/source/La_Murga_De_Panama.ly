\version "2.12.3"

\header { 
	tagline = "1/31/2014"
	title = "La Murga De Panama"
	composer = "Willie Colon"

	copyright = \markup {\bold "Suggested Form: Bass, Drums, A B, A B, Bass, Solos, B B A"} %form
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
	\relative c' { \key d \minor

	\partial 8 <f a>8 |

	\mark \default
	\repeat volta 2 {
		<f a>8 <f a>4 <f a>8 <a c>4 <f a>8 <g bes>~ | <g bes> <e g>~ <e g>4 r r8 <g bes> |
		<g bes> <g bes>4 <f a>8 <a c>4 <g bes>8 <f a> | r2. r8 <f a> | 
		}
	
	\mark \default
	\repeat volta 2 {
		f8 f4 d4 e4 e8~ | e f4 e8~ e4 r8 <e g> | 
		r <e g> r <e g> <e g> <e g> r <d f> | r <f a> r <e g> <d f>4 r |
		}
	}
}

%part: bass
bass = {
	\relative c { \key d \minor

	\partial 8 r8 |
	
	\mark \default
	\repeat volta 2 {
		d8 f r a r4 a,~ | a2 r | a8 cis r e r4 d~ | d2 r |
		}

	\mark \default
	\repeat volta 2 {
		d8 f r a r4 a,~ | a2 r | a8 cis r e r4 d~ |  d2 r | 
		}


	}
}

%part: words
words = \markup { }

%part: changes
changes = \chordmode { }

%%Generated layout
#(set-default-paper-size "letter")
\book {
	\score { <<
			\set Score.markFormatter = #format-mark-box-numbers
			
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
			\tempo  4 = 172 
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\melody
		}
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"tuba" \clef bass
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\bass
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
}