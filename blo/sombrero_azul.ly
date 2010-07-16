\version "2.12.3"

\header {
	title = "El Sombero Azul"
	composer = "Trad. El Savador"
	arranger = "Jesse Olsen"
	copyright = "7/16/10" %date of latest edits
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
  \relative c' { \key bes \minor

  R1 | R1 | R1 | R1 | \bar "||"
  
  \mark \default %A
  f4 ges8 f r ees r f | r ges f ees f4 r | f8 ges f ees f ges r f | r ges f ees f4 r |
  f4 ges8 f r ees r f | r ges f ees f4 r | f8 ges f ees f ges r f | r ges f ees f4 r |
  ges4-- f8 ees r2 | f4-- ees8 des r2 | r8 f f4 f8 f r f | R1 |
  ges4-- f8 ees r2 | f4-- ees8 des r2 | r8 f r a c4 a | bes_\markup { \small \italic "fine"} r8 a~ a4 f | 
	
  \key bes \major

  \mark \default %B
  \key bes \major
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
	f8 f r ees d4 ees8 f | 
	r f r4 \override NoteHead #'style = #'cross bes_\markup { \italic \small "hey!" } \revert NoteHead #'style r8 f  
	f8 f r ees d4 ees8 f | 
	r f r4 \override NoteHead #'style = #'cross bes_\markup { \italic \small "hey!" } \revert NoteHead #'style r8 f  
	f8 f r ees d4 ees8 f | r4 f d f~ | f ees8 d r ees c r | 
	} 
	\alternative {
		{ \set Score.repeatCommands = #'((volta "1,3")) 
			d2. r8 f 
		\set Score.repeatCommands = #'((volta #f)) }
		{ bes,1~ | bes | R1 | r2. f'4 \markdownright \mark "back to B" \bar ":|" }
	}
		\set Score.repeatCommands = #'((volta "4"))
			\key bes \minor bes,1~ | bes | R1 | R1 \markdownright \mark "D.C. al fine -or- solos"
			\bar ":|"
		\set Score.repeatCommands = #'((volta #f)) 
	}
}

%part: harmony
harmony = {
  \relative c' { \key bes \minor
  R1 | R1 | R1 | R1 | \bar "||"
  
  \mark \default %A
  f4 ges8 f r ees r f | r ges f ees f4 r | f8 ges f ees f ges r f | r ges f ees f4 r |
  f4 ges8 f r ees r f | r ges f ees f4 r | f8 ges f ees f ges r f | r ges f ees f4 r |
  ees4-- des8 c r2 | des4-- c8 bes r2 | r8 c c4 c8 c r des | R1 |
  ees4-- des8 c r2 | des4-- c8 bes r2 | r8 c r f a4 f | d4_\markup { \small \italic "fine"} r8 c~ c2 |

  \mark \default %B
  \key bes \major
  \repeat volta 2 {
  	R1 | R | R | r2 <g' bes>4 <f a> | <g bes> <f a> <g bes> <f a>~~ | <f a>1 |
	R1 | R | R | }
	
	\alternative {
		{ r2 <ees g>4 <d f> | <ees g> <d f> <ees g> <d f>~~ | <d f>1 | }
		{ r2. r8 f | }
	}

  \mark \default %C
  \repeat volta 2 {
	f8 f r ees d4 ees8 f | 
	r f r4 \override NoteHead #'style = #'cross bes_\markup { \italic \small "hey!" } \revert NoteHead #'style r8 f  
	f8 f r ees d4 ees8 f | 
	r f r4 \override NoteHead #'style = #'cross bes_\markup { \italic \small "hey!" } \revert NoteHead #'style r8 f  
	f8 f r ees d4 ees8 f | r4 f d f~ | f ees8 d r ees c r | 
	} 
	\alternative {
		{ \set Score.repeatCommands = #'((volta "1,3")) 
			d2. r8 f 
		\set Score.repeatCommands = #'((volta #f)) }
		{ bes,1~ | bes | R1 | r2. f'4 \markdownright \mark "back to B" \bar ":|" }
	}
	\set Score.repeatCommands = #'((volta "4"))
		\key bes \minor bes,1~ | bes | R1 | R1 \markdownright \mark "D.C. al fine -or- solos"
		\bar ":|"
	\set Score.repeatCommands = #'((volta #f)) 
	}
}


%part: bass
bass = {
	\relative c { \key bes \minor
	
	bes2 des4 f | bes,2 des4 f | bes,2 des4 f | bes,2 des4 ees | \bar "||"

	\mark \default %A
	f2 c4 ees | f2 c4 ces | bes2 des4 f | bes,2 des4 ees | 
	f2 c4 ees | f2 c4 ces | bes2 des4 f | bes,2 c4 des | 
	ees2 ges4 bes | bes,2 des4 f | f,2 a4 c | bes2 c4 des |
	ees2 ges4 bes | bes,2 des4 f | f,2 a4 c | bes_\markup { \small \italic "fine"} r8 f'8~ f2 |

	\mark \default %B
	\key bes \major
	\repeat volta 2 {
		bes,2 d4 f | bes,2 d4 f |	
		bes,2 d4 ees | f2 c4 ees |	
		f2 c4 ees | f2 c4 ees |
		f2 c4 ees | f2 c4 ees |
		f2 c4 a |
		}
		\alternative {
			{ bes2 d4 f | bes,2 d4 f | bes,2 d4 f | }
			{ bes,2 d4 f | }
		}
	
	\mark \default %C
	\repeat volta 2 {
		f,2 a4 c | bes2 d4 f | f,2 a4 c | bes2 d4 f | 
		f,2 a4 c | bes2 d4 f | f,2 a4 c | 
		}
		\alternative {	
			{ \set Score.repeatCommands = #'((volta "1,3")) 
			 bes2 d4 f | 
			\set Score.repeatCommands = #'((volta #f)) }
			{ bes,2 d4 f | bes,2 d4 f | bes,2 d4 f | bes,2 d4 f \markdownright \mark "back to B" \bar ":|" | }
		}
	\set Score.repeatCommands = #'((volta "4"))
			 bes,2 des4 f | bes,2 des4 f | bes,2 des4 f | bes,2 des4 f | \markdownright \mark "D.C. al fine -or- solos"
		\bar ":|"
	\set Score.repeatCommands = #'((volta #f)) 
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
		\harmony
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
      << \tempo 4 = 280 
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"alto sax"
		\melody
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trumpet"
		\harmony
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"tuba"
		\bass
	}
      >> 
    \midi { }
  } 
}
%}
