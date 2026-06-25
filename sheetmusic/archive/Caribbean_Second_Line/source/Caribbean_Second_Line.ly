\version "2.12.3"

\header { 
	tagline = "1/31/2014"
	title = "Caribbean Second Line"
	composer = ""

	copyright = \markup {\bold ""} %form
	}

% music pieces
%part: leadsheet
leadsheet = {
	\relative c' { \key bes \dorian \time 2/2

	\mark \markup { \box "1" } 
	\repeat volta 2 {
		c'1~ | c | des~ | des |
		}
	\break

	\partial 8 bes8 |
	\mark \markup { \box "2" \tiny " melody" } 
	\repeat volta 2 {
		f'4 bes,8 ees r bes r ees | r des r ees des4-^ bes | 
		ees2. des8 bes | r2 r4. bes8 |
		}
	\break

	\mark \markup { \box "3" \tiny "solo bkgd" } 
	\repeat volta 2 {
		c4. c8 r2 | r4. c8~ c c c c | des4. aes8 r2 | r1 |
		}
	\break

	\mark \markup { \box "bass" } 
	\clef bass
	\repeat volta 2 {
		bes,,4. f8~ f2 | bes4 f bes a | aes4. <ees ees'>8~ <ees ees'>2 | aes4 aes a r |
		}
	\break
	}
}

%part: bass
bass = {
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
			
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"alto sax" \clef treble
			\tempo  4 = 100
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\leadsheet
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
}