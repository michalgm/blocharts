\version "2.12.1"

\header {
	title = "El Quinto Regimiento"
	composer = ""
	copyright = "3/11/10"
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
	\relative c'' { \time 3/4 \key f \minor 
	\mark \default
	\partial 4 c4 | c2.~ | c2 bes4 | bes aes2~ | aes4 g aes | 
	c2 g4 | aes2 f4 | e c2~ | c e4 |
	g2. | e4 f g | f2 e4~ | e f g | 
	aes2 f4 | g2 ees4 | des c2~ | c2 r4 | 

	\mark \default
	c'4 c4. c8 | des4 c4. bes8 | des4 c2~ | c2. |
	c4 c4. c8 | c4 bes aes | bes g aes~ | aes bes2 | c2. |
	aes4 bes8 aes g f | aes4 g f~ | f g2 | aes2. |
	f4 g ees | des c2~ | c2. | r | r2 | \bar "||"
	}
}

%part: harmonyOne 
harmonyOne = {
	\relative c'' { \time 3/4 \key f \minor 
	\mark \default
	\partial 4 e4 | e2.~ | e2 des4 | des c2~ | c4 c c | 
	ees2 bes4 | des2 aes4 | g e2~ | e g4 |
	bes2. | g4 aes bes | aes2 g4~ | g aes bes | 
	c2 aes4 | bes2 g4 | f e2~ | e2 r4 | 

	\mark \default
	e'4 e4. e8 | f4 e4. e8 | f4 e2~ | e2. |
	e4 e4. e8 | e4 des c | des bes c~ | c e2 | f2. |
	r | r2 aes,4~ | aes bes2 | c2. |
	r | f4 e2~ | e2. | r | r2 | \bar "||"
	}

}

%part: harmonyTwo
harmonyTwo = {
	\relative c'' { \time 3/4 \key f \minor 
	\mark \default
	\partial 4 g4 | g2.~ | g2 g4 | g f2~ | f4 g f | 
	g2 ees4 | f2 des4 | c g2~ | g c4 |
	e2. | des4 des ees | des2 c4~ | c des e | 
	f2 aes,4 | ees'2 bes4 | aes g2~ | g2 r4 | 

	\mark \default
	g'4 g4. g8 | bes4 g4. g8 | bes4 g2~ | g2. |
	g4 g4. g8 | g4 g aes | g e f~ | f g2 | aes2. |
	r | r2 c,4~ | c e2 | f2. |
	r | des4 e2~ | e2. | r | r2 | \bar "||"
	}
}

%{ when combining melody and harmony, what order should they be in? 
harmonyOne
melody
harmonyTwo
%}

%part: bass
bass = {
	\relative c { \time 3/4 \key f \minor
	\mark \default
	\partial 4 r4 | c2. | g2. | f2. | c'2. |
	ees2. | des2. | c2. | g2. | 
	c2. | des2. | c2. | g2. |
	f2. | ees'2. | des4 c2 | g2. |
	c2. | c2. | c2. | g2. |
	c2. | g2. | c2 f,4~ | f4 c'2| f,2. |
	r2. | r2 f4~ | f4 c'2 | f,2. |
	r2. | c'2. | g2. | c2. | g2. |

	}
}

%part: words
words = \markup { 
	\column { 
  \line { Con el quinto, }
  \line { con el quinto regimiento. }
  \line { Madre, yo me voy p' al frente }
  \line { para las líneas de fuego. }

  \hspace #0.2
  \line { Anda jaleo, jaleo }
  \line { suena una ametralladora }
  \line { y ya empieza el tiroteo  }
  \line { y ya empieza el tiroteo. }
 }
}

%layout
#(set-default-paper-size "a5" 'landscape)


\book { 
  \header { poet = "Harmony and stuff - C" }
    \score { <<
        \new Staff  
		\context Voice = "A" \harmonyOne
	  	\context Voice = "A" \melody
		\context Voice = "A" \harmonyTwo
	   >> 
    }
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

%{
\book { \header { poet = "Score" }
  \paper { #(set-paper-size "a4") }
    \score { 
      << 
%	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { 
		\melody
	}
	\new Staff { 
		\harmonyOne
	}
	\new Staff {
		\harmonyTwo
	}
	\new Staff { \clef bass
		\bass
	}
      >> 
  } 
%    \words
}
%}

%{
\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 2 = 86 
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trumpet"
		\melody
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trumpet"
		\harmonyOne
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trumpet"
		\harmonyTwo
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trumpet"
		\bass
	}
      >> 
    \midi { }
  } 
}
%}
