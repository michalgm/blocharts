\version "2.12.2"
% automatically converted from PME.xml

\header {
    encodingdate = "2010-02-09"
title = "Romani Dream"
    }

%part: melody
melody =  \relative d' {
   \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'break-align-symbols = #'(clef)
                \key g \minor \time 2/2 
			\repeat volta 2 {
			   d4 r8 fis8 r4 a4 | 
			   r8 c8 r8 d8 es8  es8  d4 |
			   d,8  d8 d8 fis8  fis8  fis8 a8 a8  |
			   a8  d8 es8 c8  es8  es8  d4 
			}
		   \repeat volta 2 {
			   d,8  fis8  r8 a8 r8 c8 r8 d8 |
			   d8  es8 es8 d8  d8  c8  d4 |
			   d,8  fis8  r8 a8 r8 c8 r8 d8 |
			  d8  fis8 es8 d8  d8  c8  d4 |
			  }

\break

\mark \default %A
		\repeat volta 2 {
			d4 d8  d8  c4 c8  c8  |
			r8 es8 fis8  es8  d8  d8 d8 d8  |
		}
            \alternative { 
				{ 
                    d8  d8 d8 d8  c4 c8  c8  |
                    r8 es8 fis8  es8  d8  d8  d4 |
				}
                { 
                    d8  d8 d8 d8  c4 c8  c8  |
				}
             } 
		r8 es8 fis8  es8  d8  d8 d8 d8  \bar "||"
			\break

