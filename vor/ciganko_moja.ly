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
    \repeat volta 2 {
        g4 g8 fis8 es4 es8 d8 | d2 fis8 g8 a4 | 
        fis8 g8 g8 fis8 es4 es8 d8 | d4 fis8 g8 a8 fis8 g8 es8 | 
        g4 g8 fis8 es4 es8 d8 | d2 fis8 g8 a4 | 
        fis8 g8 g8 fis8 es4 es8 d8 | d4. es8 d8 c8 d4 
	  }

    \repeat volta 2 {
        r4 fis8 g8 a4 a4 | a4 a4 a4 g4 | 
        c2 bes2 | a4. g8 fis8 g8 a4 
	  }
	 
    \repeat volta 2 {
        g4. fis8 es4. d8 | d2 fis8 g8 a4 | 
        g4. fis8 es4. d8 | d4. ^"repeat 4x last time" es8 d8 c8 d4^"D. C. 3x" 
	  }
     
    R1^"Solo (variable length)" 
    \repeat volta 2 {
        g4   r8 d8 f4 as4 | r8 g4 d8 f4 as4 | 
        g4 r8 d8 f4 g4 | as8 as8 as4 f8 f8 f4 
	  }
	  
    \repeat volta 2 {
        r8 g8 b8 c8 d4 d4 | \times 2/3  { es8 d8 c8 } d4 \times 2/3 { es8 d8 c8 } d4 | 
        r8 g,8 as8 b8 c4 c4 | \times 2/3  { d8 c8 b8 } c4 \times 2/3 { d8 c8 b8 } c4 | 
        r4 g8 as8 as4 as4 | g8 as8 as8 g8 f8 g8 f4 | c'8 b8 as8 b8 g8 as8 as8 g8 
	  }
      \alternative { {
            g4 g8 g8 b8 c8 d4 } { | g,4 as8 g8 g8 f8 g4 } } 
	
	\repeat volta 2 {
        | 
        c8 b8 as8 b8 g8 as8 as8 g8 }
    \alternative { {
            | 
            g4 g8 g8 b8 c8 d4 }
        {
            | 
            g,4 b8 c8 d8 b8 c8 as8 }
        {
            | 
            g4 as8 g8 g8 f8 g4 }
        } \repeat volta 2 {
        | 
        c8 b8 as8 b8 g8 as8 as8 g8 }
    \alternative { {
            | 
            g4 g8 g8 b8 c8 d4 }
        {
            | 
            g,8 b8 r8 c8 r8 cis8 d4 }
        {
            | 
            g,4 as8 g8 g8 f8 g4 }
        } | 
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

%part: bass
bass =  \relative d {
    \repeat volta 2 {
        d4 r4 -"break 1st x only" r2 | 
        d4. fis4. a4 | d,4. fis4. a4 | 
        d,4 r4 r2 | d4. fis4. a4 | 
        d,4. fis4. a4 | d,4. fis4. a4 | 
        d,4. fis4. a4 }
    \repeat volta 2 {
        | 
        d,4. fis4. a4 | 
        d,4. fis4. a4 | 
        c,2 cis2 | 
        d4. fis4. a4 }
    \repeat volta 2 {
        | 
        d,4. fis4. a4 | 
        d,4. fis4. a4 | 
        d,4. fis4. a4 | 
        d,4. fis4. a4 }
    | 
    R1 \repeat volta 2 {
        | 
        g4 ^"D. C. 3x" r8 d8 f4 as4 | 
        r8 g4 d8 f4 as4 | 
        g4 r8 d8 f4 g4 | 
        as8 as8 as4 f8 f8 f4 }
    \repeat volta 2 {
        | 
        g,4 r4 r2 | 
        g4. b4. d4 | 
        f,4. as4. c4 | 
        f,4. as4. c4 | 
        f,4. as4. c4 | 
        f,4. as4. c4 | 
        g4. b4. d4 }
    \alternative { {
            | 
            g,4. b4. d4 }
        {
            | 
            g,4. b4. d4 }
        } \repeat volta 2 {
        | 
        g,4. b4. d4 }
    \alternative { {
            | 
            g,4. b4. d4 }
        {
            | 
            g,4 r4 r2 }
        {
            | 
            g4. b4. d4 }
        } \repeat volta 2 {
        | 
        g4. b4. d4 }
    \alternative { {
            | 
            g,4. b4. d4 }
        {
            | 
            g,8 b8 r8 c8 r8 cis8 d4 }
        {
            | 
            g,4. b4. d4 }
        } | 
    \repeat volta 4 {
        | 
        g,8 g8 r4 r2 | 
        as8 as8 r4 r2 | 
        f8 f8 r4 r2 | 
        g4. b4. d4 }
    }

%{
\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 170 
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

