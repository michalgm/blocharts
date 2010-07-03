\version "2.12.1" 

\header {
	title = "Dog Eat Dog"
	composer = "Fela Kuti"
	copyright = "3/7/10"
	}
	
%place before mark to position it at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }

% music pieces

%part: melody
melody = {
\relative c'' { \key g \minor
    \mark \default
    \repeat volta 2 {
    g16 bes c d f2 f16 f d c | a4 c8. a16 r2 |
    g16 bes c d f2 g16 f d c | a4 c8. a16 r2 |
    g16 bes c d f2 g16 f d c | a4 c8. a16 r4 f'8 g~  |}
    \alternative {
	{ g1~ | g1 \markdownright \mark \markup { \italic "fine"} | }
	{ g1\repeatTie~ | g2. r8 a | \bar "||" } 
    }
    \mark \default
    g4. f8 d4 r8 a' | g4. f8 d4 r8 a' | g4. f8 d4 r8 a' | g4. f8 d4 r | \bar "||"
	\markdownright \mark "D.C. al Fine"
}
}

%part: riffOne
riffOne = {
\relative c'' { \key g \minor
    \mark \default
    \repeat volta 2 {
	\repeat unfold 3 {
	  c16 d c8 bes g c16 d c bes r8 g | d'16 e d8 c a d16 e d c r8 a |
	  }
	}
    \alternative {
	{ c16 d c8 bes g c16 d c bes r8 g | d'16 e d8 c a d16 e d c r8 a \markdownright \mark \markup { \italic "fine"} | }
	{ c16 d c8 bes g c16 d c bes r8 g | d'16 e d8 c a d16 e d c r8 a | \bar "||" }
    }
    \mark \default
    r2 r16 bes[ r c] d8 r | r2 r16 bes[ r c] d8 r | r2 r16 bes[ r c] d8 r | r2 r16 bes[ r c] d8 r | \bar "||"
	\markdownright \mark "D.C. al Fine"
}
}

%part: riffTwo
riffTwo = {
\relative c'' { \key g \minor
    \mark \default
    \repeat volta 2 {
	\repeat unfold 3 {
	  r4 e8 d~ d8. e16 r8 d | r4 f8 e~ e8. f16 r8 e |
	  }
	}
    \alternative {
	{ r4 e8 d~ d8. e16 r8 d | r4 f8 e~ e8. f16 r8 e \markdownright \mark \markup { \italic "fine"} | }
	{ r4 e8 d~ d8. e16 r8 d | r4 f8 e~ e8. f16 r8 e | \bar "||" }
    }
    \mark \default
    r2 r16 g,[ r a] bes8 r | r2 r16 g[ r a] bes8 r | r2 r16 g[ r a] bes8 r | r2 r16 g[ r a] bes8 r | \bar "||"
	\markdownright \mark "D.C. al Fine"
}
}

%part: bass
bass = {
\relative c { \key g \minor
    \mark \default
    \repeat volta 2 {
	\repeat unfold 3 {
	  g4 bes c8. d16~ d4 | d, f a8. c16~ c4 |
	  }
	}
    \alternative {
	{ g4 bes c8. d16~ d4 | d, f a8. c16~ c4 | \markdownright \mark \markup { \italic "fine"} }
	{ g4 bes c8. d16~ d4 | d, f a8. c16~ c4 | \bar "||" }
    }
    \mark \default
    g4. d'8 c8. d16 r4 | g,4. d'8 c8. d16 r4 | g,4. d'8 c8. d16 r4 | g,4. d'8 c8. d16 r4 | \bar "||"
	\markdownright \mark "D.C. al Fine"

}
}

%layout
#(set-default-paper-size "a5" 'landscape)

%{
\book { 
  \header { poet = "Melody - C" }
    \score {
        \new Staff {
		\melody
	}
    }
}
%}

\book { \header { poet = "Riff 1 - C" }
    \score {
        \new Staff { 
		\riffOne
	}
	    % more bars per line
	    \layout { \context { \Score 
		\override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 2) } 
	    }
    }
}

%{
\book { \header { poet = "Riff 2 - C" }
    \score {
        \new Staff { 
		\riffTwo
	}
    }
}
\book { \header { poet = "Bass" }
    \score {
        \new Staff { 
		\bass
	}
    }
}

\book { \header { poet = "Score" }
  \paper { #(set-paper-size "a4") }
    \score { 
      << \tempo 4 = 100 
	\new Staff { 
		\melody
	}
	\new Staff { 
		\riffOne
	}
	\new Staff { 
		\riffTwo
	}
	\new Staff { 
		\bass
	}
      >> 
  } 
}

%{
\book { \header { piece = "MIDI" }
    \score { 
      << \tempo 4 = 100 
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"alto sax"
		\melody
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trumpet"
		\riffOne
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trumpet"
		\riffTwo
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"tuba"
		\bass
	}
      >> 
    \midi { }
  } 
}
%}
