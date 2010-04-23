\version "2.12.1"

\header {
	title = "Erosal"
	composer = "Rumen 'Sali' Shopov"
	copyright = "4/22/10" %date of latest edits
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
		  r b b b a gis f4 | r8 gis gis gis f e d4 | 
	  }
		\alternative { 
		  { gis gis8 gis f e d f | e e e d e d e4 | }
		  { gis gis8 gis f e d f | e e e d e d e4 | }
		}

	  \mark \default %E
	  \repeat volta 4 {
		b'4\mark \markup { \musicglyph #"scripts.segno" } \times 2/3 { b8 b b } \times 2/3  { d c b } b4 | 
		  \times 2/3  { e,8 f gis } \times 2/3  { a b c } \times 2/3  { d c b } b4 |
	  }
		  \alternative { 
			  { \set Score.repeatCommands = #'((volta "1,3")) e e8 e d e d d | cis d c c b c b b | }
			  { \set Score.repeatCommands = #'((volta #f) (volta "2,4") end-repeat) e d r c r b r a | 
			  	gis gis f gis \times 2/3 { f f e } e4^"To Coda" \set Score.repeatCommands = #'((volta #f) end-repeat) | } 
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
			  { \times 2/3  { b'8 a gis } a b gis gis f gis | a gis f e e d e4 | }
		  }

	  \mark "Solos"
	  \repeat volta 4 { | \times 2/3  { r8^\markup { \italic "open" } r <e gis>16 <e gis> } <e gis>8 <e gis> \times 2/3 { r r <e gis>16 <e gis> } <e gis>8 <e gis> | }
	  \repeat volta 4 { | \times 2/3  { r^\markup { \italic "open" } r <d fis>16 <d fis> } <d fis>8 <d fis> \times 2/3 { r r <d fis>16 <d fis> } <d fis>8 <d fis> | } 
	  \times 2/3  { c4 c c } \times 2/3  { <c es> <c es> <c es> } | 
	  \times 2/3  { <c ees a> <c ees a> <c ees a> } <c ees a c> <c ees a c> \markdownright \mark "D.S. al Coda" | \bar "||"

	  \stopStaff s1 %empty bar for coda 
	  \startStaff
		  
	  \mark \markup { \musicglyph #"scripts.coda" } 
	  d8 e r f r gis r e | f gis r a r b r gis | a b r c r d r f | e4 r <e, gis b e>2 ~ ~ ~ ~ | <e gis b e>2 r2 \bar "|."

  }
}

%part: tenor
tenor = {
  \relative c' { \time 2/2 \set Score.markFormatter = #format-mark-box-letters
	<gis b>1 | <a b> | <a c> | r | <gis b> | <a b> | <f b> |  r | 

	\mark \default  %A
	\repeat percent 4 { r8 <gis b>16 <gis b> <gis b>8 <gis b> r <gis b>16 <gis b> <gis b>8 <gis b> | }
	\repeat percent 2 { r <a c>16 <a c> <a c>8 <a c> r <gis b>16 <gis b> <gis b>8 <gis b> | }
	\repeat percent 2 { r <f a>16 <f a> <f a>8 <f a> r <f a>16 <f a> <f a>8 <f a> | }
	\repeat percent 2 { r <f a>16 <f a> <f a>8 <f a> r <gis b>16 <gis b> <gis b>8 <gis b> | }

	\mark \markup { \box \bold "A1" } %A1
	\repeat percent 4 { r <gis b>16 <gis b> <gis b>8 <gis b> r <gis b>16 <gis b> <gis b>8 <gis b> | }
	\repeat percent 2 { r <a c>16 <a c> <a c>8 <a c> r <gis b>16 <gis b> <gis b>8 <gis b> | }
	\repeat percent 2 { r <f a>16 <f a> <f a>8 <f a> r <f a>16 <f a> <f a>8 <f a> | }
	\repeat percent 2 { r <f a>16 <f a> <f a>8 <f a> r <gis b>16 <gis b> <gis b>8 <gis b> | }
		
	\mark \default %B
	\repeat volta 2 {
	  <e g> r r4 r2 | <e g>8 r r4 <g b>8 r r4 | <a c>8 r r4 <gis b>8 r r4 | <f a>8 r r4 \times 2/3 { <gis b>4 b cis } | <f, a>8 r r4 r2 |
	  r8 <f a>16 <f a> <f a>8 <f a> r <a c>16 <a c> <a c>8 <a c> | r <gis b>16 <gis b> <gis b>8 <gis b> r <a c>16 <a c> <a c>8 <a c> | 
	  r <a d>16 <a d> <a d>8 <a d> r <a c>16 <a c> <a c>8 <a c> |
	}  
		  
	\mark \default %C
	\repeat percent 4 { r <gis b>16 <gis b> <gis b>8 <gis b> r <gis b>16 <gis b> <gis b>8 <gis b> | }
	r <gis b>16 <gis b> <gis b>8 <gis b> r <gis b>16 <gis b> <gis b>8 <gis b> |
	<f a> r r4 <a c>8 r r4 | <gis b>8 r r4 <a c>8 r r4 | <gis b>8 r r4 <f a>8 r r4 |
	<f a>8 r r4 r2 | r8 <a c>16 <a c> <a c>8 <a c> r <gis b>16 <gis b> <gis b>8 <gis b> |
	r <f a>16 <f a> <f a>8 <f a> r <f a>16 <f a> <f a>8 <f a> | r <f a>16 <f a> <f a>8 <f a> r <a c>16 <a c> <a c>8 <a c> |
	r <gis b>16 <gis b> <gis b>8 <gis b> r <a c>16 <a c> <a c>8 <a c> | r <gis b>16 <gis b> <gis b>8 <gis b> r <f a>16 <f a> <f a>8 <f a> |
	<f a> r r4 r2 | r8 <a c>16 <a c> <a c>8 <a c> r <gis b>16 <gis b> <gis b>8 <gis b> |

	\mark \default %D
	\repeat volta 2 {
	  r <gis b>16 <gis b> <gis b>8 <gis b> r <gis b>16 <gis b> <gis b>8 <gis b> |
	  \repeat percent 2 { r <gis b>16 <gis b> <gis b>8 <gis b> r <f a>16 <f a> <f a>8 <f a> | }
	  r <gis b>16 <gis b> <gis b>8 <gis b> r4 <gis b>->  |
	  r2 <gis b>4-> <gis b>-> | r2 <gis b>4-> <gis b>-> |
	}
	  \alternative {
		{ r8 <gis b>16 <gis b> <gis b>8 <gis b> r <f a>16 <f a> <f a>8 <f a> | r <f a>16 <f a> <f a>8 <f a> r <gis b>16 <gis b> <gis b>8 <gis b> | }
		{ \times 2/3 { r4^\markup { \italic "Sa-sa!" } <gis b>16 <gis b> } <gis b>8 <gis b> \times 2/3 { r4 <f a>16 <f a> } <f a>8 <f a> |
		\times 2/3 { r4 <f a>16 <f a> } <f a>8 <f a> \times 2/3 { r4 <gis b>16 <gis b> } <gis b>8 <gis b> | }
	  }

		
	\mark \default %E
	\repeat volta 4 {
	  \times 2/3 { r4\mark \markup { \musicglyph #"scripts.segno"}  <gis b>16 <gis b> } <gis b>8 <gis b> \times 2/3 { r4 <gis b>16 <gis b> } <gis b>8 <gis b> |
	  \times 2/3 { r4 <gis b>16 <gis b> } <gis b>8 <gis b> \times 2/3 { r4 <gis b>16 <gis b> } <gis b>8 <gis b> |
	} 
	  \alternative { 
		{ \set Score.repeatCommands = #'((volta "1,3")) \times 2/3 { r4 <g c>16 <g c> } <g c>8 <g c> \times 2/3 { r4 <g b>16 <g b> } <g b>8 <g b> |
	      \times 2/3 { r4 <a c>16 <a c> } <a c>8 <a c> \times 2/3 { r4 <gis b>16 <gis b> } <gis b>8 <gis b> | } 
		{ \set Score.repeatCommands = #'((volta #f) (volta "2,4") end-repeat) e'8 d r c r b r a | 
		  gis gis f gis \times 2/3 { f f e } e4^"To Coda" \set Score.repeatCommands = #'((volta #f) end-repeat) | } 
	  } 

	\mark \default %F
	\repeat volta 2 {
	  a,8 c r d r ees r d | d4 r r2 | a8 c r d r ees r d | d4 r r2 | 
	}  
		
	\mark \default %G
	\repeat volta 2 {
	  \repeat percent 3 { \times 2/3 { r4 <g bes>16 <g bes> } <g bes>8 <g bes> \times 2/3 { r4 <fis a>16 <fis a> } <fis a>8 <fis a> | }
	  \times 2/3 { r4 <ees g>16 <ees g> } <ees g>8 <ees g> \times 2/3 { r4 <fis a>16 <fis a> } <fis a>8 <fis a> |
	  \times 2/3 { d8 d d } \times 2/3 { ees ees ees } \times 2/3 { fis fis fis } \times 2/3 { g g g } |
	  \times 2/3 { r4 <g c>16 <g c> } <g c>8 <g c> \times 2/3 { r4 <g bes>16 <g bes> } <g bes>8 <g bes> |
	  \times 2/3 { r4 <g bes>16 <g bes> } <g bes>8 <g bes> \times 2/3 { r4 <g bes>16 <g bes> } <g bes>8 <g bes> |
	} 
	  \alternative { 
		{ \times 2/3 { r4 <g bes>16 <g bes> } <g bes>8 <g bes> \times 2/3 { r4 <fis a>16 <fis a> } <fis a>8 <fis a> |
		  \times 2/3 { r4 <ees g>16 <ees g> } <ees g>8 <ees g> \times 2/3 { r4 <fis a>16 <fis a> } <fis a>8 <fis a> | } 
		{ \times 2/3 { r4 <a c>16 <a c> } <a c>8 <a c> \times 2/3 { r4 <gis b>16 <gis b> } <gis b>8 <gis b> |
		  \times 2/3 { r4 <f a>16 <f a> } <f a>8 <f a> \times 2/3 { r4 <gis b>16 <gis b> } <gis b>8 <gis b> | } 
	  } 
		  
	\mark "Solos"
	\repeat volta 4 {
	  \times 2/3 { r4^\markup { \italic "open" }  <e gis>16 <e gis> } <e gis>8 <e gis> \times 2/3 { r4 <e gis>16 <e gis> } <e gis>8 <e gis> | 
	}  
	\repeat volta 4 {
	  \times 2/3 { r4^\markup { \italic "open" }  <d fis>16 <d fis> } <d fis>8 <d fis> \times 2/3 { r4 <d fis>16 <d fis> } <d fis>8 <d fis> | 
	}  
	\times 2/3 { c4 c c } \times 2/3 { c c c } | \times 2/3 { c c c } \times 2/3 { c c c } \markdownright \mark "D.S. al Coda" | \bar "||"

	\stopStaff s1 %empty bar for coda 
	\startStaff
		  
	
	\mark \markup { \musicglyph #"scripts.coda"}  
	d8 e r f r gis r e | f gis r a r b r gis | a b r c r d r f | e4 r e2~ | e  r \bar "|."
	
	} 
}


%part: EnharmonicTenor
EnharmonicTenor = {
  \relative c' { \time 2/2 \set Score.markFormatter = #format-mark-box-letters
	aes1 | a | a | r | aes | a | f |  r | 

	\mark \default  %A
	\repeat percent 4 { r8 aes16 aes aes8 aes r aes16 aes aes8 aes | }
	\repeat percent 2 { r a16 a a8 a r aes16 aes aes8 aes | }
	\repeat percent 2 { r f16 f f8 f r f16 f f8 f | }
	\repeat percent 2 { r f16 f f8 f r aes16 aes aes8 aes | }

	\mark \markup { \box \bold "A1"} %A1
	\repeat percent 4 { r aes16 aes aes8 aes r aes16 aes aes8 aes | }
	\repeat percent 2 { r a16 a a8 a r aes16 aes aes8 aes | }
	\repeat percent 2 { r f16 f f8 f r f16 f f8 f | }
	\repeat percent 2 { r f16 f f8 f r aes16 aes aes8 aes | }
		
	\mark \default %B
	\repeat volta 2 {
	  e r r4 r2 | e8 r r4 g8 r r4 | a8 r r4 aes8 r r4 | f8 r r4 \times 2/3 { aes4 b cis } | f,8 r r4 r2 |
	  r8 f16 f f8 f r a16 a a8 a | r aes16 aes aes8 aes r a16 a a8 a | r a16 a a8 a r a16 a a8 a |
	}  
		  
	\mark \default %C
	\repeat percent 4 { r aes16 aes aes8 aes r aes16 aes aes8 aes | }
	r aes16 aes aes8 aes r aes16 aes aes8 aes |
	f r r4 a8 r r4 | aes8 r r4 a8 r r4 | aes8 r r4 f8 r r4 |
	f8 r r4 r2 | r8 a16 a a8 a r aes16 aes aes8 aes |
	r f16 f f8 f r f16 f f8 f | r f16 f f8 f r a16 a a8 a |
	r aes16 aes aes8 aes r a16 a a8 a | r aes16 aes aes8 aes r f16 f f8 f |
	f r r4 r2 | r8 a16 a a8 a r aes16 aes aes8 aes |

	\mark \default %D
	\repeat volta 2 {
	  r aes16 aes aes8 aes r aes16 aes aes8 aes |
	  \repeat percent 2 { r aes16 aes aes8 aes r f16 f f8 f | }
	  r aes16 aes aes8 aes r4 aes->  |
	  r2 aes4-> aes-> | r2 aes4-> aes-> |
	}
	  \alternative {
		{ r8 aes16 aes aes8 aes r f16 f f8 f | r f16 f f8 f r aes16 aes aes8 aes | }
		{ \times 2/3 { r4^\markup { \italic "Sa-sa!" } aes16 aes } aes8 aes \times 2/3 { r4 f16 f } f8 f |
		\times 2/3 { r4 f16 f } f8 f \times 2/3 { r4 aes16 aes } aes8 aes | }
	  }

		
	\mark \default %E
	\repeat volta 4 {
	  \times 2/3 { r4\mark \markup { \musicglyph #"scripts.segno"}  aes16 aes } aes8 aes \times 2/3 { r4 aes16 aes } aes8 aes |
	  \times 2/3 { r4 aes16 aes } aes8 aes \times 2/3 { r4 aes16 aes } aes8 aes |
	} 
	  \alternative { 
		{ \set Score.repeatCommands = #'((volta "1,3")) \times 2/3 { r4 g16 g } g8 g \times 2/3 { r4 g16 g } g8 g |
	      \times 2/3 { r4 a16 a } a8 a \times 2/3 { r4 aes16 aes } aes8 aes | } 
		{ \set Score.repeatCommands = #'((volta #f) (volta "2,4") end-repeat) e'8 d r c r b r a | 
		  aes aes f aes \times 2/3 { f8 f e } e4^"To Coda" \set Score.repeatCommands = #'((volta #f) end-repeat) | } 
	  } 

	\mark \default %F
	\repeat volta 2 {
	  a,8 c r d r ees r d | d4 r r2 | a8 c r d r ees r d | d4 r r2 | 
	}  
		
	\mark \default %G
	\repeat volta 2 {
	  \repeat percent 3 { \times 2/3 { r4 g16 g } g8 g \times 2/3 { r4 fis16 fis } fis8 fis | }
	  \times 2/3 { r4 ees16 ees } ees8 ees \times 2/3 { r4 fis16 fis } fis8 fis |
	  \times 2/3 { d8 d d } \times 2/3 { ees ees ees } \times 2/3 { fis fis fis } \times 2/3 { g g g } |
	  \times 2/3 { r4 g16 g } g8 g \times 2/3 { r4 g16 g } g8 g |
	  \times 2/3 { r4 g16 g } g8 g \times 2/3 { r4 g16 g } g8 g |
	} 
	  \alternative { 
		{ \times 2/3 { r4 g16 g } g8 g \times 2/3 { r4 fis16 fis } fis8 fis |
		  \times 2/3 { r4 ees16 ees } ees8 ees \times 2/3 { r4 fis16 fis } fis8 fis | } 
		{ \times 2/3 { r4 a16 a } a8 a \times 2/3 { r4 aes16 aes } aes8 aes |
		  \times 2/3 { r4 f16 f } f8 f \times 2/3 { r4 aes16 aes } aes8 aes | } 
	  } 
		   
	\mark "Solos"
	\repeat volta 4 {
	  \times 2/3 { r4^\markup { \italic "open" }  e16 e } e8 e \times 2/3 { r4 e16 e } e8 e | 
	}  
	\repeat volta 4 {
	  \times 2/3 { r4^\markup { \italic "open" }  d16 d } d8 d \times 2/3 { r4 d16 d } d8 d | 
	}  
	\times 2/3 { c4 c c } \times 2/3 { c c c } | \times 2/3 { c c c } \times 2/3 { c c c } \markdownright \mark "D.S. al Coda" | \bar "||"

	\stopStaff s1 %empty bar for coda 
	\startStaff
		  
	
	\mark \markup { \musicglyph #"scripts.coda"}  
	d8 e r f r aes r e | f aes r a r b r aes | a b r c r d r f | e4 r e2~ | e  r \bar "|."
	
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
  e1 | e2 d:m | e d:m | e1 | e | e | e2 d:m | d:m e | e2 d:m | d:m e |
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

%\tempo 4=176
%layout
%{
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
