\version "2.12.3"

\header {
	title = "Take It To the Streets"
	composer = ""
	tagline = "" %date of latest edits
	copyright = \markup {\bold ""} %form
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: leadsheet
leadsheet = {
	\relative c' { \key bes \dorian \time 2/2

	\mark \markup { \box "1" } 
	\repeat volta 2 {
		bes'4-^ r2 aes4\prallprall~ | aes1 | ees'4-^ r2 des4\prallprall~ | des1 |
		bes4-^ r2 aes4\prallprall~ | aes1 | ees'4-^ r2 des4\prallprall~ | des1 | \break
		}
	\break

	\mark \markup { \box "2" } 
	\repeat volta 2 {
		r8 bes g f bes bes r4 | r8 bes g f bes bes r4 |
		r8 bes g f bes bes g f bes bes <g c> <f c'> <bes des> <bes d> r4 |
		}
	\break

	\mark \markup { \box "bass" } 
	\clef bass
	\repeat volta 2 {
		bes,,4-^ r2 aes'4-^ | r2 f4 fes | ees4-^ r2 des'4-^ | r2 aes4 a |
		bes bes, r aes'-^ | r2 f4 fes | ees4. f8~ f4 des | r2 aes4 a |
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

%layout
%#(set-default-paper-size "a5" 'landscape)


#(set-global-staff-size 17)

\book { 
  \header { poet = "Lead Sheet- C" }
	\paper { page-count = 1 } 
    \score {

	<<
        \new Staff {
		\leadsheet
	}
	>>
    }
}
\book { 
  \header { poet = "Lead Sheet - Bb" }
	\paper { page-count = 1 } 
    \score { \transpose c d
	<<
        \new Staff {
		\leadsheet
	}
	>>
    }
}

\book { 
  \header { poet = "Lead Sheet - Eb" }
	\paper { page-count = 1 } 
    \score { \transpose c a,
	<<
        \new Staff {
		\leadsheet
	}
	>>
    }
}


%{
\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 200 
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"alto sax"
		\leadsheet
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"tuba"
		\bass
	}
      >> 
    \midi { }
  } 
}
%}
