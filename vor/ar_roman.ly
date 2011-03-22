\version "2.12.1"

\header {
	title = "Ar Roman: Oyun Avasi (9/8)"
	copyright = "3/16/10" % put date center bottom
	}

%music pieces
%part: melody
melody = {
\relative c'' { \time 9/8 \set beatLength = #(ly:make-moment 1 16) \set beatGrouping = #'(4 4 6 4) 
	\tempo 8=176
	\set Score.markFormatter = #format-mark-box-letters
	\mark \default %A
	a,4 c d16 ees ees d d c d d d d | a8 c d fis ees16 fis ees d d c d d d d |
	a4 c d16 ees ees d d c d d d d | a8 c d fis ees16 fis ees d d c d d d8 | \break
	
	\mark \default %B
	\repeat volta 2 {
	\times 2/3 { c'16 bes a } a bes a a a g \times 2/3 { a g g } f g f8 g16 g g g |
	g8 b,16 c d e f g \times 4/6 { a ais b c bes a } a8 a16 a a a |
	d,16 f a d c bes a g \times 2/3 { a g g } f g f8 g16 g g g |
	f8 g16 g g f g e? f f ees d d c d d d8 | }

	\mark \default %C
	\repeat volta 2 {
	d16 f a d c16 c c c \times 2/3 { d c bes } bes c bes8 bes16 bes bes bes |
	d,16 f a c a f a c \times 2/3 { c bes a } a bes a8 a16 a a a |
	g16 aes g f g aes b? c b ees d c c b aes g f e? |
	f8 g16 g g f g e? f f ees d d c d d d8  | }

	\mark \default %D
	\repeat volta 2 {
	e8 f g16 g g g g aes aes g g f g g g g | g8 ees'16 d d c b aes b b aes g g f g g g g | 
	g8 g'16 f f ees ees d \times 2/3 { f ees d } ees f d ees c d b aes |
	aes8 b c16 d c b aes aes aes g g f g g g g }

	\mark \default %E
	\repeat volta 2 {
	g8\mp f16 g f8 e?16 f \times 2/3 { f ees d } d ees d8 d16 d d c |
	d8 e f g g16 aes aes g g f g g g g | }

	\repeat volta 4 {
	d8^\markup { \italic "4x" } e_\markup { \italic "speed up lots" } f g g16 aes aes g g f g g g g | }
	
	\repeat volta 4 { r4_\markup { \italic "drums speed up and change feel" } r r8. r r4 | } 
	\repeat volta 4 { r2 r4 r4. }

%the fast part
	\set beatLength = #(ly:make-moment 1 8) \set beatGrouping = #'(2 2 2 3) \tempo 8=264
	
	\mark \default %F
  \repeat volta 2 {
	\repeat volta 2 {
	g,8 a b c d ees ees d c | g' g16 fis ees8 fis fis16 ees d ees d8 d16 d d d | \break
	g,8[ r16 a] b8 c d ees ees d c | g' g16 fis ees8 fis fis16 ees d ees d8 d16 d d8 | \break }

	\mark \default %G
	fis16 g g g g8 g16 g g8 g16 g bes8 a16 a g8 | fis16 g g g g g g g g8 g16 g bes8 a g |
	bes a g bes a g bes a g | fis g g fis fis16 fis fis fis fis8 fis16 fis fis8 |
	
	f?16 fis fis fis fis8 fis16 fis fis8 fis16 fis g8 fis ees |
	fis16 fis fis fis fis fis fis fis fis8 fis16 fis g8 fis ees |
	a g fis a g fis a g fis | ees fis fis ees ees4~ ees8 ees16 ees ees8 |

	c8. d16 ees8 fis g a bes a g | fis8. g16 a8 bes c d ees d c |
	d,16 ees ees ees ees8 ees ees16 ees ees d fis8 g a |
	fis16 ees fis g fis ees d ees d d d c d8 d16 d d8 | 
	
 }
	\alternative {
		{ 
		  \repeat volta 4 { c16^\markup { \italic "4x" } d d d d8 d ees fis fis ees d^\markup "To F"| }
		}

		{ \break	
		  \repeat volta 8 { 
			<ees bes'>8^\markup { \italic "solo (open)" } <d a'> <d a'> <d a'> 
			<ees bes'> <d a'> <d a'> <d a'>16 <d a'> <d a'> <d a'> }

		  c8. d16 ees8 fis g a bes a g | fis8. g16 a8 bes b c d ees fis | d-^ r8 r4 r4 r4. |
		  \bar "||"
		}
	}
}
}

%part: changes
changes = \chordmode { 
	%A
	d1 r8 | d1 r8 | d1 r8 | d1 r8 |

	%B
	d2.:m g4.:m | g2.:m d4.:m | d2.:m g4.:m | g2.:m d4.:m |  

	%C
	d2.:m g4.:m | d1:m7 r8 | g1 r8 | g2.:m d4.:m |

	%D
	g1 r8 | g1 r8 | g1 r8 | f2.:m g4. |

	%E
	g2. d4.:m | g1 r8 | g1 r8 | r1 r8 | r1 r8 |

	%F is for fast
	g1 r8 | g2 d r8 | g1 r8 | g2 d r8 | 

	%G
	g1 r8 | g1 r8 | g1 r8 | d1 r8 |
	d1 r8 | d1 r8 | d1 r8 | c1:m r8 |
	c1:m r8 | c1:dim r8 | c2.:m d4. | d1 r8 | d1 r8 | 
}



%part: tenorhigh
tenorhigh = {
        \relative c' { \time 9/8
          \set Score.markFormatter = #format-mark-box-letters
          
        \mark \default %A
                r8 a'16 a r8 a16 a r8 a16 a a8 a16 a a a |
                r8 bes16 bes r8 a,16 a c8 ees d a'16 a a a |
                r8 a16 a r8 a16 a r8 a16 a a8 a16 a a a |
                r8 bes16 bes r8 a,16 a c8 ees d a'16 a a a |

        \mark \default %B
        \repeat volta 2 {
                r8 a16 a r8 a16 a r8 a16 a bes8 bes16 bes bes bes |
                r8 bes16 bes r8 bes16 bes r8 bes16 bes a a a a a a |
                r8 a16 a r8 a16 a r8 a16 a bes8 bes16 bes bes bes |
                r8 bes16 bes r8 bes16 bes r8 bes16 bes a a a a a a \break |
        }

        \mark \default %C
        \repeat volta 2 {
                r8 a16 a r8 a16 a r8 a16 a bes8 bes16 bes bes bes |
                r8 a16 a r8 a16 a r8 a16 a a16 a a a a a |
                r8 b?16 b r8 b16 b r8 b16 b b8 b16 b b b |
                r8 bes16 bes r8 bes16 bes r8 bes16 bes a a a a a a                
              }
        \break
        \mark \default %D
        \repeat volta 2 {
                r8 b16 b r8 b16 b r8 b16 b b8 b16 b b b |
                r8 b16 b r8 b16 b r8 b16 b b b b b b b |
                r8 b16 b r8 b16 b r8 b16 b b8 b16 b b b |
                r8 c16 c r8 c16 c r8 c16 c b b b b b b |
        }
        \break

        \mark \default %E
        \repeat volta 2 {
        r8 b16 b r8 b16 b r8 b16 b a8 a16 a a a |
        r8 b16 b r8 b16 b r8 b16 b b b b b b b \break |
        }

        \repeat volta 4 {
        aes4\f^\markup {\tiny "4x"} c ees d8 d4 |
        }

        \repeat volta 4 {
        aes8\ff^\markup {\tiny "harmonize 3rd & 4th times"}[ g g g] aes[ g g] g4
        }

        \repeat volta 4 {
        g8^\markup {\tiny "1st x only"} r r4 r r4. 
        }
        \set beatLength = #(ly:make-moment 1 8) \set beatGrouping = #'(2 2 2 3) \tempo 8=264
        
        \mark \default %F
        \repeat volta 2 {
        \repeat volta 2 {
                r8 b b4 r8 b b4. | r8 b b4 r8 a a4. |
                r8 b b4 r8 b b4. | r8 b [b b] a[ a] a[ a a] \break |
        }

        \mark \default %G   
              r8 b r b r b r b b | r8 b r b r b r b b |
              bes8 a g bes a g bes a g | r8 b r b r b r b b \break|
              r8 b r b r b r b b | r8 b r b r b r b b |
              a8 g fis a g fis a g fis | r8 g r g r g r g g \break|
              r8 g r g r g r g g | r8 fis r fis r fis r fis fis |
              r8 g r g r g r b b |  r8 b r b r b r b b \break|

        }
        \alternative {
                { 
                  \repeat volta 4 { c,16^\markup { \italic "4x" } d d d d8 d ees fis fis ees d^\markup "To F"| }
                }

                { \break        
                  \repeat volta 8 { 
                        <ees bes'>8^\markup { \italic "solo (open)" } <d a'> <d a'> <d a'> 
                        <ees bes'> <d a'> <d a'> <d a'>16 <d a'> <d a'> <d a'> }

                  c8. d16 ees8 fis g a bes a g | fis8. g16 a8 bes b c d ees fis | d-^ r8 r4 r4 r4. |
                  \bar "||"
                }
        }
        }
}


%part: tenormid
tenormid = {
  \relative c' { \time 9/8
    \set Score.markFormatter = #format-mark-box-letters
    
    \mark \default %A
    r8 fis16 fis r8 fis16 fis r8 fis16 fis fis8 fis16 fis fis fis |
    r8 g16 g r8 a,16 a c8 ees d fis16 fis fis fis |
    r8 fis16 fis r8 fis16 fis r8 fis16 fis fis8 fis16 fis fis fis |
    r8 g16 g r8 a,16 a c8 ees d fis16 fis fis fis |
    \break
    \mark \default %B
    \repeat volta 2 {
      r8 f16 f r8 f16 f r8 f16 f g8 g16 g g g |
      r8 g16 g r8 g16 g r8 g16 g f f f f f f |
      r8 f16 f r8 f16 f r8 f16 f g8 g16 g g g |
      r8 g16 g r8 g16 g r8 g16 g f f f f f f \break|
      %               r8 d16 d r8 d16 d r8 d16 d ees8 bes16 bes bes bes |
      %r8 bes16 bes r8 bes16 bes r8 bes16 bes a a a a a a \break |
    }
    
    \mark \default %C
    \repeat volta 2 {
      r8 f16 f r8 f16 f r8 f16 f g8 g16 g g g |
      r8 f16 f r8 f16 f r8 f16 f f16 f f f f f |
      r8 g16 g r8 g16 g r8 g16 g g8 g16 g g g |
      r8 g16 g r8 g16 g r8 g16 g f f f f f f                
    }
    \break
    \mark \default %D
    \repeat volta 2 {
      r8 g16 g r8 g16 g r8 g16 g g8 g16 g g g |
      r8 g16 g r8 g16 g r8 g16 g g g g g g g |
      r8 g16 g r8 g16 g r8 g16 g g8 g16 g g g |
      r8 aes16 aes r8 aes16 aes r8 aes16 aes g g g g g g |
    }
    \break
    \mark \default %E
    \repeat volta 2 {
      %     r8 b16 b r8 b16 b r8 b16 b a8 a16 a a a |
      %r8 b16 b r8 b16 b r8 b16 b b b b b b b \break |
      r8 g16 g r8 g16 g r8 g16 g f8 f16 f f f |
      r8 g16 g r8 g16 g r8 g16 g g g g g g g \break|
    }
    
    \repeat volta 4 {
      f4\f^\markup {\tiny "4x"} aes c b8 b4 |
      }
      
      \repeat volta 4 {
        % aes8\ff^\markup {\tiny "harmonize 3rd & 4th times"}[ g g g] aes[ g g] g4
        ees,8\ff^\markup {\tiny "harmonize 3rd & 4th times"}[ d d d] ees[ d d] d4
        }
        
        \repeat volta 4 {
          d8^\markup {\tiny "1st x only"} r r4 r r4. 
        }
        \set beatLength = #(ly:make-moment 1 8) \set beatGrouping = #'(2 2 2 3) \tempo 8=264
            \mark \default %F
            \repeat volta 2 {
              \repeat volta 2 {
                r8 g g4 r8 g g4. | r8 g g4 r8 fis fis4. |
                r8 g g4 r8 g g4. | r8 g [g g] fis[ fis] fis[ fis fis] \break |
              }
              
              \mark \default %G
              
              r8 fis r fis r fis r fis fis | r8 fis r fis r fis r fis fis |
              bes8 a g bes a g bes a g | r8 fis r fis r fis r fis fis \break|
              r8 fis r fis r fis r fis fis | r8 fis r fis r fis r fis fis |
              a8 g fis a g fis a g fis | r8 ees r ees r ees r ees ees \break|
              r8 ees r ees r ees r ees ees | r8 ees r ees r ees r ees ees |
              r8 ees r ees r ees r fis fis |  r8 fis r fis r fis r fis fis \break|
            }
            \alternative {
              { 
                \repeat volta 4 { c16^\markup { \italic "4x" } d d d d8 d ees fis fis ees d^\markup "To F"| }
                }
                
                { \break        
                  \repeat volta 8 { 
                    <ees bes'>8^\markup { \italic "solo (open)" } <d a'> <d a'> <d a'> 
                      <ees bes'> <d a'> <d a'> <d a'>16 <d a'> <d a'> <d a'> }
                    
                    c8. d16 ees8 fis g a bes a g | fis8. g16 a8 bes b c d ees fis | d-^ r8 r4 r4 r4. |
                    \bar "||"
                  }
                }
              }
            }

%part: tenor 
tenor = {
  \relative c' { \time 9/8
    \set Score.markFormatter = #format-mark-box-letters
    
    \mark \default %A
    r8 d16 d r8 d16 d r8 d16 d d8 d16 d d d |
    r8 ees16 ees r8 a,16 a c8 ees d d16 d d d |
    r8 d16 d r8 d16 d r8 d16 d d8 d16 d d d |
    r8 ees16 ees r8 a,16 a c8 ees d d16 d d d |
    \break
    \mark \default %B
    \repeat volta 2 {
      r8 d16 d r8 d16 d r8 d16 d d8 d16 d d d |
      r8 d16 d r8 d16 d r8 d16 d d d d d d d |
      r8 d16 d r8 d16 d r8 d16 d d8 d16 d d d |
      r8 d16 d r8 d16 d r8 d16 d d d d d d d \break|
      %               r8 d16 d r8 d16 d r8 d16 d ees8 bes16 bes bes bes |
      %r8 bes16 bes r8 bes16 bes r8 bes16 bes a a a a a a \break |
    }
    
    \mark \default %C
    \repeat volta 2 {
      r8 d16 d r8 d16 d r8 d16 d d8 d16 d d d |
      r8 d16 d r8 d16 d r8 d16 d d d d d d d |
      r8 d16 d r8 d16 d r8 d16 d d8 d16 d d d |
      r8 d16 d r8 d16 d r8 d16 d d d d d d d |
      
    }
    \break
    \mark \default %D
    \repeat volta 2 {
      r8 d16 d r8 d16 d r8 d16 d d8 d16 d d d |
      r8 d16 d r8 d16 d r8 d16 d d d d d d d |
      r8 d16 d r8 d16 d r8 d16 d d8 d16 d d d |
      r8 f16 f r8 f16 f r8 f16 f d d d d d d |
    }
    \break
    \mark \default %E
    \repeat volta 2 {
      %     r8 b16 b r8 b16 b r8 b16 b a8 a16 a a a |
      %r8 b16 b r8 b16 b r8 b16 b b b b b b b \break |
      r8 d16 d r8 d16 d r8 d16 d d8 d16 d d d |
      r8 d16 d r8 d16 d r8 d16 d d d d d d d \break |
    }
    
    \repeat volta 4 {
      d4\f^\markup {\tiny "4x"} f aes g8 g4 |
      }
      
      \repeat volta 4 {
        % aes8\ff^\markup {\tiny "harmonize 3rd & 4th times"}[ g g g] aes[ g g] g4
        ees8\ff^\markup {\tiny "harmonize 3rd & 4th times"}[ d d d] ees[ d d] d4
        }
        
        \repeat volta 4 {
          d8^\markup {\tiny "1st x only"} r r4 r r4. 
        }
        \set beatLength = #(ly:make-moment 1 8) \set beatGrouping = #'(2 2 2 3) \tempo 8=264
            \mark \default %F
            \repeat volta 2 {
              \repeat volta 2 {
                r8 d d4 r8 d d4. | r8 d d4 r8 d d4. |
                r8 d d4 r8 d d4. | r8 d [d d] d[ d] d[ d d] \break |
              }
              \break
              \mark \default %G
              
              r8 d r d r d r d d | r8 d r d r d r d d |
              bes'8 a g bes a g bes a g | r8 d r d r d r d d \break|
              r8 d r d r d r d d | r8 d r d r d r d d |
              a'8 g fis a g fis a g fis | r8 c r c r c r c c \break|
              r8 c r c r c r c c | r8 c r c r c r c c |
              r8 c r c r c r d d |  r8 d r d r d r d d \break|
            }
            \alternative {
              { 
                \repeat volta 4 { c16^\markup { \italic "4x" } d d d d8 d ees fis fis ees d^\markup "To F"| }
                }
                
                { \break        
                  \repeat volta 8 { 
                    <ees bes'>8^\markup { \italic "solo (open)" } <d a'> <d a'> <d a'> 
                      <ees bes'> <d a'> <d a'> <d a'>16 <d a'> <d a'> <d a'> }
                    
                    c8. d16 ees8 fis g a bes a g | fis8. g16 a8 bes b c d ees fis | d-^ r8 r4 r4 r4. |
                    \bar "||"
                  }
                }
              }
            }
            

%part: tenorcombo
tenorcombo = {
           \partcombine
           \autoBeamOff
           \tenor 
           \partcombine
            \autoBeamOff
           \tenormid
           \autoBeamOff
           \tenorhigh
         }


%part: tenorpaulroolzgregdroolz 
tenorpaulroolzgregdroolz = {
  \relative c' { \time 9/8
      \set Score.markFormatter = #format-mark-box-letters
      
      \mark \default %A
      r8 <d fis a>16 <d fis a> r8 <d fis a>16 <d fis a> r8 <d fis a>16 <d fis a> <d fis a>8 <d fis a>16 <d fis a> <d fis a> <d fis a> |
      r8 <ees g bes>16 <ees g bes> r8 a,16 a c8 ees d <d fis a>16 <d fis a> <d fis a> <d fis a> |
      r8 <d fis a>16 <d fis a> r8 <d fis a>16 <d fis a> r8 <d fis a>16 <d fis a> <d fis a>8 <d fis a>16 <d fis a> <d fis a> <d fis a> |
      r8 <ees g bes>16 <ees g bes> r8 a,16 a c8 ees d <d fis a>16 <d fis a> <d fis a> <d fis a> |
      \break
      \mark \default %B
      \repeat volta 2 {
        r8 <d f a>16 <d f a> r8 <d f a>16 <d f a> r8 <d f a>16 <d f a> <d g bes>8 <d g bes>16 <d g bes> <d g bes> <d g bes> |
      r8 <d g bes>16 <d g bes> r8 <d g bes>16 <d g bes> r8 <d g bes>16 <d g bes> <d f a> <d f a> <d f a> <d f a> <d f a> <d f a> |
        r8 <d f a>16 <d f a> r8 <d f a>16 <d f a> r8 <d f a>16 <d f a> <d g bes>8 <d g bes>16 <d g bes> <d g bes> <d g bes> |
      r8 <d g bes>16 <d g bes> r8 <d g bes>16 <d g bes> r8 <d g bes>16 <d g bes> <d f a> <d f a> <d f a> <d f a> <d f a> <d f a> \break|
      }
      
      \mark \default %C
      \repeat volta 2 {
        r8 <d f a>16 <d f a> r8 <d f a>16 <d f a> r8 <d f a>16 <d f a> <d g bes>8 <d g bes>16 <d g bes> <d g bes> <d g bes> |
      r8 <d f a>16 <d f a> r8 <d f a>16 <d f a> r8 <d f a>16 <d f a> <d f a> <d f a> <d f a> <d f a> <d f a> <d f a> |
        r8 <d g b?>16 <d g b> r8 <d g b>16 <d g b> r8 <d g b>16 <d g b> <d g b>8 <d g b>16 <d g b> <d g b> <d g b> |
      r8 <d g bes>16 <d g bes> r8 <d g bes>16 <d g bes> r8 <d g bes>16 <d g bes> <d f a> <d f a> <d f a> <d f a> <d f a> <d f a> |
        
    }
    \break
    \mark \default %D
    \repeat volta 2 {
      r8 <d g b>16 <d g b> r8 <d g b>16 <d g b> r8 <d g b>16 <d g b> <d g b>8 <d g b>16 <d g b> <d g b> <d g b> |
        r8 <d g b>16 <d g b> r8 <d g b>16 <d g b> r8 <d g b>16 <d g b> <d g b> <d g b> <d g b> <d g b> <d g b> <d g b> |
      r8 <d g b>16 <d g b> r8 <d g b>16 <d g b> r8 <d g b>16 <d g b> <d g b>8 <d g b>16 <d g b> <d g b> <d g b> |
        r8 <f aes c>16 <f aes c> r8 <f aes c>16 <f aes c> r8 <f aes c>16 <f aes c> <d g b> <d g b> <d g b> <d g b> <d g b> <d g b> |
    }
    \break
    \mark \default %E
    \repeat volta 2 {
      r8 <d g b>16 <d g b> r8 <d g b>16 <d g b> r8 <d g b>16 <d g b> <d f a>8 <d f a>16 <d f a> <d f a> <d f a> |
        r8 <d g b>16 <d g b> r8 <d g b>16 <d g b> r8 <d g b>16 <d g b> <d g b> <d g b> <d g b> <d g b> <d g b> <d g b> \break |
    }
    
    \repeat volta 4 {
      <d f aes>4\f^\markup {\tiny "4x, build harmony"} <f aes c> <aes c ees> <g b d>8 <g b d>4 |
        }
      
        \repeat volta 4 {
        <ees aes c>8\ff^\markup {\tiny "harmonize 3r<d g b> & 4th times"}[ <d g b> <d g b> <d g b>] <ees aes c>[ <d g b> <d g b>] <d g b>4
        }
        
        \repeat volta 4 {
          <d g b>8^\markup {\tiny "1st x only"} r r4 r r4. 
          }
          \set beatLength = #(ly:make-moment 1 8) \set beatGrouping = #'(2 2 2 3) \tempo 8=264
              \mark \default %F
              \repeat volta 2 {
                \repeat volta 2 {
				r8 <d g b> r <d g b> r <d g b> r <d g b> <d g b> |
				r <d g b> r <d g b> r <d fis a> r <d fis a> <d fis a> |
				r <d g b> r <d g b> r <d g b> r <d g b> <d g b> |
				r <d g b> <d g b> <d g b> <d fis a> <d fis a> <d fis a> <d fis a> <d fis a> |
              }
                \break
              \mark \default %G
                
              r8 <d g b> r <d g b> r <d g b> r <d g b> <d g b> | 
			  r8 <d g b> r <d g b> r <d g b> r <d g b> <d g b> |
                bes'8 a g bes a g bes a g | 
				r8 <d fis a> r <d fis a> r <d fis a> r <d fis a> <d fis a> \break|
              r8 <d fis a> r <d fis a> r <d fis a> r <d fis a> <d fis a> | 
			  r8 <d fis a> r <d fis a> r <d fis a> r <d fis a> <d fis a> |
                a'8 g fis a g fis a g fis | 
				r8 <ees g c> r <ees g c> r <ees g c> r <ees g c> <ees g c> \break|
              r8 <ees g c> r <ees g c> r <ees g c> r <ees g c> <ees g c> | 
			  r8 <fis a ees'> r <fis a ees'> r <fis a ees'> r <fis a ees'> <fis a ees'> |
                r8 <g c ees> r <g c ees> r <g c ees> r <fis a d> <fis a d> |  
				r8 <fis a d> r <fis a d> r <fis a d> r <fis a d> <fis a d> \break|
            }
            \alternative {
              { 
                  \repeat volta 4 { c16^\markup { \italic "4x" } d d d d8 d ees fis fis ees d^\markup "To F"| }
                  }
                  
                  { \break        
                    \repeat volta 8 { 
                    r1^\markup { \italic "solo (open)" } r8    
                             }
                     
                     c8. d16 ees8 fis g a bes a g | fis8. g16 a8 bes b c d ees fis | d-^ r8 r4 r4 r4. |
                     \bar "||"
                   }
                   }
                 }
             }

%layout
%{
\book { \header { poet = "Melody - C" }
	\score { <<
	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff {	
		\melody	
	}
	>> }
}
%}
%{
\book { \header { poet = "Melody - Bb" }
	\score { << 
	\transpose c d \new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { \transpose c d 
		\melody	
	}
	>> }
}

\book { \header { poet = "Melody - Eb" }
    \score { <<
	\transpose c a \new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { \transpose c a 	
		\melody	
	}
	>> }
}
%}
\book { \header { poet = "Melody - Eb" }
    \score { <<
      \new ChordNames { \set chordChanges = ##t \changes }
        \new Staff {   
                \melody 
        }
               \new Staff {   
             %{    \new Voice <<
                 { \tenor }
               
                 { \tenormid }
               
                 { \tenorhigh }
               >> %}
			   \tenorpaulroolzgregdroolz
               }
        >> }
}

\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 8 = 176 
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trumpet"
		\melody
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trombone"		
  \tenor

	}
        \unfoldRepeats  \new Staff { \set Staff.midiInstrument = #"trombone"
            \tenormid
          }
         \unfoldRepeats  \new Staff { \set Staff.midiInstrument = #"trombone"
            \tenorhigh
          }
      >> 
    \midi { }
  } 
}

