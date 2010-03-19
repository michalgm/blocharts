\version "2.12.1"

\header {
	title = "Giderim Alach (?)"
%	composer = ""
	copyright = "3/19/10"
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
  \relative c'' { \set Score.markFormatter = #format-mark-box-letters

	\times 2/3 { d4^\markup { \italic "Trumpet solo, freely" }
 c8 } \times 2/3  { bes4 a8 } \times 2/3 { c4 bes8 } \times 2/3  { a4 g8 } |
	d'16 c bes a c bes a g bes a g fis a g fis ees%{\markup { \musicglyph #"scripts.cesura" }%} |
	<d fis a d'>1^\markup { \italic "All" } | 
	\repeat volta 2 { r1^\markup { \italic "drums" } } |

	d8^\markup { \italic "layer in" }  r16 d c d8 r16 c r d ees c d8 |
	<d fis>8 r16 <d fis> <c ees> <d fis>8 r16 <c ees> r <d fis> <ees g> <c ees> <d fis>8 |
	<d fis a>8 r16 <d fis a> <c ees g> <d fis a>8 r16 <c ees g> r <d fis a> <ees g bes> <c ees g> <d fis a>8 |
	<d fis a d'>8 r16 <d fis a d'> <c ees g c'> <d fis a d'>8 r16 <c ees g c'> r <d fis a d'> <ees g bes ees'> <c ees g c'> <d fis a d'>8 |
	
	\mark \default %A
	\repeat volta 2 {
	  fis16 g\mark \markup { \musicglyph #"scripts.segno" } a8 r4 a16 bes g8 r4 | g16 a fis8 r4 g16 fis ees d d ees fis g |
	  fis16 g a8 r4 a16 bes g8 r4 | g16 a fis8 r4 g16 fis ees d d c d8 |
	}

	\mark \default %B
	\repeat volta 2 {
	  r16 d r d bes bes a a g2 | r16 d r d bes bes a a g2 | 
	  r16 g r g g f g a f2 | r16 ees r ees ees d ees f d2 |
	}

	\mark \default %C
	r8 a16 bes c8 c16 bes bes bes bes a g g g g |
	g r a bes c c c bes bes bes bes a g g g g |
	g r a bes c c c bes bes bes bes a g g g g |
	g r a bes c c c bes d2 |

	\mark \default %D
	\repeat volta 2 {
	  r16 c r bes c c bes a r bes r a bes bes a g |
	}
	  \alternative {
	    { r a r g a a g fis a g fis ees d ees fis g | }
	    { r a r g a a g fis a g fis ees d c ^"To Coda" d8 \markdownright \mark "D.S." | \bar "||"
 }
	  }

	\repeat volta 4 {
	  <d fis a>8^\markup { \italic "open" }r16 <d fis a> <c ees g> <d fis a>8 
	  r16 <c ees g> r <d fis a> <ees g bes> <c ees g> <d fis a>8 \markdownright \mark "D.S. al Coda" |
	}


	\mark \markup { \musicglyph #"scripts.coda" } 
	
	\times 2/3 { d4^\markup { \italic "Trumpet solo, in time" } c8 } \times 2/3  { bes4 a8 } \times 2/3 { c4 bes8 } \times 2/3  { a4 g8 } |
	d16 c bes a c bes a g bes a g fis a g fis ees | d1 
	%{ d8 r16 d c8 r16 c a8 r16 a c8 ees | d4 r r2 \bar "|." %}
		
}
}


%part: changes
changes = \chordmode { }

%layout


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

%{
\book { \header { poet = "Score" }
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
