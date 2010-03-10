\version "2.12.1"

\header {
	title = "Ederlezi"
	composer = "Trad. Roma"
	copyright = "date of latest edits"
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
	\relative c' { \key d \minor
	\mark \default
	r4 a'8 bes c a~ a g | g a a4 g16 f g8 f4 |
	r4 <f a>8 <g bes> <g bes>4 <g bes>8 <e g> | 
	<f a>4. <g bes>8 <e g>16 <d f> <e g>8 f4 |
	r4 <e a>8 <g bes> <g bes>4 <g bes>8 <e g> | 
	<f a>4. <g bes>8 \times 2/3 { <e g>8 <d f> <e g> } <d f>4
	r4 <f a>8 <e g> <g bes> <g bes> <e g>4 |
	<d f>8 <d f> <d f>2 f4 | \bar "||"

	\mark \default
	r4 <f a>8 <g bes> <a c> <g bes> <f a> <e g> |
	<e g> <f a>~ <f a>4 \times 2/3 { <e g>8 <d f> <e g> } <d f>4 |
	r4 <f a>8 <g bes> <g bes>4 <g bes>8 <e g> |
	<f a>4. <g bes>8 <e g>16 <d f> <e g>8 <d f>4 |
	r4 <f a>8 <g bes> <g bes>4 <g bes>8 <e g> |
	<f a>4. <g bes>8 <e g>16 <d f> <e g>8  <d f>4 |
	r4 <f a>8 <e g> <g bes> <g bes> <e g>4 | <d f>8 <d f>~ <d f>2 r4
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
  \paper { #(set-paper-size "a4") }
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
