\version "2.12.1"

\header {
	title = "Erosal"
	composer = "Rumen 'Sali' Shopov"
	copyright = "3/18/10" %date of latest edits
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = { 
	\relative c' { \time 2/2 \set Score.markFormatter = #format-mark-box-letters
	  <e gis b>1 | <f a b> | <d f a> | \times 4/6  { e8 f gis gis f e } \times 4/6  { f f e e r r } | 
	  <e gis b>1 | <f a b> | <d f b> | \times 4/6  { a'8 gis f e f gis } \times 4/6  { gis f e e r r } | \bar "||" 

	  \mark \default %A
	  e f e4 e8 f e4 | e8 f e f gis gis gis f | gis a gis4 gis8 a gis4 | gis8 a gis a b b b a | 
	  | b c a4 a8 b gis4 | \times 2/3  { b8 a gis } a b gis gis f e | d d cis d e e d e | f f e f gis gis f gis | 
	  \times 2/3  { b a gis } a b gis gis f gis | a gis f e e d e4 | \bar "||"
		  
	  \mark \markup { \box \bold "A1" }
	  e8 f e4 e8 f e4 | e8 f e f gis gis gis f | 
	  \times 2/3  { b a gis } gis4 \times 2/3 { b8 a gis } gis4 | \times 2/3  { b8 a gis } gis a b b b a | 
	  b c a4 a8 b gis4 | \times 2/3  { b8 a gis } a b gis gis f e | 
	  d d cis d e e d e | f f e f gis gis f gis | \times 2/3  { b a gis } a b gis gis f gis | a gis f e e d e d |

	  \mark \default %B
	  \repeat volta 2 {
		  e r d' e e4 e | \times 4/6  { e8 e d e f r } \times 4/6  { d d cis d e r } | 
		  \times 4/6  { c c b c d r } \times 4/6  { b b a b c r } | \times 4/6  { a a gis a b r } \times 2/3  { gis4 b cis } | 
		  | d8 r cis d d4 d | \times 4/6  { d8 d cis d e r } \times 4/6  { c c b c d r } | 
		  \times 4/6  { b b a b c r } \times 4/6  { a a gis a b r } | \times 2/3  { gis gis f } gis a b gis a f | 
	  }

	  \mark \default %C
	  e r d e e4 e | \times 2/3  { e8 e d } e f gis a f a | 
	  gis d e f gis a a gis | \times 2/3  { gis gis f } gis a b c a c | 
	  b gis a b c4 cis | \times 4/6  { d8 d e e d cis } \times 4/6  { cis cis d d c b } | 
	  \times 4/6  { b b c c b a } \times 4/6  { a a b b a gis } | 
	  \times 4/6  { gis gis a a gis f } \times 4/6  { f f gis gis f e } | f r e f f4 f | 
	  \times 4/6  { e8 f gis gis f e } \times 4/6  { e f gis a b cis } | d r cis d d4 d | 
	  \times 4/6  { d8 cis d e d c } \times 4/6  { c b c d c b } | 
	  \times 4/6  { b a b c b a } \times 4/6  { a gis a b a gis } | 
	  \times 4/6  { gis f gis a gis f } \times 4/6  { f e f gis f e } | f r e f f4 f | 
	  \times 4/6  { e8 f gis gis f e } \times 2/3  { f f e } e4 |

	  \mark \default %D
	  \repeat volta 2 {
		  b'4 b8 b a gis f4 | gis gis8 gis f e d4 | gis gis8 gis f e d f | e e e d e f gis a | 
		  r b b b a gis f4 | r8 gis gis gis f e d4 | gis gis8 gis f e d f | e e e d e d e4 |
	  }

	  \mark \default %E
	  \repeat volta 2 {
		  b'4\mark \markup { \musicglyph #"scripts.segno" } \times 2/3 { b8 b b } \times 2/3  { d c b } b4 | 
		  \times 2/3  { e,8 f gis } \times 2/3  { a b c } \times 2/3  { d c b } b4 |
	  }
		  \alternative { 
			  { e e8 e d e d d | cis d c c b c b b | }
			  { e d r c r b r a | gis gis f gis \times 2/3 { f f e } e4 ^"To Coda" | } 
		  }

	  \mark \default %F
	  \repeat volta 2 {
		  | a,8 c r d r ees r d | d4 \times 2/3 { d8 d d } \times 2/3  { a' g g } a4 | 
		  a,8 c r d r ees r d | d4 \times 2/3 { a'8 g fis } \times 2/3  { fis ees d } d4 
	  }

	  \mark \default %G
	  \repeat volta 2 {
		  \times 2/3  { bes'8 bes a } bes c a a g fis | \times 2/3  { g g fis } g a fis fis ees d | 
		  \times 2/3  { g g fis } g a fis fis ees fis | g fis ees d d fis a d, | 
		  \times 2/3  { d d d } \times 2/3  { ees ees ees } \times 2/3  { fis fis fis } \times 2/3  { g g g } | b c c bes bes a g4 | a8 bes bes a g fis es4 
	  }
		  \alternative { 
			  { \times 2/3  { a8 g fis } g a fis fis ees fis | g fis ees d d c d4 | }
			  { \times 2/3  { b'8 a gis } a b gis gis f gis | a gis f e e d e4 | \bar "||" }
		  }

	  \mark "Solos"
	  \repeat volta 4 { | \times 2/3  { r8^\markup { \italic "open" } r <e gis>16 <e gis> ] } <e gis>8 <e gis> \times 2/3 { r r <e gis>16 <e gis> } <e gis>8 <e gis> | }
	  \repeat volta 4 { | \times 2/3  { r^\markup { \italic "open" } r <d fis>16 <d fis> } <d fis>8 <d fis> \times 2/3 { r r <d fis>16 <d fis> } <d fis>8 <d fis> | } 
	  \times 2/3  { c4 c c } \times 2/3  { <c es> <c es> <c es> } | 
	  \times 2/3  { <c ees a> <c ees a> <c ees a> } <c ees a c> <c ees a c> \markdownright \mark "D.S. al Coda" | \bar "||"

	  \stopStaff s1 %empty bar for coda 
	  \startStaff
		  
	  \mark \markup { \musicglyph #"scripts.coda" } 
	  d8 e r f r gis r e | f gis r a r b r gis | a b r c r d r f | e4 r <e, gis b e>2 ~ ~ ~ ~ | <e gis b e>2 r2 \bar "|."

  }
}


%p-art: tenor
tenor = {
\relative gis {
    \repeat volta 2 {
	 \clef "bass" \key c \major \time 2/2 <gis b>1 | <a b>1 | <a c>1 | R1 | <gis b>1 | <a b>1 | <f b>1 | R1 \bar "||" | 
	 | 
	 | \times 2/3  { r8 ^"1" r8 <gis b>16 <gis b>16 } <gis b>8 <gis b>8 \times 2/3 { r8 r8 <gis b>16 <gis b>16 } <gis b>8 <gis b>8 | | 
	 \times 2/3  { r8 r8 <gis b>16 <gis b>16 } <gis b>8 <gis b>8 \times 2/3 { r8 r8 <gis b>16 <gis b>16 } <gis b>8 <gis b>8 | | 
	 | r4 -"etc." <gis b>4 :16 r4 <gis b>4 :16 | | r4 <gis b>4 :16 r4 <gis b>4 :16 | | r4 <a c>4 :16 r4 <gis b>4 :16 | | r4 <a c>4 :16 r4 <gis b>4 :16 | | 
	 r4 <f a>4 :16 r4 <f a>4 :16 | | r4 <f a>4 :16 r4 <f a>4 :16 | | r4 <f a>4 :16 r4 <gis b>4 :16 | | r4 <f a>4 :16 r4 <gis b>4 :16 \bar "||" | 
	 | 
	 | r4 ^"1" -"1" <gis b>4 :16 r4 <gis b>4 :16 | | r4 <gis b>4 :16 r4 <gis b>4 :16 | | r4 <gis b>4 :16 r4 <gis b>4 :16 | | 
	 r4 <gis b>4 :16 r4 <gis b>4 :16 | | r4 <a c>4 :16 r4 <gis b>4 :16 | | r4 <a c>4 :16 r4 <gis b>4 :16 | | r4 <f a>4 :16 r4 <f a>4 :16 | | 
	 r4 <f a>4 :16 r4 <f a>4 :16 | | r4 <f a>4 :16 r4 <gis b>4 :16 | | r4 <f a>4 :16 r4 <gis b>4 :16 \bar "||"
	 \repeat volta 2 {
	     | | | <e g>8 ^"1" r8 r4 r2 | | <e g>8 r8 r4 <g b>8 r8 r4 | | <a c>8 r8 r4 <gis b>8 r8 r4 | | <f a>8 r8 r4 <gis b>8 r8 r4 | | 
	     <f a>8 r8 r4 r2 | | r4 <f a>4 :16 r4 <a c>4 :16 | | r4 <gis b>4 :16 r4 <a c>4 :16 | | r4 <a c>4 :16 r4 <gis b>4 :16 } | 
	 | 
	 | r4 ^"1" <gis b>4 :16 r4 <gis b>4 :16 | | r4 <gis b>4 :16 r4 <gis b>4 :16 | | r4 <gis b>4 :16 r4 <gis b>4 :16 | | r4 <gis b>4 :16 r4 <gis b>4 :16 | 
	 | 
	 r4 <gis b>4 :16 r4 <gis cis>4 :16 | <f a>8 r8 r4 <a c>8 r8 r4 | | <gis b>8 r8 r4 <a c>8 r8 r4 | | <gis b>8 r8 r4 <f a>8 r8 r4 | | 
	 <f a>8 r8 r4 r2 | | r4 <a c>4 :16 r4 <gis b>4 :16 | | <f a>8 r8 r4 r2 | | <f a>8 r8 r4 <a c>8 r8 r4 | | 
	 <gis b>8 r8 r4 <a c>8 r8 r4 | | <gis b>8 r8 r4 <f a>8 r8 r4 | | <f a>8 r8 r4 r2 | | r4 <a c>4 :16 r4 <gis b>4 :16 \bar "||"
	 \repeat volta 2 {
	     | 
	     | | r4 ^"Solos" <gis b>4 :16 r4 <gis b>4 :16 | | r4 <gis b>4 :16 r4 <f a>4 :16 | | r4 <gis b>4 :16 r4 <f a>4 :16 | | 
	     r4 <gis b>4 :16 r4 <gis b>4 :16 | | r4 <gis b>4 :16 r4 <gis b>4 :16 | | r4 <gis b>4 :16 r4 <gis b>4 :16 | | r4 <gis b>4 :16 r4 <f a>4 :16 | 
	     | r4 <f a>4 :16 r4 <gis b>4 :16 }
	 \repeat volta 2 {
	     | 
	     \mark \markup { \musicglyph #"scripts.segno" } | | r4 ^"Solos" <gis b>4 :16 r4 <gis b>4 :16 | | r4 <gis b>4 :16 r4 <gis b>4 :16 }
	 \alternative { { | | r4 <g c>4 :16 r4 <g b>4 :16 | | r4 <a c>4 :16 r4 <gis b>4 :16 }
	     { | | e'8 d8 r8 c8 r8 b8 r8 a8 } } | 
	 | 
	 r4 <gis b>4 :16 r4 <gis b>4 :16 }
    \repeat volta 2 {
	 | 
	 | a,8 ^"To Coda" ^"Solos" c8 r8 d8 r8 es8 r8 d8 | d4 r4 r2 | a8 c8 r8 d8 r8 es8 r8 d8 | d4 r4 r2 }
    \repeat volta 2 {
	 | | r4 ^"each section open" <g bes>4 :16 r4 <fis a>4 :16 | r4 <g bes>4 :16 r4 <fis a>4 :16 | r4 <g bes>4 :16 r4 <fis a>4 :16 | r4 <es g>4 :16 r4 <fis a>4 :16 | 
	 \times 2/3  { d8 d8 d8 } \times 2/3  { es8 es8 es8 } \times 2/3  { fis8 fis8 fis8 }
	 \times 2/3  { g8 g8 g8 } | r4 <g c>4 :16 r4 <g bes>4 :16 | r4 <g bes>4 :16 r4 <g bes>4 :16 }
    \alternative { { | r4 <g bes>4 :16 r4 <fis a>4 :16 | r4 <es g>4 :16 r4 <fis a>4 :16 }
	 { | r4 <a c>4 :16 r4 <gis b>4 :16 } } | 
    r4 <f a>4 :16 r4 <gis b>4 :16 \bar "||"
    \repeat volta 4 {
	 | 
	 | \times 2/3  { r8 -"Solos" r8 <e gis>16 -"each section open" <e gis>16 ] } <e gis>8 <e gis>8 \times 2/3 { r8 r8 <e gis>16 <e gis>16 } <e gis>8 <e gis>8 }
    \repeat volta 4 {
	 | \times 2/3  { r8 r8 <d fis>16 <d fis>16 } <d fis>8 <d fis>8 \times 2/3 { r8 r8 <d fis>16 <d fis>16 } <d fis>8 <d fis>8 } | 
    \times 2/3  { c4 c4 c4 } \times 2/3  { c4 c4 c4 } | \times 2/3  { c4 c4 c4 } c4 c4 
	\repeat volta 4 {
	 | \times 2/3  { r8 r8 <d fis>16 <d fis>16 } <d fis>8 <d fis>8 \times 2/3 { r8 r8 <d fis>16 <d fis>16 } <d fis>8 <d fis>8 }
    \repeat volta 4 { | \times 2/3  { r8 r8 <e gis>16 <e gis>16 } <e gis>8 <e gis>8 \times 2/3 { r8 r8 <e gis>16 <e gis>16 } <e gis>8 <e gis>8 }
    | R1 \bar "||"
    | 
    | 
    \mark \markup { \musicglyph #"scripts.coda" } d8 ^"D.S. al Coda" e8
    r8 f8 r8 gis8 r8 e8 | f8 gis8 r8 a8 r8 b8 r8 gis8 | a8 b8 r8 c8 r8 d8 r8 f8 | e4 r4 <e, gis>2 ~ ~ | <e gis>2 r2 \bar "|."
    }


}

%part: changes
changes = \chordmode { 
  e1 | f:5- | d:m | r | e | f:5- | b:m/d | r |

  %A
  e | e | e | e | a2:m e | f e | d:m d:m/cis | d:m/c d:m/b | f e | d:m e |
  %A1
  e1 | e | e | e | a2:m e | f e | d:m d:m/cis | d:m/c d:m/b | f e | d:m e |
  %B
  c1 | c2 g | a:m e:7 | d:m e:7 | d1:m | d2:m a:m | e:7 f | d:m f |
  %C
  e1 | e | e | e | e2. e4:/cis | d2:m a:m | e a:m | e d:m | f1 | f2 e | 
  d1 | d2:m a:m | e a:m | e d:m | f1 | f2 e |
  %D
  e1 | e2 d:m | e d:m | e1 | e | e | e2 d:m | d:m e |
  %E
  e1 | e | c2 g | a:m e | e1 | e |
  %F
  r1 | r | r | r |
  %G
  g2:m d | g:m d | ees d | c:m d | r1 | c2:m g:m | g:m ees| ees d | c:m d | f e | d:m e |
  %solos
  e1 | d | c:dim | s | 
  %coda
  r | r | r | r | r2 e2 | e2 r2 | 
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
  \paper { #(set-paper-size "letter") }
    \score { 
      << 
%	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { 
		\melody
	}
	\new Staff { \clef tenor
		\tenor
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
