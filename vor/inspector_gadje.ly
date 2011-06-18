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
	\mark \default 
		f4 c' b g8 | f4 c' b g8 |
		f4 c' b g8 | f4 c' b g8 |
	\break	

	\mark \default 
		f8 g aes bes c r4 | r2 r4. |
		f,8 g aes bes c4 f8 | e2.. | 
		f,8 g aes bes c r4 | r2 r4. |
		f,8 g aes bes c4 f8 | g2.. | \break

		f8 e c4 r4. | es8 d b4 r4. |
		f'8 e c4 es8 d b | des c g aes c bes aes16 g |
	
	\mark \default 
	\break
	\repeat volta 2 {
		f8 g aes bes c4 aes8 | ces4 g bes aes8 |
		f g aes bes c4 f8 | e2.. | 
		f,8 g aes bes c4 aes8 | ces4 g bes aes8 |
		\break
		}	
		
	\alternative {
		{ f'4 r r4. | r4 c f r8 |
		ges4 des,8 ges bes4. | ges8 bes des4~ des4.
		}		
		{ des,4 c des c8 | f4 e aes g8 | 
		}
	}

	\break
	\mark \default %B
	
	f'2 des4 ees8 | f2. f8 | 
	g g f4 ees des8 | f f ees4 des c8 | \break
	f2 des4 ees8 | f2. f8 | 
	g g f4 e des8 | c c bes4 aes g8 | \break

	\mark \default 
	\break
	f8 g aes bes c4 aes8 | ces4 g bes aes8 |
	f g aes bes c4 f8 | e2.. | 
	f,8 g aes bes c4 aes8 | ces4 g bes aes8 |
	\break

	\mark \default 
	des,2~ des4. | c2~ c4. | f2~ f4. | e2~ e4. |
	aes2 g4. | des'2 c4. |

	f8 e ees d des4 c8 | b8 bes a aes g4 ges8 |

	\break
	f8 e ees d des4.~ | des4 c f r8 |
	ges2~ ges4.~ | ges2~ ges4. |
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
r2.. | r2.. | r2.. | r2.. |
r2.. | r2.. | r2.. | r2.. |
r2.. | r2.. | r2.. | r2.. |
r2.. | r2.. | r2.. | r2.. |

f2..:m | c2..:7 | f2..:m | c2..:7 |
f2..:m | c2..:7 | f2..:m |

% 1st ending
| f4:m c4:7 f4.:m |
ges2.. | ges2.. |
% 2nd ending
| c2..:7 | c2..:7 |

% Next Section
bes2..:m | bes2..:m | es2.. | aes2.. |
bes2..:m | bes2..:m | g2..:7 | c2..:7 |

f2..:m | c2..:7 | f2..:m | c2..:7 |
f2..:m | c2..:7 |

r2.. | r2.. | r2.. | r2.. |
r2.. | r2.. | r2.. | r2.. |
| r2.. |

| f4:m c4:7 f4.:m |
ges2.. | ges2.. |

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
