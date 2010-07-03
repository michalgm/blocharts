\version "2.12.1"

\header {
	title = "Nkosi Sikelel' iAfrika"
	composer = "Enoch Sontonga"
	copyright = "7/2/10" %date of latest edits
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: soprano
soprano = {
	\relative c' { \key f \major
	
	\mark \default %A
	f8 f f g a4 a | g g f2 | a8 a a a bes4 bes | a8 a a4 g2 |
	f8 f f g a4 a | g bes a2 | 
	g f | e8 f g4 f2 | g f | e8 f g4 f2 | \bar "||"

	\mark \default %B
	f4 e8 d c2~ | c1 | f4 e8 d c2~ | c1 | 
	f4 g8 a d,2 | bes'4 g f2 | e f | 
	g f | e8 f g4 f2 | g f4. f8 | e f g4 f2 | \bar "||"

	}
}

%part: alto
alto = {
	\relative c' { \key f \major
	
	\mark \default %A
	c8 c c e f4 f | e e c2 | f8 f f f g4 g | f8 f f4 e2 |
	d8 d d e f4 f | e g f2 |
	d c | c8 c c4 c2 | d c c8 c c4 c2 | \bar "||"

	\mark \default %B
	r2 f'4 c | a c f f, | r2 f'4 c | a c f f, |
	d e8 g bes,2 | d4 bes c2 | c c | 
	d c | c8 c c4 c2 | d2 c4. c8 | c c c4 c2 | \bar "||"
	}
}

%part: tenor
tenor = {
	\relative c' { \key f \major

	\mark \default %A
	a8 a a bes c4 c | c c a2 | c8 c c c d4 d | c8 c c4 c bes |
	a8 a a bes c4 c | c d c2 |
	bes a | g8 a bes4 a2 | bes a | g8 a bes4 a2 | \bar "||"

	\mark \default %B
	f4 e8 d c2~ | c1 | f4 e8 d f4 c | a c f f |
	a c8 c f,2 | g a | g a | 
	bes a | g8 a bes4 a2 | bes a4. a8 | g a bes4 a2 | \bar "||"

	}
}

%part: bass
bass = {
	\relative c { \key f \major

	\mark \default %A
	f8 f f c f4 f | c c f2 | 

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
		\soprano
	}
	\new Staff { 
		\alto
	}
	\new Staff { \clef bass
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
