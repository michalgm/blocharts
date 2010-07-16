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
	\relative c' { \key d \minor

	\mark \default %A
	\repeat volta 2 {
		r8 <d f>16 <d f> <d f>8 <d f> r <d f> r  <d f> |
		r8 <d f>16 <d f> <d f>8 <d f> r <d f> r  <d f> |
		r8 <cis e>16 <cis e> <cis e>8 <cis e> r <cis e> r  <cis e> |
		e8 d4 e8 d4 cis |
		r8 <cis e>16 <cis e> <cis e>8 <cis e> r <cis e> r  <cis e> |
		r8 <cis e>16 <cis e> <cis e>8 <cis e> r <cis e> r  <cis e> |
		r8 <d f>16 <d f> <d f>8 <d f> r <d f> r  <d f> |
		}
			\alternative {
				{ a8 g4 a8 g4 f | }
				{ r8 a bes cis d e f g }
			}

	\mark \default %B
	\repeat volta 2 {
		r8 <d f>16 <d f> <d f>8 <d f> r <d f> r  <d f> |
		r8 <d f>16 <d f> <d f>8 <d f> r <d f> r  <d f> |
		r8 <d g>16 <d g> <d g>8 <d g> r <d g> r  <d g> |
		<d g>4 r <d g> <d g> |
		r8 <cis e>16 <cis e> <cis e>8 <cis e> r <cis e> r  <cis e> |
		r8 bes cis d e f g a |
		r8 <d, g>16 <d g> <d g>8 <d g> r <d g> r  <d g> |
		r8 <d g>16 <d g> <d g>8 <d g> r <d g> r  <d g> |
		<cis e>4 r <f a> <e g> |
		r8 <d f>16 <d f> <d f>8 <d f> r <d f> r  <d f> |
		}
			\alternative {
				{ r8 a bes cis d e f g | }
				{ r8 <d f>16 <d f> <d f>8 <d f> r <d f> r  <d f> |}
			}

	}

}

%part: bass
bass = {
	\relative c { \key d \minor
	
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
	\new ChordNames { \set chordChanges = ##t \changes }
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

