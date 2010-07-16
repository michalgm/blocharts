\version "2.12.3"

\header {
	title = "We Got That Fire"
	composer = "?"
	tagline = "7/15/10" %date of latest edits
	copyright = \markup {\bold ""} %form
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: leadsheet
leadsheet = {
	\relative c' {

	\mark \markup { \box "1" \small "4 times" } 
	\repeat volta 4 {
		<ees g>1 | <des f> | <c ees> | <bes d> |
		}
	\break

	\mark \markup { \box "2" \small "4 times" } 
	\repeat volta 4 {
		r4 ees ees ees | ges4. ees8~ ees4 ees8 ees | r ees ees4 ges4. ees8~ | ees2 r |
		}
	\break

	\mark \markup { \box "3" \small "4 times" } 
	\repeat volta 4 {
		r4. <ees g>8~ <ees g>4 <des ees> | r4. <ees g>8~ <ees g>4 <des ees> |
		r4. <ees ges>8~ <ees ges> <des ees> <ees ges> <f aes> | 
		<ges bes>4 <f aes>8  <ees ges>~ <ees ges>4 <des ees> | 
		}
	\break

	\mark \markup { \box "bass 1" } 
	\clef bass	
	\repeat volta 4 {
		ees,4. ees8~ ees2 | g4. g8~ g2 | aes4. aes8~ aes2 | bes4 c bes c |
		}
	}
}

%part: bass
bass = {
	\relative c { \key ees \major

	\repeat volta 32 {
		ees,4. ees8~ ees2 | g4. g8~ g2 | aes4. aes8~ aes2 | bes4 c bes c |
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


\book { \header { poet = "Leadsheet" }
  \paper { #(set-paper-size "letter") }
    \score { 
      << 
%	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { 
		\leadsheet
	}
      >> 
\layout { indent = #0 line-width = #200 ragged-right = ##t }
  } 
%    \words
}



\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 240 
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
