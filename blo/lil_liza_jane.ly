\version "2.12.3"

\header {
	title = "Li'l Liza Jane"
	composer = "Traditional"
	copyright = "7/1/10" %date of latest edits
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
	\relative c' { \key f \major
	\partial 8*3 f8 g f |

	\mark \default %A
	\repeat volta 2 {
		a4-^ f-^ g8 g f4 | a4-^ f8 g r g f4 | a c2 d8 c | r2 r8 f, g f |
		a4-^ f-^ g8 g f4 | a4-^ f8 g r g f4 | a a2 g8 f | }
		\alternative {
			{ r2 r8 f g f | }
			{ r1 }
		}
	
	\mark \default %B
	\repeat volta 2 {
		r4 f'2 c4 | d4. c8~ c4 r | a c2 d8 c | r1 |
		r4 f2 c4 | d4. c8~ c4 r | a a2 g8 f \markdownright \mark \markup { \italic "fine" } | }
		\alternative {
			{ r1 }
			{ r2 r8 
				<<
				{ c'^\markup { \small \italic "on to C" } d c }
				\\
				{ f,_\markup { \small \italic "back to A" } g f }
				>>
			}
		}

	\mark \default %C
	\repeat volta 2 {
		\repeat unfold 2 { <aes c ees>2.~~~ <aes c ees>8 <f aes c> | r2 r8 <f aes c> <g bes d> <f aes c> | }
		<aes c ees>2.~~~ <aes c ees>8 <f aes c> | r1 | 
		<aes c ees>4 <aes c ees> <g c e> <g e'>8 <f f'> | }
		\alternative {
			{ r2 r8 <f aes c> <g bes d> <f aes c> | }
			{ r2 r8 f g f | }
		}
	}
}

%part: bass
bass = {
	\relative c { 
		\partial 8*3 r4. |

		\mark \default %A
		\repeat volta 2 {
			f,4 r f f | r c'2 d4 | f, r f f | r ees'2 e4 |
			f,4 r f f | r c'2 d4 | f, r f f | }
			\alternative {
				{ r ees'2 e4 | }
				{ r ees2 e4 | }
			}

		\mark \default %B
		\repeat volta 2 {
			f,4 r f f | r c'2 d4 | f, r f f | r ees'2 e4 |
			f,4 r f f | r c'2 d4 | f, r f f \markdownright \mark \markup { \italic "fine" } | }
			\alternative {
				{ r ees'2 e4 | }
				{ r ees2 e4 | }
			}

		\mark \default %C	
		\repeat volta 2 {
			f4 r c r | f r8 c~ c4 e | f4 r c r | f r8 c~ c4 e | 
			f4 r c r | f r8 c~ c4 e | f4 r c r | }
			\alternative {
				{ f r8 c~ c4 e | }
				{ f ees2 e4 | }
			}
	}
}

%part: words
words = \markup { }

%part: changes
changes = \chordmode { }

%layout
#(set-default-paper-size "a5" 'landscape)

\book { 
  \header { poet = "Melody - C" }
	\paper { page-count = 1 } 
    \score {

	<<
        \new Staff {
		\melody
	}
	>>
    }
}
\book { 
  \header { poet = "Melody - Bb" }
	\paper { page-count = 1 } 
    \score { \transpose c d
	<<
        \new Staff {
		\melody
	}
	>>
    }
}

\book { 
  \header { poet = "Melody - Eb" }
	\paper { page-count = 1 } 
    \score { \transpose c a,
	<<
        \new Staff {
		\melody
	}
	>>
    }
}

\book { 
  \header { poet = "Bass - C" }
	\paper { page-count = 1 } 
    \score {
	<<
	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \clef bass
		\bass
	}
	>>
    }
}

\book { 
  \header { poet = "Bass - Eb" }
	\paper { page-count = 1 } 
    \score { \transpose c a'
	<<
	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \clef treble
		\bass
	}
	>>
    }
}



\book { \header { poet = "Score" }
  \paper { #(set-paper-size "a4") 
  			page-count = "unset" } 
    \score { 
      << 
	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { 
		\melody
	}
	\new Staff { \clef bass
		\bass
	}
      >> 
  } 
}



\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 200 
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"alto sax"
		\melody
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"tuba"
		\bass
	}
      >> 
    \midi { }
  } 
}
%}
