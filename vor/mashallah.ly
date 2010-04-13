\version "2.12.1"

\header {
	title = "Masha'Allah"
%	composer = ""
	copyright = "3/25/10"
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }

%{THIS IS THE SOLO BACKING.  IT NEEDS TO GET WORKED IN!%}

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
	  fis16 g^\markup { \italic "2nd x sustain through rests" }  a8 r4 a16 bes g8 r4 | g16 a fis8 r4 g16 fis ees d d ees fis g |
	  fis16 g a8 r4 a16 bes g8 r4 | g16 a fis8 r4 g16 fis ees d d c d8 |
	}

	\mark \default %C
	\repeat volta 2 {
	  r16 \mark \markup { \musicglyph #"scripts.segno" } d[ r d] bes'8 a 
	  
	  << %split parts
	  { g2 | }
	  \\
	  { s8. f,16^\markup { \italic "bass" } g f g8 }
	  >> %end split
	
	  r16 d'[ r d] bes' c bes a 
	  
	  << %split parts
	  { g2 | }
	  \\
	  { s8. f,16^\markup { \italic "bass" } g f g8 }
	  >> %end split
	
	  r16 g'[ r g] g f g a f2 | 
	}
	\alternative {
		{ r16 ees[ r ees] ees d ees f d2 | }
		{ r16 ees[ r ees] ees d ees f d2 | \bar "||" }
	}

	\mark \default %D
	r8 a'16 bes c8 c16 bes bes bes bes a g g g g |
	g r a bes c c c bes bes bes bes a g g g g |
	g r a bes c c c bes bes bes bes a g g g g |
	g r a bes c c c bes d2 | \bar "||"

	\mark \default %E
	  r16 c[ r b?] c c bes a r bes[ r a] bes bes a g |
	  r a[ r g] a a g fis a g fis ees d ees fis g |
	  r16 c[ r b?] c c bes a r bes[ r a] bes bes a g |
	  r a[ r g] a a g fis a g fis ees d c ^"To Coda" d8 \markdownright \mark "D.S." |

	\repeat volta 4 {
	<d fis a>8\mp^\markup { \italic "Solos - open (bkgd layer up)" } [ r16 <d fis a> ] <d fis a> <c ees g> <d fis a>8 r16 <c ees g> [ r <d fis a>] <ees g bes> <c ees g> <d fis  a>8 |
	}
	\repeat volta 4 { r2^\markup { \italic "Drum - open" } r2 \markdownright \mark "D.S. al Coda" }

	\break \stopStaff s1 \startStaff

	\mark \markup { \musicglyph #"scripts.coda" } 
	
	\times 2/3 { d'4^\markup { \italic "Trumpet solo, in time" } c8 } \times 2/3  { bes4 a8 } \times 2/3 { c4 bes8 } \times 2/3  { a4 g8 } |
	d'16 c bes a c bes a g bes a g fis a g fis ees | 
	d8[ r16 d^\markup { \italic "all" }] <c fis>8[ r16 <c fis>] <a a'>8[ r16 <a a'>] <c c'>8 <ees ees'> | <d d'>4-^ r4 r2 \bar "|." 
}
}


%part: changes
changes = \chordmode { 
	s1 s s s
	%A
	d1 | d | d | d | 
	%B
	d2 g:m | d c4:m d | d2 g:m | d4 ees c:m d |
	%C
	g1:m | g:m | g2:m f | ees1 | c4:m ees d2 |
	%D
	g1:m | g:m | g:m | g2:m d |
	%E
	c2:m g:m | ees d | g:m ees | c:m d |
	%solos
	d1
	%drums 
	s1



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


\book { 
  \header { poet = "Melody - Bb" }
	\score {
	<<
	\transpose c d \new ChordNames { \set chordChanges = ##t \changes }
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
	\transpose c a \new ChordNames { \set chordChanges = ##t \changes }
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
      << \tempo 4 = 90 
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
