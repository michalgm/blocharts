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
        g4. fis8 es4. d8 | d4. es8 d8 c8 d4
	  }
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
    }

%part: tenor
tenor =  \relative c'' {
  \repeat volta 2 {
    d4 r8 a8 c4 es4 | r8 d8 r8 a8 c4 es4 | 
    d4 r8 a8 c4 d4 | es8 es8 es8 r8 c8 c8 c8 r8 }
  \repeat volta 2 {
    r4 <d fis>8 <d fis>8 r8 <d fis>8 <d fis>8 <d fis>8 |
    r4 <d fis>8 <d fis>8 r8 <d fis>8 <d fis>8 <d fis>8 |
    r4 <c es>8 <c es>8 r8 <c es>8 <c es>8 <c es>8 |
    r4 <d fis>8 <d fis>8 r8 <d fis>8 <d fis>8 <d fis>8 }
  \repeat volta 2 {
    r4 <d fis>8 <d fis>8 r8 <d fis>8 <d fis>8 <d fis>8 |
    r4 <d fis>8 <d fis>8 r8 <d fis>8 <d fis>8 <d fis>8 |
    c2 cis2 |
    r4 <d fis>8 <d fis>8 r8 <d fis>8 <d fis>8 <d fis>8 }
}

