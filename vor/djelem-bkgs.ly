\version "2.12.1"

\header {
	title = "Dejelm Djelem solo bkgds"
	composer = ""
	copyright = "3/28/10" %date of latest edits
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
	\relative c' { 
		\repeat volta 2 {
			r8^\markup { \italic "in Bb" } <f a d>16 <f a d> <f a d>8 <f a d>8 r8 <f a d>16 <f a d> <f a d>8 <f a d>8 |
		}
	}
}

%part: greg
greg = {
	\relative c' {
		\repeat volta 2 {
			d8^\markup { \italic "in Eb" } [ r16 d] r8 d r a b cis |
		}
	}
}
		
%part: bass
bass = {
	\relative c {
		\repeat volta 2 {
			d,8[ r16 f] a8 f a[ r16 f] a8 e |
		}
	}
}

%part: words
words = \markup { }

%part: changes
changes = \chordmode { }

%layout
#(set-default-paper-size "a5" 'landscape)

%{
\book { 
  \header { poet = "Melody - C" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff {
		\melody
	}
	>>
    }
%    \words
}
%}

%{
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
%}


\book { \header { poet = "Score" }
  \paper { #(set-paper-size "letter") }
    \score { 
      << 
%	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { \transpose c d
		\melody
	}
	\new Staff { \transpose c a
		\greg
	}
	\new Staff { \clef bass
		\bass
	}
      >> 
  } 
%    \words
}


%{
\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 100 
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
