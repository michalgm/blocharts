\version "2.12.3"

\header {
	title = "Gelem, Gelem"
	composer = "Trad. Roma"
	tagline = "7/13/10" %date of latest edits
	copyright = \markup {\bold ""} %form
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
	\relative c' { \key d \minor
	
	\mark \default %A
	\repeat volta 2 {
		r8 <d f>4 <e g>8 <f a>4 <g bes> | r8 <f a>4 <e g>8 <d f>4 <e g> | 
		<d f>4. <cis e>8 <cis e>2 | r1 |
		r8 <e g>4 <f a>8 <g bes>4 <a cis> | r8 <g bes>4 <f a>8 <e g>4 <f a> | <e g>4. <d f>8 <d f>2 | 
		} 
		\alternative {
			{ r1 | }
			{ r8 a bes cis d e f g }
		}
	
	\mark \default %B
	\repeat volta 2 {
		a1~ | a2 g4 a | bes1 | r2 <g bes>4 <g bes> | 
		<g bes>16 <f a> <e g> <f a> <e g>2. | r8 bes cis d e f g a |
		bes1 ~ | bes2 a4 gis | a r <f a> <e g> | \times 2/3 { <f a>8 <e g> <d f> } <d f>2. | 
		}
		\alternative {
			{ r8 a bes cis d e f g }
			{ r1 | \bar "||" }
		}
	}
}

%part: tenor 
tenor = {
	\relative c'' { \key d \minor

	\mark \default %A
	\repeat volta 2 {
		r8 <d f a>16 <d f a> <d f a>8 <d f a> r <d f a> r  <d f a> |
		r8 <d f a>16 <d f a> <d f a>8 <d f a> r <d f a> r  <d f a> |
		r8 <cis e a>16 <cis e a> <cis e a>8 <cis e a> r <cis e a> r  <cis e a> |
		e8 d4 e8 d4 cis |
		r8 <cis e a>16 <cis e a> <cis e a>8 <cis e a> r <cis e a> r  <cis e a> |
		r8 <cis e a>16 <cis e a> <cis e a>8 <cis e a> r <cis e a> r  <cis e a> |
		r8 <d f a>16 <d f a> <d f a>8 <d f a> r <d f a> r  <d f a> |
		}
			\alternative {
				{ a8 g4 a8 g4 f | }
				{ r8 a bes cis d e f g }
			}

	\mark \default %B
	\repeat volta 2 {
		r8 <d f a>16 <d f a> <d f a>8 <d f a> r <d f a> r  <d f a> |
		r8 <d f a>16 <d f a> <d f a>8 <d f a> r <d f a> r  <d f a> |
		r8 <d g bes>16 <d g bes> <d g bes>8 <d g bes> r <d g bes> r  <d g bes> |
		<d g bes>4 r <d g bes> <d g bes> |
		r8 <cis e a>16 <cis e a> <cis e a>8 <cis e a> r <cis e a> r  <cis e a> |
		r8 bes cis d e f g a |
		r8 <d, g bes>16 <d g bes> <d g bes>8 <d g bes> r <d g bes> r  <d g bes> |
		r8 <d g bes>16 <d g bes> <d g bes>8 <d g bes> r <d g bes> r  <d g bes> |
		<cis e a>4 r <cis f a> <cis e g> |
		r8 <d f a>16 <d f a> <d f a>8 <d f a> r <d f a> r  <d f a> |
		}
			\alternative {
				{ r8 a bes cis d e f g | }
				{ r8 <d f a>16 <d f a> <d f a>8 <d f a> r <d f a> r  <d f a> |}
			}

	}

}

%part: bass
bass = {
	\relative c' { \key d \minor
	
	\mark \default %A
	\repeat volta 2 {
		d8. f16~ f8 a d,8. f16~ f8 a |
		d,8. f16~ f8 a d,8. f16~ f8 a |
		a,8. cis16~ cis8 e a,8. cis16~ cis8 e |
		e8^\markup { \tiny \italic "Low Brass" }  d4 e8 d4 cis |
		a8. cis16~ cis8 e a,8. cis16~ cis8 e |
		a,8. cis16~ cis8 e a,8. cis16~ cis8 e |
		d8. f16~ f8 a d,8. f16~ f8 a |
		}
		\alternative {
			{ a,8^\markup { \tiny \italic "Low Brass" } g4 a8 g4 f | }
			{ r8 a bes cis d e f g | }
		}

	\mark \default %B
	\repeat volta 2 {
		d8. f16~ f8 a d,8. f16~ f8 a |
		d,8. f16~ f8 a d,8. f16~ f8 a |
		g,8. bes16~ bes8 d g,8. bes16~ bes8 d |
		g,4 r g gis  |
		a8. cis16~ cis8 e a,8. cis16~ cis8 e |
		r8 bes cis d e f g a |
		g,8. bes16~ bes8 d g,8. bes16~ bes8 d |
		g,8. bes16~ bes8 d g,4 gis4 |
		a4 r a cis |
		d8. f16~ f8 a d,8. f16~ f8 a |
		}
		\alternative {
			{ r8 a, bes cis d e f g | }
			{ d8. f16~ f8 a d,8. f16~ f8 a | }
		}
	}
}

%part: words
words = \markup { }

%part: changes
changes = \chordmode {
	%A
	d1:m | d:m | a:7 | a:7 |
	a:7 | a:7 | d:m | d:m | a:7 |

	%B
	d:m | d:m | g:m | g:m | a:7 | a:7 | 
	g:m | g:m | a:7	| d:m | a:7 | d:m |
}



%layout
\book { \header { poet = "Score" }
  \paper { #(set-paper-size "a4") 
  			page-count = "unset" } 
    \score { 
      << 
	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { 
		\melody
	}
	\new Staff { \clef treble
		\tenor
	}
	\new Staff { \clef treble
		\bass
	}
      >> 
  } 
}



\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 120 
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"alto sax"
		\melody
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trumpet"
		\tenor
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"tuba"
		\bass
	}
      >> 
    \midi { }
  } 
}
%}
