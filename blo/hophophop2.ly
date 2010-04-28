\version "2.12.1"

\header {
	title = "Hop Hop Hop"
	composer = "Goran Bregovich"
	copyright = "4/27/10" %date of latest edits
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
  \relative c'' { \key g \minor
  
  \mark \default
  \repeat volta 2 {
	r8 d r cis d cis d cis | b b c?4 b8 c c4 |
	r8 c r b c b c a | a bes? bes4 a8 bes bes4 |
	r8 d r cis d cis d cis | \times 2/3 { c?4 c bes } \times 2/3 { a a g } |
	fis4 r d'8 c b a | g1 |
  }
} 

}

%part: harmony
harmony = {
  \relative c' { \key g \minor

  \mark \default
  \repeat volta 2 {
	<d, bes'>4-^ r8 <d bes'>-^ r4 <d bes'>-^ | r4 <d a'>-^  r4 <d a'>-^ |
	<d a'>4^\markup { \tiny \italic "etc." } r8 <d a'> r4 <d a'> | r4 <d c'>  r4 <d c'> |
	<d g>4 r8 <d g> r4 <d g> | r4 <c e>  r4 <c e> | 
	<d a'> r <fis b>8 <e a> <d g> <c fis> | <b g'>2 <gis' c>->\sfz |
  }
}
}

%p-art: bass
bass = {
}

%p-art: words
words = \markup { }

%p-art: changes
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
