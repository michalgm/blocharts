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
	d'16 c bes a c bes a g bes a g fis a g fis ees^\markup { \musicglyph #"scripts.ufermata" } |
	<d fis a d>1^\markup { \italic "All" } | 
	\repeat volta 2 { r1^\markup { \italic "drums" } } |

	\mark \default %A
	d8[ r16^\markup { \italic "layer in" }  d] d c d8 r16 c[ r d] ees c d8 |
	<d fis>8 [ r16 <d fis>] <d fis> <c ees> <d fis>8 r16 <c ees> [ r <d fis>] <ees g> <c ees> <d fis>8 |
	<d fis a>8 [ r16 <d fis a> ] <d fis a> <c ees g> <d fis a>8 r16 <c ees g> [ r <d fis a>] <ees g bes> <c ees g> <d fis a>8 |
	<d fis a d>8 [ r16 <d fis a d>] <d fis a d> <c ees g c> <d fis a d>8 r16 <c ees g c>[ r <d fis a d>] <ees g bes ees> <c ees g c> <d fis a d>8 |
	
	\mark \default %B
	\repeat volta 2 {
	  fis16 g a8 r4 a16 bes g8 r4 | g16 a fis8 r4 g16 fis ees d d ees fis g |
	  fis16 g a8 r4 a16 bes g8 r4 | g16 a fis8 r4 g16 fis ees d d c d8 |
	}

	\mark \default %C
	\repeat volta 2 {
	  r16 \mark \markup { \musicglyph #"scripts.segno" } d[ r d] bes' bes a a 
	  
	  << %split parts
	  { g2 | }
	  \\
	  { s8. g,16^\markup { \italic "bass" } f8 g }
	  >> %end split
	
	  r16 d'[ r d] bes' bes a a 
	  
	  << %split parts
	  { g2 | }
	  \\
	  { s8. g,16^\markup { \italic "bass" } f8 g }
	  >> %end split
	
	  r16 g'[ r g] g f g a f2 | r16 ees[ r ees] ees d ees f d2 |
	}

	\mark \default %D
	r8 a'16 bes c8 c16 bes bes bes bes a g g g g |
	g r a bes c c c bes bes bes bes a g g g g |
	g r a bes c c c bes bes bes bes a g g g g |
	g r a bes c c c bes d2 |

	\mark \default %E
	\repeat volta 2 {
	  r16 c[ r bes] c c bes a r bes[ r a] bes bes a g |
	}
	  \alternative {
	    { r a[ r g] a a g fis a g fis ees d ees fis g | }
	    { r a[ r g] a a g fis a g fis ees d c ^"To Coda" d8 \markdownright \mark "D.S." |
 }
	  }

	\repeat volta 4 {
	<d fis a>8\mp^\markup { \italic "Solos - open" } [ r16 <d fis a> ] <d fis a> <c ees g> <d fis a>8 r16 <c ees g> [ r <d fis a>] <ees g bes> <c ees g> <d fis  a>8  \markdownright \mark "D.S. al Coda" | \bar "||"
	}

	\break \stopStaff s1 \startStaff

	\mark \markup { \musicglyph #"scripts.coda" } 
	
	\times 2/3 { d'4^\markup { \italic "Trumpet solo, in time" } c8 } \times 2/3  { bes4 a8 } \times 2/3 { c4 bes8 } \times 2/3  { a4 g8 } |
	d'16 c bes a c bes a g bes a g fis a g fis ees | 

	<< %split parts
		{ d1~ | d4-^ } 
		\\
		{ d8[ r16 d^\markup { \italic "all" }] c8[ r16 c] a8[ r16 a] c8 ees | }
	>> %end split	
		r4 r2 \bar "|." 
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


\book { 
  \header { poet = "Melody - Bb" }
	\score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
		\new Staff { \transpose c d
		\melody
	}
	>>
	}
%    \words
}


\book { 
  \header { poet = "Melody - Eb" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \transpose c a
		\melody
	}
	>>
    }
%    \words
}



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
