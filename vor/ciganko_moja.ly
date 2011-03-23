\version "2.12.2"

\header {
    title = "Cigonko Moja"
	copyright = "4/22/10"
    }

%{ SOLO BACKING (WORK IT IN)
from "ciganko_solo.ly"
	{ d4-. r8 fis-. ees4-. fis-. | r8 c-. ees-. fis-. g4-- fis4-. }
	  \\
	{  a4-. r8 d-. c4-. d-. | r8 a-. c-. d-. ees4-- d4-.  }

from "ciganko_solo_backing.ly" (finale)
        <a d>4 _. r8 <d fis>8 _. <c es>4 _. <d fis>4 _. | 
        r8 <a c>8 _. <c es>8 _. <d fis>8 _. <es g>4 _- <d fis>4 _. }
	%}

%part: melody
melody =  \relative c'' {
  \break \mark \default %A
    \repeat volta 2 {
        g4 g8 fis8 es4 es8 d8 | d2 fis8 g8 a4 | 
        fis8 g8 g8 fis8 es4 es8 d8 | d4 fis8 g8 a8 fis8 g8 es8 | 
        g4 g8 fis8 es4 es8 d8 | d2 fis8 g8 a4 | 
        fis8 g8 g8 fis8 es4 es8 d8 | d4. es8 d8 c8 d4 
	  }
    \break \mark \default %B
    \repeat volta 2 {
        r4 fis8 g8 a4 a4 | a4 a4 a4 g4 | 
        c2 bes2 | a4. g8 fis8 g8 a4 
	  }
    \break \mark \default %c
    \repeat volta 2 {
        g4. fis8 es4. d8 | d2 fis8 g8 a4 | 
        g4. fis8 es4. d8 | d4. ^"repeat 4x last time" es8 d8 c8 d4^"D. C. 3x" 
	  }
     
      R1^"Solo (variable length)"

    \break \mark \default %D
    \repeat volta 2 {
        g4   r8 d8 f4 as4 | r8 g4 d8 f4 as4 | 
        g4 r8 d8 f4 g4 | as8 as8 as4 f8 f8 f4 
	  }
    \break \mark \default %E
    \repeat volta 2 {
        r8 g8 b8 c8 d4 d4 | \times 2/3  { es8 d8 c8 } d4 \times 2/3 { es8 d8 c8 } d4 | 
        r8 g,8 as8 b8 c4 c4 | \times 2/3  { d8 c8 b8 } c4 \times 2/3 { d8 c8 b8 } c4 | 
        r4 g8 as8 as4 as4 | g8 as8 as8 g8 f8 g8 f4 | c'8 b8 as8 b8 g8 as8 as8 g8 
	  }
      \alternative { 
        { g4 g8 g8 b8 c8 d4 } 
        { | g,4 as8 g8 g8 f8 g4 } 
      } 
	
    \break \mark \default %F
	\repeat volta 4 {
        | 
        c8 b8 as8 b8 g8 as8 as8 g8 }
    \alternative { 
        { g4 g8 g8 b8 c8 d4 }
        { g,4 b8 c8 d8 b8 c8 as8 }
        { g4 g8 g8 b8 c8 d4 }
        { g,4 as8 g8 g8 f8 g4 } 
    }
    \repeat volta 4 {
        | 
        c8 b8 as8 b8 g8 as8 as8 g8 }
    \alternative {
        { g4 g8 g8 b8 c8 d4 }
        { g,8 b8 r8 c8 r8 cis8 d4 }
        { g,4 g8 g8 b8 c8 d4 }
        { g,4 as8 g8 g8 f8 g4 }
    } 
    \break \mark \default %G
    \repeat volta 4 {
        | 
        d8 g8 r8 g8 r8 g8 r8 g8 | 
        d8 as'8 r8 as8 r8 as8 r8 as8 | 
        c,8 f8 r8 f8 r8 f8 r8 f8 | 
        \times 2/3  {
            c'8 c8 b8 }
        as8 b8 \times 2/3 {
            as8 as8 g8 }
        g4 }
    }

%part: tenor
tenor = \relative c {
    \break \mark \default %A
    \repeat volta 2 {
      r8 <d fis a>16 <d fis a> <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
      r8 <d fis a>16 <d fis a> <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
      r8 <d fis a>16 <d fis a> <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
      <d fis a>4 r4 r2 |
      r8 <d fis a>16 <d fis a> <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
      r8 <d fis a>16 <d fis a> <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
      r8 <c ees g>16 <c ees g> <c ees g>8 <c ees g> r <c ees g> <c ees g> <c ees g> |
      r8 <d fis a>16 <d fis a> <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    }
    \break \mark \default %B
    \repeat volta 2 {
      r8 <d fis a>16 <d fis a> <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
      r8 <d fis a>16 <d fis a> <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
      <c ees g>2 <cis e gis>2 | 
      <d fis a>8 <d fis a>16 <d fis a> <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    }
    \break \mark \default %C
    \repeat volta 2 {
      r8 <d fis a>16 <d fis a> <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
      r8 <d fis a>16 <d fis a> <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
      r8 <c ees g>16 <c ees g> <c ees g>8 <c ees g> r <c ees g> <c ees g> <c ees g> |
      r8 <d fis a>16 <d fis a> <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    }
    R1^"Solo (variable length)"

    \break \mark \default %D
    \repeat volta 2 {
      g4 r8 d8 f4 as4 | r8 g4 d8 f4 as4 | 
      g4 r8 d8 f4 g4 | as8 as8 as4 f8 f8 f4 
    }
    \break \mark \default %E
    \repeat volta 2 {
      <g b d>4 r4 r2 |
      r8 <g b d>16 <g b d> <g b d>8 <g b d> r <g b d> <g b d> <g b d> |
      r8 <f aes c>16 <f aes c> <f aes c>8 <f aes c> r <f aes c> <f aes c> <f aes c> |
      r8 <f aes c>16 <f aes c> <f aes c>8 <f aes c> r <f aes c> <f aes c> <f aes c> |
      r8 <f aes c>16 <f aes c> <f aes c>8 <f aes c> r <f aes c> <f aes c> <f aes c> |
      r8 <f aes c>16 <f aes c> <f aes c>8 <f aes c> r <f aes c> <f aes c> <f aes c> |
      r8 <g b d>16 <g b d> <g b d>8 <g b d> r <g b d> <g b d> <g b d> |
    }
    \alternative {
      { r8 <g b d>16 <g b d> <g b d>8 <g b d> r <g b d> <g b d> <g b d> |}
      { r8 <g b d>16 <g b d> <g b d>8 <g b d> r <g b d> <g b d> <g b d> |}
    }
    \break \mark \default %F
    \repeat volta 4 {
      r8 <g b d>16 <g b d> <g b d>8 <g b d> r <g b d> <g b d> <g b d> |
    }
    \alternative {
      {r8 <g b d>16 <g b d> <g b d>8 <g b d> r <g b d> <g b d> <g b d> |}
      {<g b d>4 r r2 }
      {r8 <g b d>16 <g b d> <g b d>8 <g b d> r <g b d> <g b d> <g b d> |}
      {r8 <g b d>16 <g b d> <g b d>8 <g b d> r <g b d> <g b d> <g b d> |}
    }
    \repeat volta 4 {
      r8 <g b d>16 <g b d> <g b d>8 <g b d> r <g b d> <g b d> <g b d> |
    }
    \alternative {
      {r8 <g b d>16 <g b d> <g b d>8 <g b d> r <g b d> <g b d> <g b d> |}
      {g8 b8 r8 c8 r8 cis8 d4 }
      {r8 <g, b d>16 <g b d> <g b d>8 <g b d> r <g b d> <g b d> <g b d> |}
      {r8 <g b d>16 <g b d> <g b d>8 <g b d> r <g b d> <g b d> <g b d> |}
    }
    \break \mark \default %G
    \repeat volta 4 {
      
      <g b d>8^\markup  {\tiny "whole notes 3rd & 4th x"} <g b d>8 r4 r2 | 
      <as c es>8 <as c es>8 r4 r2 | 
      <f aes c>8 <f aes c>8 r4 r2 | 
      r8 <g b d>16 <g b d> <g b d>8 <g b d> r <g b d> <g b d> <g b d> |
    }
  }
  
%part: bass
bass =  \relative d {
    \break \mark \default %A
    \repeat volta 2 {
        d4 r4 -"break 1st x only" r2 | 
        d4. fis4. a4 | d,4. fis4. a4 | 
        d,4 r4 r2 | d4. fis4. a4 | 
        d,4. fis4. a4 | d,4. fis4. a4 | 
        d,4. fis4. a4 }
    \break \mark \default %B
    \repeat volta 2 {
        | 
        d,4. fis4. a4 | 
        d,4. fis4. a4 | 
        c,2 cis2 | 
        d4. fis4. a4 }
    \break \mark \default %C
    \repeat volta 2 {
        | 
        d,4. fis4. a4 | 
        d,4. fis4. a4 | 
        d,4. fis4. a4 | 
        d,4. fis4. a4 }
    | 
    R1^"Solo (variable length)"

    \break \mark \default %D
    \repeat volta 2 {
        | 
        g4 ^"D. C. 3x" r8 d8 f4 as4 | 
        r8 g4 d8 f4 as4 | 
        g4 r8 d8 f4 g4 | 
        as8 as8 as4 f8 f8 f4 
    }
      
    \break \mark \default %E
    \repeat volta 2 {
        | 
        g,4 r4 r2 | 
        g4. b4. d4 | 
        f,4. as4. c4 | 
        f,4. as4. c4 | 
        f,4. as4. c4 | 
        f,4. as4. c4 | 
        g4. b4. d4 }
    \alternative { 
        { g,4. b4. d4 }
        { g,4. b4. d4 }
    } 
    \break \mark \default %F
    \repeat volta 4 {
        | 
        g,4. b4. d4 
    }
    \alternative { 
      { g,4. b4. d4 }
      { g,4 r4 r2 }
      { g4. b4. d4 }
      { g,4. b4. d4 }
    } 
    \repeat volta 4 { 
        g,4. b4. d4 
    }
    \alternative { 
      { g,4. b4. d4 }
      { g,8 b8 r8 c8 r8 cis8 d4 }
      { g,4. b4. d4 }
      { g,4. b4. d4 }
    }
    \break \mark \default %G
    \repeat volta 4 {
        | 
        g,8 g8 r4 r2 | 
        as8 as8 r4 r2 | 
        f8 f8 r4 r2 | 
        g4. b4. d4 }
    }
%part: changes
changes = \chordmode { 
  %A
  \repeat volta 2 {
      d1 | d | d | d |
      d | d | c:m | d |
    }   
  %B 
  \repeat volta 2 {
    d1 | d | c:m | d |
  }
  %C
  \repeat volta 2 {
    d1 | d | c:m | d |
  }
  R1
  %D
  \repeat volta 2 {
    g| g | g | g
  }
  %E
  \repeat volta 2 {
    g | g | f:m | f:m | f:m | f:m | g | g | g 
  }
  %F
    g | g | g | g | g |
    g | g | g | g | g |

  %G 
    g1 | aes | f:m | g    
}
    
    
    %layout
    \book { \header { poet = "Score" }
      \paper { #(set-paper-size "letter") }
        \score { 
          << 
            \new ChordNames { \set chordChanges = ##t \changes }
            \new Staff { 
              \melody
            }
            \new Staff { 
              \tenor
            }
            \new Staff { 
              \bass
            }
          >> 
        } 
      }
      
    \book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 170 
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"alto sax"
		\melody
	}
    \unfoldRepeats  \new Staff { \set Staff.midiInstrument = #"trombone"
      \tenor
    }
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"tuba"
		\bass
	}
      >> 
    \midi { }
  } 
}


