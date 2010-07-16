\version "2.12.3"

\header {
	title = "O Na Ne"
	composer = "?"
	tagline = "7/15/10" %date of latest edits
	copyright = \markup {\bold ""} %form
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: leadsheet 
leadsheet = {
	\relative c'' { \key bes \dorian
	
	
	\mark \markup { \box "1" \small "4 times" } 
	\repeat volta 4 {
		<bes des>4 <bes des> <des f>2~ | <des f>1 | 
		<bes des>4 <bes des> <aes c> r | R1| 
		}
	\break

	
	\mark \markup { \box "2" \small "4 times" } 
	r4 <des, ges>2. |
	\repeat volta 4 {
		<c f>1~~ | <c f>~~ |<c f> | r4 <des ges>2.^\markup { \small "don't play last x" } |
		}
	\break

	
	\mark \markup { \box "3" \small "8 times" } 
	\repeat volta 8 {
		r4 <fes aes>8 <ees g> r <des f> <ees g>4 |
		<des f>8 <ees g> r <fes aes> <ees g> <des f> <bes des>4 |
		}
	\break
	
	\mark \markup { \box "4" \small "2 times" \small \italic "- 7 Nation Army" } 
	\repeat volta 2 {
		<bes' f>2. <bes f>4 | \times 2/3 { <des aes>2 <bes f> <aes ees> } | 
		<ges des>1 | <f c> |
		<bes f>2. <bes f>4 | \times 2/3 { <des aes>2 <bes f> <aes ees> } | 
		\times 2/3 { <ges des>2 <aes ees> <ges des> } | <f c>1 | 
		}
	\break

	\mark \markup { \box "bass 1" } 
	\clef bass
	\repeat volta 4 {
		bes,,4 bes2 bes4 | des4 des2 des4 | ees4 ees2 ees4 | f4. aes8~ aes4 bes |
		}
	\break

	\mark \markup { \box "bass 2" \small \italic "- 7 Nation Army" } 
	\repeat volta 2 {
		bes,2. bes4 | \times 2/3 { des2 bes aes } | 
		ges1 | f |
		bes2. bes4 | \times 2/3 { des2 bes aes } | 
		\times 2/3 { ges2 aes ges } | f1 | 
		}
	\break

	\mark \markup { \box "bass 3" \small \italic "- Flashlight" } 
	\repeat volta 4 {
		bes4-. bes-- aes-. aes-- | f-. f-- e'-. e8-- ees-^ | R1 | R1 |
		}
	\break

	}
}
bass = { \relative c {

	\clef bass
	\repeat volta 32 {
		bes,4 bes2 bes4 | des4 des2 des4 | ees4 ees2 ees4 | f4. aes8~ aes4 bes |
		}
		}
		}

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
