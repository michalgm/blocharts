\version "2.12.1"

\header {
	title = "Bella Ciao"
	composer = "Italian Partisan Song"
	}
%description:A partisan song of the CNL, the Italian resistance to Mussolini during WWII.  Its lyrics were written as a farewell to the female loved ones left behind when partisans went to the Italian hills to fight the guerilla war against fascism.

% music pieces
%part: melody
melody = {
	\relative c' { \key g \minor
	\partial 4. d8 g a | 
	\repeat volta 2 { bes g r4 r8 d g a | bes g r4 r8 d g a |
	bes4 a8 g bes4 a8 g | d'4 d d c8 d | 
	ees ees r4 r8 ees d c | ees d r4 r8 d c bes | a4 d bes a | g2 r8 d g a | }
}
}

%part: bass
bass = {
	\relative c { \key g \minor
	\partial 4. r8 r4 | 
	\repeat volta 2 { g d' g, d' | g, d' g, d' | g, d' g, d' | g, d' g, d' | 
	c g c g | g d' g, d' | d a d a | g d' g, d' | }
}
}

%part: changes
changes = \chordmode { r8 r4 | g1:m | g:m | g:m | g:m | c:m | g:m | d:7 | g:m | } 

%layout
#(set-default-paper-size "a5" 'landscape)

%{
\book { 
  \header { poet = "Melody - C" }
    \score {
	<<
	\new ChordNames { \set chordChanges = ##t \changes }
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
	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \clef bass
		\bass
	}
	>>
    }
%    \words
}
%}

%{
\book { \header { poet = "Score" }
  \paper { #(set-paper-size "a4") }
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
%    \words
}
%}


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
