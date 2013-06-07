
\version "2.12.3"

\header {
  title = "La Vida Es Un Carnaval"
  composer = "As sung by Celia Cruz. Arranged by Andrew Snyder"
  copyright = "3/6/12"
}


%music pieces
%part: melody
melody = {
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'break-align-symbols = #'(clef)
  \override Score.RehearsalMark #'self-alignment-X = #LEFT  
  \transpose c bes
  {
    \relative c' {
      \set Score.markFormatter = #format-mark-box-letters
 
\mark \markup \box \bold "Intro (1)"

      \repeat volta 2 {
        \repeat percent 2 {  e,4 c'8 c c4 e,8 e  |  r c' c c c4 r  }
        \break
        \repeat percent 2 {    f,4 c'8 c c4 f,8 f  |  r c' c c c4 r   }  
      }
      
      \mark "D.S."
      <c e a>4 r2.  |  r1  |
      
      %VERSE
  \break \mark \markup \box \bold "Verse (2)"
      \repeat volta 2 {
        b4 c c b8 c~  |  c b c c d4 c  |  b c c r  |  c8 c c c d4 c  |
        \break        
        b c c a8 b  | c c4 c8 d4 c  |  c b r2  |   e4 d c b  |
      } 
      
  \break \mark \markup \box \bold "Chorus (3)"
      
      \repeat volta 2 {
        <a c>1~  |  <a c>4  <a c> <b d> <c e>  |  <a c>1~  |  <a c>4  <a c> <b d>8 <c e>4 <a c>8  |   <c e>4 <b d> <a c> r  |
        r  <a c>8 <b d> <c e> <b d> r  <a c> |  <c e>4 <b d> <a c> <b d> |
      }
      \alternative {
        { r4 <gis b> <a c> <b d>  }
        { <b d>2. r4 ^"D.C." }
      }
      
   \break \mark \markup {  \musicglyph #"scripts.segno"  \box \bold "Break (hits)"  }
   
      r4 
      <gis d' e>8 <gis d' e>8 <gis d' e>4 r  |  <gis d' e>8 <gis d' e>8 <gis d' e>4 <gis d' e>8 <gis d' e>8 r4 |
      <gis d' e>8 <gis d' e>8  r4  <gis d' e>8 <gis d' e>8  r4  |  <gis d' e>8 <gis d' e>8  r4  <gis d' e>8 <gis d' e>8  r4 
  \break \mark \markup \box \bold "Bridge (Salsa)"     
      \repeat volta 2 {     
        c4 d e r  |  r2. a,4  |  gis a b r  |  r1  |  c4 d e r   |  r r8 e, e e e4 |  e' e d4. c8~  |  c2  r2  |
      }
    }
  }
}

%part: backingTrumpet
backingTrumpet = {
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'break-align-symbols = #'(clef)
  \transpose c bes
  {
    \relative c' {
      \set Score.markFormatter = #format-mark-box-letters
     
     \mark \markup \box \bold "Intro (1)"
      \repeat volta 2 {
        \repeat percent 2 {  e,4 c'8 c c4 e,8 e  |  r c' c c c4 r  }
        \break
        \repeat percent 2 {    f,4 c'8 c c4 f,8 f  |  r c' c c c4 r   }  
      }
      
      \mark "D.S."
      <c e a>4 r2.  |  r1  |
      
      %VERSE
    \break \mark \markup \box \bold "Verse (2)"

    \repeat volta 2 {
        b4 c c b8 c~  |  c b c c d4 c  |  b c c r  |  c8 c c c d4 c  |
        \break        
        b c c a8 b  | c c4 c8 d4 c  |  c b r2  |   e4 d c b  |
      } 
      
  \break \mark \markup \box \bold "Chorus (3)"
      
      \repeat volta 2 {
        r4 c8 d c e r4  |  c8 d c e  r2  |  r4 a,8 a a4 e8 e  |  r c'4 b8 a4 r  |
        \break        
        r2. r8 a  |  b c b r r2  |  <gis e'>1 
      }
      \alternative {
        {  |  r1  }
        {  |  r1  ^"         D.C."  }
      }
      
       \break
   \break \mark \markup {  \musicglyph #"scripts.segno"  \box \bold "Break (hits)"  }
   r4  <gis d' e>8 <gis d' e>8 <gis d' e>4 r  |  <gis d' e>8 <gis d' e>8 <gis d' e>4 <gis d' e>8 <gis d' e>8 r4 |
      <gis d' e>8 <gis d' e>8  r4  <gis d' e>8 <gis d' e>8  r4  |  <gis d' e>8 <gis d' e>8  r4  <gis d' e>8 <gis d' e>8  r4 
      
  \break \mark \markup \box \bold "Bridge (Salsa)"     
      \repeat volta 2 {     
        c4 d e r  |  r2. a,4  |  gis a b r  |  r1  |  c4 d e r   |  r r8 e, e e e4 |  e' e d4. c8~  |  c2  r2  |
      }
      
      \break 
      
    }
  }
}

