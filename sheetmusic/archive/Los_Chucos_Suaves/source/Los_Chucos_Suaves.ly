\version "2.12.3"

\header { 
	tagline = "1/31/2014"
	title = "Los Chucos Suaves"
	composer = "Lalo Guerrero"

	copyright = \markup {\bold ""} %form
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
	\relative c' { \key g \minor

	\mark \default %A
	\repeat volta 2 {
		g'4 bes d c8 bes | r c r d r bes~ bes4 |
		g bes d8 c r ees | r d r c r a~ a4 |
		a bes c bes8 a | r bes r c r a~ a4 |
		\times 2/3 { r4 a bes } c8 d r bes | 
		r a r g~ g4 r8 g ^\markup { \tiny \italic "2nd x only" } |
	}

	\break \mark \default %B
	\repeat volta 2 {
		d'4 d d c8 ees | r d r c r a r a |
		c4 c c bes8 d | r c r bes r g r g |
		bes4 bes bes a8 c | r bes r a~ a4 r8 fis |
		d4 fis a c8 bes | r a r g~ g4 r8 g^\markup { \tiny \italic "1st x only" } | 

	}


	}
}

%part: bass
bass = {
	\relative c { \key g \minor

	
	\mark \default %A
	\repeat volta 2 {
		g4 r bes d | g, r bes d | g, r bes d | a r c ees |
		a, r c ees | a, r c ees | a, r c ees | g, r bes d |
	}

	\break \mark \default %B
	\repeat volta 2 {
		g, r bes d | a r c ees | a, r c ees | g, r bes d | 
		g, r bes d | a r c ees | a, r c ees | g, r bes d | 
	}

	}
}

%part: words
words = \markup { }

%part: changes
changes = \chordmode {

	%A
	g1:m | g:m | g:m | a:dim |
	a:dim | a:dim | a:dim | g:m | 

	g:m | a:dim | a:dim | g:m 
	g:m | a:dim | a:dim | g:m 
}

%%Generated layout
#(set-default-paper-size "letter")
\book {
	\score { <<
			\set Score.markFormatter = #format-mark-box-numbers
			
		\transpose c c \new ChordNames { \set chordChanges = ##t \changes }
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
			\tempo  4 = 200 
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\melody
		}
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"tuba" \clef bass
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\bass
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
}