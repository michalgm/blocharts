\version "2.12.1"

\header {
	title = "El Sombero Azul"
	composer = "trad. El Savador"
	arranger = "Jesse Olsen"
	copyright = "5/6/10" %date of latest edits
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
  \relative c'' { \key bes \minor

  r1 | r1 | r1 | r1 |
  
  \mark \default %A
  f4 ges8 f r ees r f | r ges f ees f4 r | f8 ges f ees f ges r f | r ges f ees f4 r |
  f4 ges8 f r ees r f | r ges f ees f4 r | f8 ges f ees f ges r f | r ges f ees f4 r |
  ges4-- f8 ees r2 | f4-- ees8 des r2 | r8 f f4 f8 f r f | r1 |
  ges4-- f8 ees r2 | f4-- ees8 des r2 | r8 f r a c4 a | bes r8 a~ a4 f | 
	
  \key bes \major

  \mark \default %B
  \repeat volta 2 {
	bes8 bes r bes bes4 g | g f f bes | g f f bes | a4. f8~ f2~ | f1~ | 
	f2 r4 a8 a | r a r a a4 g | g f f a | g f f bes | 
  }

  \alternative { 
	{ g4. f8~ f2~ | f1~ | f2 r4 f | }
	{ g4. f8~ f4 r8 f | }
  }

  \mark \default %C
  \repeat volta 2 {
	f8 f r ees des4 ees8 f | 
	r f r4 \override NoteHead #'style = #'cross bes_\markup { \italic \small "hey!" } \revert NoteHead #'style r8 f  
	f8 f r ees des4 ees8 f | 
	r f r4 \override NoteHead #'style = #'cross bes_\markup { \italic \small "hey!" } \revert NoteHead #'style r8 f  
	f8 f r ees des4 ees8 f | r4 f d f~ | f ees8 d r ees c r | 
  }

  	\alternative {
		{ d2. f4 }
		{ d1~ | d | R1 | r2. f4 \markdownright \mark "back to B" }

	  }
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
	\new Staff { \clef bass
		\bass
	}
      >> 
  } 
%    \words
}



\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 100 
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"alto sax"
		\melody
	}
      >> 
    \midi { }
  } 
}