%part: backingReeds
backingReeds = {
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'break-align-symbols = #'(clef)
  \transpose c bes
  {
    \relative c' {
      \set Score.markFormatter = #format-mark-box-letters

      %INTRO      
      \mark \markup \box \bold "Intro (1)"

      \repeat volta 2 {
        \repeat percent 4 { r4 <c e>8 <c e>8    r4 <c e>8 <c e>8  } 
        \repeat percent 4 { r4 <c f>8 <c f>8    r4 <c f>8 <c f>8  } 
              \mark "D.S."
      }
      <c e a>4 r2.  |  r1  |
      
      \break
      
      %VERSE
    \break \mark \markup \box \bold "Verse (2)"
    
      \repeat volta 2 {
        \repeat percent 4 { r4 <c e>8 <c e>8    r4 <c e>8 <c e>8  }
        \repeat percent 2 { r4 <c f>8 <c f>8    r4 <c f>8 <c f>8  } 
        r4 <d e>8 <d e> r4 <d e>8 <d e> e4 d c b  |
      } 
      
  \break \mark \markup \box \bold "Chorus (3)"
      
      \repeat volta 2 {
        <a c>1~  |  <a c>4  <a c> <b d> <c e>  |  <a c>1~  |  <a c>4  <a c> <b d>8 <c e>4 <a c>8  |   <c e>4 <b d> <a c> r  |
        r  <a c>8 <b d> <c e> <b d> r  <a c> |  <c e>4 <b d> <a c> <b d> |
      }
      \alternative {
        { r4 <gis b> <a c> <b d>  }
        { <b d>2. r4 ^"D.C." }
      }
       \break
   \break \mark \markup {  \musicglyph #"scripts.segno"  \box \bold "Break (hits)"  }
   r4  <gis d' e>8 <gis d' e>8 <gis d' e>4 r  |  <gis d' e>8 <gis d' e>8 <gis d' e>4 <gis d' e>8 <gis d' e>8 r4 |
      <gis d' e>8 <gis d' e>8  r4  <gis d' e>8 <gis d' e>8  r4  |  <gis d' e>8 <gis d' e>8  r4  <gis d' e>8 <gis d' e>8  r4 
      
  \break \mark \markup \box \bold "Bridge (Salsa)"     
        \repeat volta 2 {   
        <c e>4 <e, a>8 <a c> r <c e> r <b d>  |
        r <gis b> r <b d> <c f> <c f> <b e>4 |
        <b e>4 <e, gis>8 <gis b> r <b d> r <a c> | r <e a> r <a c> <b f'> <b f'> <c e>4 

        <c e>4 <e, a>8 <a c> r <c e> r <b d>  |
        r <gis b> r <b d> <c f> <c f> <b e>4 |
        <b e>4 <e, gis>8 <gis b> r <b d> r <a c> | r <e a> r <a c> <b f'> <b f'> <c e>4         
      }
      
      \break 
      
    }
  }
}


%part: bass
bass = \relative g, {
  \time 4/4 \key bes \major
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \set Score.markFormatter = #format-mark-box-letters
  \break \mark \markup \box \bold "Intro (1)"
  
  \repeat volta 2 {
    \repeat percent 4 { g4. bes d4 }
    \repeat percent 4 { es,4. g bes4 }
          \mark "D.S."
  }
  g'4 r2.  |  r1  |
  
  \break \mark \markup \box \bold "Verse (2)"
  \repeat volta 2 {
    \repeat percent 4 { g,4. bes d4 }
    \repeat percent 2 { es,4. g bes4 }
    d4. fis4. a4  |  d, c bes a  |
  }
  
  \break \mark \markup \box \bold "Chorus (3)"
  \repeat volta 2 {
    \repeat percent 4 { g4. bes d4 }
    \repeat percent 2 { es,4. g bes4 }
    d,4. fis4. a4
  }
  \alternative {
    {  d,4. fis4. a4 }
    {   d,4. fis4. a4  ^"D.C." }
  }
   \break \mark \markup {  \musicglyph #"scripts.segno"  \box \bold "Break (hits)"  }
   r1  |  r  |  r  |  r  |
   \break \mark \markup \box \bold "Bridge (Salsa)"     
    \repeat volta 2 {   
      g4. bes d4  
      {   \repeat percent 2 {  d,4. fis4. a4 } }
      g4. bes d4  

       g,4. bes d4  
      {   \repeat percent 2 {  d,4. fis4. a4 } }
      g4. bes d4  
}
}

%part: changes
changes = \chordmode {
  %intro
  g1:m | g1:m |  g1:m | g1:m |
  es es |  es es |
  g1:m | g1:m |
  
  %verse
  g1:m | g1:m |  g1:m | g1:m | 
  es es | d1:7 | d1:7 | 
  %chorus
  g1:m | g1:m |  g1:m | g1:m | 
  es es | d1:7 | d1:7 |  d1:7 | 
  %break
  |  d1:7 | d1:7 | d1:7 | d1:7 |
  % salsa break  
   |  g1:m |d1:7 | d1:7 | g1:m |
   |  g1:m |d1:7 | d1:7 | g1:m |
  
  
}

%%Generated layout
#(set-default-paper-size "letter")
\book {
  \score { <<
    \set Score.markFormatter = #format-mark-box-letters

    \transpose c c \new ChordNames { \set chordChanges = ##t \changes }    
    
    \new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
                                                       \melody
    }
    \new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"clarinet" \clef treble
                                                       \backingTrumpet
    }
    \new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"clarinet" \clef treble
                                                       \backingReeds
    }
    
    \new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"tuba" \clef bass
                                                       \bass
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } } }
}

