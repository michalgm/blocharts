
\version "2.12.2"

\header {
	encodingdate = "2010-03-18"
		title = "Opa Cupa"
}

%	\paper {
	%	  page-count = 1 
		%	}

		%part: melody
		melody =  \relative c'' { \key c \minor \time 4/4  
			\set Score.markFormatter = #format-mark-box-letters
				\override Score.RehearsalMark #'break-align-symbols = #'(clef)

				\mark \default %A
				\repeat volta 2 {
					b16  c16 c16 c16  g8  c16 c16  c8  g8  c16  c16 bes16 a16  | 
						bes16  bes16 bes16 bes16  g8  bes16 bes16  bes8  g8  bes16  bes16 a16 g16  | 
						a16  ais16 b16 c16  bes16  a16 g16 fis16  g8  fis8  es16  es16 es16 d16  | 
						g16  fis16 es16 d16  c8  d16 es16  d16  d16 d16 g,16  g8 r8 |
				}
			\break

				\mark \default %B
				\repeat volta 2 {
					d'16  es16 es16 es16  c8  es16 es16  es8  c8  es16  es16 d16 c16  |
						f16  f16 f16 f16  d8  f16 f16  f16  e16 f16 e16  f16  f16 es16 d16  | 
						d16  es16 es16 es16  c8  d16 es16  es16  c16 d16 es16  fis16
						fis16 fis16 fis16  | 
						d16  es16 es16 d16  c16  d16 es16 c16  d16  d16 d16 g,16  g8 r8 |
				}
			\break

				\mark \default %C
				bes'8  a16 a16  bes8  a8  bes8  a8  g16  g16 g16 g16  |
				fis8  g16 g16  g8  fis8  g8  fis8  es16  es16 es16 es16  | 
				c8  d16 es16  es8  es8  f8  es8  es16  es16 es16 d16  | 
				c8  d16 es16  d8  d8  d8  d8 d8  r8 | 
				\break

				\mark \default %D
				c8  c8 d8 es8  f8  es8 ~  es4 | 
				c8  c8 d8 es8  f8  es8 ~  es4 | 
				c8  c'8 bes8 a8  bes8  a8  g16  g16 g16 fis16  | 
				d16  es16 es16 d16  c8  d16 es16  d16  d16 d16 d16  d4 |
				\break

				\mark \default %E
				\repeat volta 2 {
					f2 f8 _>  es8 d8 c8  | 
						r8 es16  es16  es8  es8  f8  es8 d8 c8  |
						c8  c'8 bes8 a8  bes8  a8  g16  g16 g16 fis16  |
						d16  es16 es16 d16  c8  d16 es16  d16  d16 d16 d16  d4 |
				}
			\break

				\mark \default %F
				\repeat volta 2 {
					c8  g'16 g16  g8  g8  g8  g8  g16  g16 g16 fis16  | 
						fis8  fis16 fis16  fis8  fis8  g16  g16 g16 fis16  es16  es16 es16 d16  | 
						c8  d16 es16  es8  es16 es16  f8  es8  es16  es16 es16 d16  | 
						c8  d16 es16  d8  d8  d8  d8  d4 |
				}
		}

%part: tenor
tenor =  \relative c { \key c \minor \time 4/4  
	\set Score.markFormatter = #format-mark-box-letters
		\override Score.RehearsalMark #'break-align-symbols = #'(clef)

		\break \mark \default %A
		\repeat volta 2 {
			r8 <ees g c> r <ees g c> r <ees g c> r <ees g c> |
			r <ees g c> r <ees g c> r <ees g c> r <ees g c> |
			r <ees g c> r <ees g c> r <ees aes c> r <ees aes c> |
			r <d fis d'> r <d fis c'> r <d g b> r <d g b> |
		}

        \break \mark \default %B
		\repeat volta 2 {
			<ees g c>4-- <ees g c>8 <ees g c>4-- <ees g c>8 <ees g c>4-- |
			<d f a>4-- <d f a>8 <d f a>4-- <d g b>8 <d g b>4-- |
			r8 <ees g c> r <ees g c> r <ees aes c> r <ees a c> |
			r <d fis d'> r <d fis c'> r <d g b> r <d g b> |
		}

        \break \mark \default %C
		r8 <ees g c> r <ees g c> r <ees g c> r <ees g c> |
		r8 <ees g c> r <ees g c> r <d g b> r <d g b> |
		r <ees g c> r <ees g c> r <ees aes c> r <ees aes c> |
		r <d fis d'> r <d fis c'> r <d g b> r <d g b> |

        \break \mark \default %D
		r8 <ees g c> r <ees g c> r <d g b> r <d g b> |
		r8 <ees g c> r <ees g c> r <d g b> r <d g b> |
		r <ees g c> r <ees g c> r <ees aes c> r <ees aes c> |
		r <d fis d'> r <d fis c'> r <d g b> r <d g b> |

        \break \mark \default %E
		\repeat volta 2 {
			<f aes c>2 <f aes c>8 <ees g c> <d f d'> <c ees ees'> |
			r8 <ees g c> r <ees g c> r <d g b> r <d g b> |
			r <ees g c> r <ees g c> r <ees aes c> r <ees aes c> |
			r <d fis d'> r <d fis c'> r <d g b> r <d g b> |
		}

        \break \mark \default %F
		\repeat volta 2 {
			r8 <ees g c> r <ees g c> r <ees g c> r <ees g c> |
			r <d fis d'> r <d fis c'> r <d g b> r <d g b> |
			r <ees g c> r <ees g c> r <ees aes c> r <ees aes c> |
			r <d fis d'> r <d fis c'> r <d g b> r <d g b> |
		}

}

%part: changes
changes =  \chordmode {

	\mark \default %A
		c1:m | c:m | 
		c4:m c:m/bes aes2 | d2:7 g:7 |

		\mark \default %B
		c1:m | d2:m g:7 | 
		c4:m c:m/bes aes c:dim  | d2:7 g:7 |

		\mark \default %C
		c1:m | c2:m g:7 | 
		c4:m c:m/bes aes2 | d2:7 g:7 |

		\mark \default %D
		c2:m g:7 | c:m g:7 | 
		c4:m c:m/bes aes2 | d2:7 g:7 |

		\mark \default %E
		f2:m g:7 | c:m g:7 |
		c4:m c:m/bes aes2 | d2:7 g:7 |


		\mark \default %F
		c1:m | d2:7 g:7 |
		c4:m c:m/bes aes2 | d2:7 g:7 |

}

%{ The score definition
	\new Staff <<
		\context ChordNames = "Changes" \changes
		\context Staff <<
		\context Voice = "Melody" { \melody }
	>>
		>>
		%}

		%layout
		\book {
			\score { <<
				\tempo  4 = 100 
					\new ChordNames { \set chordChanges = ##t \changes }
				\new Staff {
					\clef treble
						\melody
				}
				\new Staff {
					\clef treble
						\tenor
				}
				>>
			}
		}


