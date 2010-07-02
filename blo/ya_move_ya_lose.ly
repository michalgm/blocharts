\version "2.12.3"

\header {
	title = "Ya Move Ya Lose"
	composer = "Rebirth Brass Band"
	copyright = "7/1/10" %date of latest edits
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
	\relative c'' { \key f \minor

	\mark \default %A
	\repeat volta 2 {
		r2 c8 bes aes bes~ | bes4 aes  f8 f aes4 | bes aes bes aes8 bes~ | bes4 c r2 |
		r2 c8 bes aes bes~ | bes4 aes  f8 f aes4 | bes aes c aes8 f~ | }
		\alternative {
			{ f4 r r2 | }
			{ f4 r r f | }
		}
	
	\mark \default %B
	\repeat volta 2 {
		c'2 c | bes4 aes8 f r4 f | c'2 c | bes4 aes8 f r4 f | 
		c'2 c | bes4 aes8 f r4 f | ees4. e8~ e4 f | }
		\alternative {
			{ r4 f8 e f4 f | }
			{ r4 f8 e f4 r | \bar "||" }
		}
	}
}

%part: tenor
tenor = {
	\relative c' { \key f \minor

	\mark \default %A
	\repeat volta 2 {
		r8 ees d4 ees d | ees d ees d | ees d ees8 f r f~ | f4 r r2 |
		r8 ees d4 ees d | ees d ees d | ees d ees8 f r f~ | }
		\alternative {
			{ f4 r r2 | }
			{ f4 r r f | }
		}
	
	\mark \default %B
	\repeat volta 2 {
		aes2 aes | g4 ees8 f r4 f | aes2 aes | g4 ees8 f r4 f | 
		aes2 aes | g4 ees8 f r4 f | ees4. e8~ e4 f | }
		\alternative {
			{ r4 f8 e f4 f | }
			{ r4 f8 e f4 r | \bar "||" }
		}
	}
}



%part: bass
bass = {
	\relative c { \key f \minor
	
	\mark \default %A
	\repeat volta 2 {
		f,4 r8 f~ f4 g | aes r8 aes~ aes4 a | bes r8 bes~ bes4 b | c r8 ees~ ees4 e | 
		f,4 r8 f~ f4 g | aes r8 aes~ aes4 a | bes r8 bes~ bes4 b | }
		\alternative {
			{ c r8 ees~ ees4 e | } 
			{ c r8 ees~ ees4 e | } 
		}
	
	\mark \default %B
	\repeat volta 2 {
		f,4 r8 f~ f4 g | aes r8 aes~ aes4 a | bes r8 bes~ bes4 b | c r8 ees~ ees4 e | 
		f,4 r8 f~ f4 g | aes r8 aes~ aes4 a | ees'4. e8~ e4 f | }
		\alternative {
			{ r4 f8 e f4 r | }
			{ r4 f8 e f4 r | \bar "||" }
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
	\new Staff { 
		\melody
	}
	\new Staff { 
		\tenor
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