\mark \default %B
            \repeat volta 2 {
                d,8 -"2nd x" r8 g8 [ a8 ] a4 a8 [ a8 ] |
                fis8 [ g8 a8 fis8 ] g8 [ a8 fis8 es8 ] |
                d8 [ d8 d'8 c8 ] c8 [ bes8 bes8 a8 ] |
                a8 [ g8 g8 fis8 ] g8 [ a8 fis8 fis8 ] |
                fis8 r8 g8 [ a8 ] a4 a8 [ a8 ] |
                fis8 [ g8 g8 a8 ] fis8 [ fis8 es8 d8 ] |
                \times 2/3  { c8 [ c8 c8 ] } \times 2/3  { d8 [ d8 d8 ] }
                \times 2/3  { es8 [ es8 es8 ] } fis8 [ g8 ] |
			}
            \alternative { 
				{
                    fis8 [ fis8 es8 d8 ] d8 [ c8 d8 c8 ] |
				}
                {
                    fis8 [ fis8 es8 d8 ] d8 [ c8 ] d4 |
				}
			} \bar "||"

	\break
	\mark #1
            \repeat volta 2 {
                d'4 d8 [ d8 ] c4 c8 [ c8 ] |
                r8 es8 fis8 [ es8 ] d8 [ d8 ] d4 }
            \alternative { {
                    d8 [ d8 d8 d8 ] c4 c8 [ c8 ] |
                    r8 es8 fis8 [ es8 ] d8 [ d8 ] d4 }
                {
                    d8 [ d8 d8 d8 ] c4 c8 [ c8 ] }
                } |
            r8 es8 fis8 [ es8 ] d8 [ d8 ] d4
			\bar "||"

\break
\mark #3 %C
            \repeat volta 2 {
                \times 2/3  { d,8 [ d8 d8 ] } d4 \times 2/3 { d'8 [ d8 d8 ] } d4 |
                \times 2/3  { d8 [ d8 d8 ] } d4 \times 2/3 { d8 [ d8 d8 ] } d4 |
                a8 [ a8 a8 c8 ] bes8 [ c8 bes8 a8 ] |
                g8 _. r8 r4 r2 |
                \times 2/3  { a8 [ g8 fis8 ] } g8 [ a8 ] bes8 [ bes8 a8 g8 ] |
                \times 2/3  { fis8 [ fis8 es8 ] } fis8 [ g8 ] a8 [ a8 g8 fis8 ] |
                \times 2/3  { es8 [ es8 d8 ] } es8 [ fis8 ] g8 [ g8 fis8 es8 ] }
            \alternative { {
                    d8 [ c8 d8 es8 ] fis8 [ g8 ] a4 }
                {
                    d,8 [ es8 es8 d8 ] d8 [ c8 ] d4 }
                } \bar "||"

			\break
			\mark \default %D
            \repeat volta 2 {
                \times 2/3  { a'8 [ g8 fis8 ] } g8 [ a8 ] bes8 [ bes8 a8 g8 ] |
                \times 2/3  { fis8 [ fis8 es8 ] } fis8 [ g8 ] a8 [ a8 g8 fis8 ] |
                \times 2/3  { es8 [ es8 d8 ] } es8 [ fis8 ] g8 [ g8 fis8 es8 ] }
            \alternative { {
                    d8 [ c8 d8 es8 ] fis8 [ g8 ] a4 }
                {
                    d,8 [ es8 es8 d8 ] d8 [ c8 ] d4 }
                {
                    d8 [ es8 es8 d8 ] d8 [ c8 d8 c8 ] }
                } \bar "||"

			\mark "Solos"
                \repeat volta 2 {
                  d'4 d8 d c4 c8 c | r ees fis ees d d d d 
                }
                \alternative {
                  { d8 d d d c4 c8 c | r ees fis ees d d d4 | }
                  { d8 d d d c4 c8 c | r ees fis ees d d d  d | \break }
                }

                \break
			  \mark \default %E
            \repeat volta 2 {
                d,8 r8 fis8 [ g8 ] a4 a4 |
                a8 [ bes8 bes8 a8 ] g8 [ fis8 ] g4 |
                \times 2/3  { b4 g4 fis4 } \times 2/3  { g4 a4 b4 } |
                c8 [ d8 d8 c8 ] c8 [ b8 ] c4 |
                r4 d8 [ es8 ] es4 es4 |
                d8 [ es8 es8 d8 ] c8 [ b8 ] c4 |
                \times 2/3  { fis4 fis4 es4 } es8 [ es8 es8 d8 ] }
            \alternative { {
                    d8 [ es8 es8 d8 ] d8 [ c8 d8 d8 ] }
                {
                    d8 [ es8 es8 d8 ] d8 [ c8 ] d4 }
                } 

			\break
		\mark \default %F
		\repeat volta 2 {
                fis8 [ es8 d8 fis8 ] es8 [ d8 fis8 es8 ] |
                d8 [ fis8 es8 d8 ] fis8 [ es8 d8 c8 ] |
                es8 [ d8 c8 es8 ] d8 [ c8 es8 d8 ] |
                c8 [ es8 d8 c8 ] es8 [ d8 c8 bes8 ] |
                c8 [ bes8 a8 c8 ] bes8 [ a8 bes8 a8 ] }
            \alternative { 
				{
                    \times 2/3  { fis8 [ fis8 fis8 ] }
                    \times 2/3  { g8 [ g8 g8 ] }
                    \times 2/3  { a8 [ a8 a8 ] }
                    \times 2/3  { bes8 [ bes8 bes8 ] }
				   | 
					\times 2/3  { c8 [ c8 c8 ] }
					\times 2/3  { d8 [ d8 d8 ] }
					\times 2/3  { es8 [ es8 es8 ] }
					\times 2/3  { fis8 [ fis8 fis8 ] }
					d1 ~ | d1 
				}
				{
					es4. d4. bes4 | g4. fis4. es4 |
					d1 ~ | d1 |
				}
			}
			\break
	\mark \default %G
    \repeat volta 2 {
        d8 [ d8 d8 fis8 ] fis8 [ fis8 a8 a8 ] |
        a8 [ bes8 bes8 a8 ] g8 [ fis8 ] es4 |
        es8 [ es8 es8 g8 ] g8 [ g8 bes8 bes8 ] |
        bes8 [ c8 c8 bes8 ] bes8 [ a8 ] g4 |
        c8 [ c8 c8 d8 ] d8 [ d8 ] es4 |
        r8 b8 c8 [ d8 ] es8 [ d8 ] c4 |
        fis8 [ fis8 fis8 es8 ] es8 [ es8 es8 d8 ] |
        d8 [ es8 es8 d8 ] d8 [ c8 ] d4 |
	}
    fis8 [ es8 d8 fis8 ] es8 [ d8 c8 bes8 ] |
    d8 [ c8 bes8 a8 ] c8 [ bes8 a8 g8 ] |
    g8 [ fis8 g8 c8 ] r8 bes8 r8 a8 |
    bes8 [ a8 bes8 es8 ] r8 d8 r8 c8 |
    c8 [ b8 c8 fis8 ] r8 es8 r8 d8 |
    d8 [ es8 es8 d8 ] d8 [ c8 ] d4 |
	
	\repeat volta 2 {
        d,4 r8 fis8 r4 a4 |
        r8 c8 r8 d8 es8 [ es8 ] d4 |
        d,8 [ d8 d8 fis8 ] fis8 [ fis8 a8 a8 ] |
        a8 [ d8 es8 c8 ] es8 [ es8 ] d4 |
	}
    d4 r4 r2 \bar "|."
    
}


% music pieces
%part: tenor
tenor = {
  \relative c' {
    \set Score.markFormatter = #format-mark-box-letters
    \override Score.RehearsalMark #'break-align-symbols = #'(clef)
       \key g \minor \time 2/2 
    \repeat volta 2 {
      d4 r8 fis8 r4 a4 | r8 c8 r8 d8 es8  es8  d4 | 
      d,8  d8 d8 fis8  fis8  fis8 a8 a8  | a8  d8 es8 c8  es8  es8  d4 |
    }
    
    \repeat volta 2 {
      d4 r8 d r4 d | r8 d r d ees4-- d | 
      d4 r8 d r4 d | r8 fis ees d d c d4 | \break 
    }
    
    \mark \default %A
    \repeat volta 2 {
      d4. c4. a4~ | a8 c4 d8 ees ees d4 | 
    }
      \alternative {
         { d4. c4. a4~ | a8 ees' fis ees d d d4 |  }
         { d4. c4. a4~ | a8 ees' fis ees d d d4 |  }
       }

    \break
    \mark \default %B
    \repeat volta 2 {
      <fis, a d>8 r8 r2. | <fis a d>1 | <g bes ees> | <ees g c>2 <g bes ees>4 <fis a d>~ |
      <fis a d>8 r8 r2. | <fis a d>1 | <ees g c> | 
    }
    \alternative {
      { <d fis a>2 <g bes ees>4 <fis a d>-- | }
      { <d fis a>2 <g bes ees>4 <fis a d>-- | }
      
    }
  
    \break
    \mark #1 %A
    \repeat volta 2 {
      d'4. c4. a4~ | a8 c4 d8 ees ees d4 | 
    }
		\alternative {
         { d4. c4. a4~ | a8 ees' fis ees d d d4 |  }
         { d4. c4. a4~ | a8 ees' fis ees d d d4 |  }
		}
    
    
    \break
    \mark #3 %C
    \repeat volta 2 {
		\times 2/3  { d,8 d8 d8 } d4 \times 2/3 { d8 d8 d8 } d4 | 
		\times 2/3  { d8 d8 d8 } d4 \times 2/3 { d8 d8 d8 } d4 |

      <fis a d>1\< | <g bes ees>8-.\f r r4 r2 |
      <g bes>4. <g bes>8 r <g bes> <g bes> <g bes> | <fis a>4. <fis a>8 r <fis a> <fis a> <fis a> |
        <ees g>4. <d a'>8 <ees bes'> <d a'> <ees c'> <fis cis'> |
      }
      \alternative {
        {  <d d'>4 r r2 | }
        {  <d d'>4 r r2 | }
      }
      
     \break
      \mark \default %D
      \repeat volta 2 {
        <g bes>1 | <fis a> |
        <ees g>4. <d a'>8 <ees bes'> <d a'> <ees c'> <fis cis'> |
      }
      \alternative {
        {  <d d'>4 r r2 | }
        {  <d d'>4 r r2 | }
      }
      
      \break
      \mark "Solos"
      \repeat volta 2 {
        d'4 d8 d c4 c8 c | r ees fis ees d d d d 
      }
      \alternative {
        { d8 d d d c4 c8 c | r ees fis ees d d d4 | }
        { d8 d d d c4 c8 c | r ees fis ees d d d  d | \break }
      }
      
      \mark \default %E
      \repeat volta 2 {
	  	<fis, a d>8 r r4 r2 |
        <fis a d>1\<  |
        %\times 2/3 { <g b d>4\! <g b d> <g b d> } \times 2/3 { <d g b>4 <d g b> <d g b> } |
        \times 2/3 { <g b d>4\! <g b d> <d g b> } \times 2/3 { <g b d>4 <g b d> <d g b> } |
        <ees g c>8 r8 r4 r2 |
		r8 <ees g c>16 <ees g c> <ees g c>8 <ees g c> r8 <ees g c>16 <ees g c> <ees g c>8 <ees g c> |
		r8 <ees g c>16 <ees g c> <ees g c>8 <ees g c> r8 <ees g c>16 <ees g c> <ees g c>8 <ees g c> |
		r8 <fis a d>16 <fis a d> <fis a d>8 <fis a d> r8 <fis a d>16 <fis a d> <fis a d>8 <fis a d> |
	  }
      	\alternative { 
			{ r8 <fis a d>16 <fis a d> <fis a d>8 <fis a d> r8 <fis a d>16 <fis a d> <fis a d>8 <fis a d> | } 
			{ r8 <fis a d>16 <fis a d> <fis a d>8 <fis a d> r8 <fis a d>16 <fis a d> <fis a d>8 <fis a d> | } 
		}
 
      \break
      \mark \default %F
      \repeat volta 2 { 
		<d fis a>4^\markup { \tiny "1st note 8va 2nd & 4th times" } r8 <d fis a> r4 <d fis a> | r8 <d fis a> r4 <ees g bes>-- <d fis a> |
		<ees g bes> r8 <ees g bes> r4 <ees g bes> | r8 <ees g bes> r4 <ees g bes> <ees g bes> | <c ees g> r8 <c ees g> r4 <c ees g> |
		}
		\alternative { 
			{	
				 <c ees g>1~ \< | <c ees g> |
				\times 2/3 { fis8 \! fis fis } \times 2/3 { g8 g g }
				\times 2/3 { a8 a a } \times 2/3 { bes8 bes bes } | 
				\times 2/3 { c8 c c } \times 2/3 { d8 d d }
				\times 2/3 { es8 es es } \times 2/3 { fis8 fis fis } |
			}
			{
				<c, ees g>1~ \< | <c ees g> | 
				d4. \! ees fis4 | g4. fis ees4 |
			}
       }
      
      \break
      \mark \default %G
      \repeat volta 2 { 
	  	<d fis a>4. <d fis a> <d fis a>4 | r8 <d fis a> r4 <d fis a> <c ees g> |
		<ees g bes>4. <ees g bes> <ees g bes>4 | r8 <ees g bes> r4 <ees g bes> <ees g bes> |
		<ees g c>4. <fis a d> <ees g c>4-^ | r1 |
		r8 <fis a d>16 <fis a d> <fis a d>8 <fis a d> r8 <fis a d>16 <fis a d> <fis a d>8 <fis a d> |  
		r8 <fis a d>16 <fis a d> <fis a d>8 <fis a d> r8 <fis a d>16 <fis a d> <fis a d>8 <fis a d> |  
	  }
      
      \break
	  <d fis a>4. <d fis a>8~ <d fis a>2 | <d fis a>4. <ees g c>8~ <ees g c>2 |
	  <ees g c>8 <ees g c> r <ees g c> r2 | 
	  <ees g bes>8 <ees g bes> r <ees g bes> r2 | 
	  <ees g c>8 <ees g c> r <ees g c> r2 | 
		r8 <fis a d>16 <fis a d> <fis a d>8 <fis a d> r8 <fis a d>16 <fis a d> <fis a d>8 <fis a d> |  
      \break
      \repeat volta 2 {
        d4 r8 fis8 r4 a4 | r8 c8 r8 d8 es8  es8  d4 | 
        d,8  d8 d8 fis8  fis8  fis8 a8 a8  | a8  d8 es8 c8  es8  es8  d4 |
      }
      d4 r4 r2 \bar "|."
      
    }
    
  }


%part: changes
changes = \chordmode  {
r1 | r1 | r1 | r1 |
d1 | r1 | r1 | r1 |
%A
d1 | ees1 | d1 | c1:m | d1 | c1:m
%B
d1 | d1 | ees1 | ees1 | 
d1 | d1 | c1:m | c1:m | c1:m
%A1
d1 | ees1 | d1 | c1:m | d1 | c1:m
%C
d1 | d1 | d1 | ees1 | ees1 | 
d1 | c1:m | d1 | d1 |
%D
ees | d | c:m | d | d |
%Solos
d1 | ees1 | d1 | c1:m | d1 | c1:m
%E
d | d | g | c:m | c:m | c:m | d | d | d
%F
d | d | ees | ees | c:m | c:m | c:m | d | d | c:m | c:m | d | d
%G
d | d | ees | ees | c:m | c:m | d | d 
%H? 
d | d | d | ees | c:m | d | d | d | d | d | d
}

%layout
\book { \header { poet = "Score" }
  \paper { #(set-paper-size "letter") }
\score { 
  << 
    \tempo 4=160
       \new ChordNames { \set chordChanges = ##t \changes }
    \new Staff { \clef treble
      \melody
    }
    \new Staff { \clef treble
      \tenor
    }
  >> 
} 
%    \words
}

\book { \header { poet = "MIDI" }
  \score { 
    << \tempo 4 = 160 
      \unfoldRepeats  \new Staff { \set Staff.midiInstrument = #"trumpet"
        \melody
      }
      \unfoldRepeats  \new Staff { \set Staff.midiInstrument = #"trombone"
        \tenor
      }
    >> 
    \midi { }
  } 
}

