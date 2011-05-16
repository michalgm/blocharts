\version "2.12.3"

\header {
	title = "Inspector Gadje"
	composer = ""
	tagline = "" %date of latest edits
	copyright = \markup {\bold ""} %form
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
	\relative c' { \time 7/8 \key f \minor \set beatGrouping = #'(2 2 3)
	\set Score.markFormatter = #format-mark-box-letters
	\mark \default %A
	\repeat volta 2 {
		f8 g aes bes c4 aes8 | ces4 g bes aes8 |
		f g aes bes c4 f8 | e2.. | \break
		f,8 g aes bes c4 aes8 | ces4 g bes aes8 |
		f' e ees d des4.~ | des4 c f r8 | \break
	}


	\mark \default %B
	f2 des4 ees8 | f2. f8 | 
	g4 f ees des8 | f4 ees des c8 | \break
	f2 des4 ees8 | f2. f8 | 
	g4 f ees des8 | c4 bes aes g8 | \break

	}
}

%part: bass
bass = {
	\relative c {

	}
}

%part: words
words = \markup { }

%part: changes
changes = \chordmode { 
f2..:m | f2..:m | f2..:m | c2..:7 |
f2..:m | f2..:m | f2..:m | f4:m c4:7 f4.:m |
bes2..:m | aes2.. | g2..:m | f2..:m |
bes2..:m | aes2.. | g2..:m | c2..:m |
}

%layout


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
%	\new ChordNames { \set chordChanges = ##t \changes }
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
