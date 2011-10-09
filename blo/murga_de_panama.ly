\version "2.12.3"

\header {
	title = "La Murga De Panama"
	composer = "Willie Colon"
	tagline = "7/25/11" %date of latest edits
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

%layout


\book { 
  \header { poet = "Melody - C - Bass Clef" }
    \score { \transpose c c,
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \clef bass
		\melody
	}
	>>
    }
%    \words
}


\book { 
  \header { poet = "Bass - C" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \clef bass
		\bass
	}
	>>
    }
%    \words
}



\book { \header { poet = "Score" }
  \paper { #(set-paper-size "letter") }
    \score { 
      << 
%	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { 
		\melody
	}
	\new Staff { \clef bass
		\bass
	}
      >> 
  } 
%    \words
}



\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 172 
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trumpet"
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
