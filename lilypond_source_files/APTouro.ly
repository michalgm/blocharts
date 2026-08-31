\version "2.12.3"

\header { 
  tagline = "8/30/2026"
  title = "A.P. Touro"
  composer = "Troy \"Trombone Shorty\" Andrews for Rebirth BB"
  arranger = "arr: Mike Jones, Paul Bertin, Jeff Giaquinto"

  copyright = \markup {\bold { "Default Form:" }  "Vamp Head Bridge--Head Bridge Solos--Vamp Head Bridge Bridge"}
}
%description: Written by <a href="www.tromboneshorty.com">Troy "Trombone Shorty" Andrews</a>, this track appears on <a href="http://www.rebirthbrassband.com">Rebirth Brass Band</a>'s 2011 release <a href="http://www.amazon.com/Rebirth-New-Orleans-Brass-Band/dp/B004PBBQAI">Rebirth of New Oreans</a>. Presumably named for <a href="http://en.wikipedia.org/wiki/A_P_Tureaud">A. P. Tureaud</a>, the famed NAACP attorney who filed the lawsuit that successfully ended the system of Jim Crow segregation in New Orleans.

%part: melody
melody={
  \relative c' {
    \time 4/4 \key c \minor
    \compressEmptyMeasures
    \override MultiMeasureRest.expand-limit = #1
    \mark \markup \box \bold "Vamp"
    \repeat volta 2 {  R1*2^"4x"

                       \repeat volta 4 { r1\segno }
                       \alternative {  {  r1 } 
                                       { r2 r8  g' bes16 c r es  | }
                       } % end alternative 
    }

    \break \mark \markup \box \bold "Head"
    \repeat volta 2 {
      r c8.~ c2.~  | c2 r8  g8 bes16 c  r es  |
      r c8.~ c2 r16 g f es~ 
    }
    \alternative {
      { es16 f  r8 r4 r8  g8 bes16 c r es  | }
      { es, f  r8 r4 r2  | }
    }

    \break \mark \markup \box \bold "Bridge"
    \repeat volta 2 {
      c'8 r r16 g8 bes16~ bes2 |  aes4 r16 bes aes g~ g4 g16 f es d |
      c8 r r16 g'8 f16~ f2  |  c'4~^"D.S., last time 4x" c8. b16~ b4 r 
      \fine
    }
    
    \section
    \sectionLabel \markup { \bold \box "Solos"}
    \repeat volta 4 {
      R1*2^"4x"
    }
    \repeat volta 4 {
      R1*4^"D.C. al Fine"
    }

  }
}

%part: riff
riff={
  \relative c' {
    \time 4/4 \key c \minor
    \compressEmptyMeasures
    \override MultiMeasureRest.expand-limit = #1
    \mark \markup \box \bold "Vamp"

    \repeat volta 2 {  R1*2^"4x"  } 

    \repeat volta 4 {
      r16\segno <g' es'> r <bes g'>   r <g es'> <f d'> <es c'>      <f d'> <f d'> <es c'>8 r <g es'> |
    }
    \alternative {
      { r16 <g es'> r <bes g'>   r <g es'> <f d'> <es c'>       <f d'> <f d'> <es c'>8 r <c g'> | }
      { r16 <g' es'> r <bes g'>   r <g es'> <f d'> <es c'>       <f d'> <f d'> <es c'>8 r <c g'> | }
    }
    \break \mark \markup \box \bold "Head"

    \repeat volta 2 {
      r16 <g' es'> r <bes g'>   r <g es'> <f d'> <es c'>      <f d'> <f d'> <es c'>8 r <g es'> |
      r16 <g es'> r <bes g'>   r <g es'> <f d'> <es c'>      <f d'> <f d'> <es c'>8 r <es c'> |
      r16 <g es'> r <bes g'>   r <g es'> <f d'> <es c'>      <f d'> <f d'> <es c'>8 r <g es'> |
    }
    \alternative {
      {
        r16 <g es'> r <bes g'>   r <g es'> <f d'> <es c'>       <f d'> <f d'> <es c'>8 r <c g'> |
      }
      {
        r16 <g' es'> r <bes g'>   r <g es'> <f d'> <es c'>       <f d'> <f d'> <es c'>8 r <c g'> |
      }
    }
    \break \mark \markup \box \bold "Bridge"

    \repeat volta 2 {
      r16 <g' es'> r <bes g'>   r <g es'> <f d'> <es c'>      <f d'> <f d'> <es c'>8 r <g es'> |
      r16 <g es'> r <bes g'>   r <g es'> <f d'> <es c'>       <f d'> <f d'> <es c'>8 r <c g'> |
      r16 <g' es'> r <bes g'>   r <g es'> <f d'> <es c'>      <f d'> <f d'> <es c'>8 r <g es'> |
      r16^"D.S., last time 4x"  <g es'> r <bes g'>   r <g es'> <f d'> <es c'>       <f d'> <f d'> <es c'>8 r <c g'> |
      \fine
    }

    \section
    \sectionLabel \markup { \bold \box "Solos"}

    \repeat volta 4 {
      R1*2^"4x"
    }
    \repeat volta 4 {
      R1*4^"D.C. al Fine"
    }
  }
}

%part: bass
bass={
  \relative c' {
    \time 4/4 \key c \minor
    \compressEmptyMeasures
    \mark \markup \box \bold "Vamp"

    \repeat volta 4 {
      c,8. c16 r4  c,8. c16 r4 |
      c'8. c16 r4  c,8 c c r^"4x"  |
    }

    \repeat volta 4 {
      c'8.\segno  c16 r4  c,8. c16 r4 |
    }
    \alternative {{ c'8. c16 r4  c,8 c c r  | } { c'8. c16 r4  c,8 c c r  | }}
    \break \mark \markup \box \bold "Head"

    \repeat volta 2 {
      c'8. c16 r4  c,8. c16 r4 |
      c'8. c16 r4  c,8. c16 r4 |
      c'8. c16 r4  c,8. c16 r4 |
    }
    \alternative {
      {c'8. c16 r4  c,8 c c r  | } {c'8. c16 r4  c,8 c c r  |}
    }
    \break \mark \markup \box \bold "Bridge"
    \repeat volta 2 {
      c'8. c16 r4  bes8. bes16 r4 |
      aes8. aes16 r4 g8. g16 r4  |
      f8. f16 r4  ees8. ees16 r4 |
      d8.^"D.S., last time 4x"  d16 r4  g4 g4
      \fine
    }
    
    \break
    \section
    \sectionLabel \markup { \bold \box "Solos"}
    \repeat volta 4 {
      c8. c16 r4  c,8. c16 r4 |
      c'8. c16 r4  c,8 c c r^"4x"  |
    }
    \repeat volta 2 {
      c'8. c16 r4  bes8. bes16 r4 |
      aes8. aes16 r4 g8. g16 r4  |
      f8. f16 r4  ees8. ees16 r4 |
      d8. d16 r4^"D.C. al Fine"  g4 g4
    }
  }
}
%part: changes
changes = \chordmode {

}

%layout
#(set-default-paper-size "a5" 'landscape)
\book {
  \paper { #(set-paper-size "a4") }
  \header { poet = "Score" }
  \score {
    <<
      \new Staff {
        \tempo 4 = 90
        \melody
      }
      \new Staff {
        \riff
      }
      \new Staff {
        \clef bass
        \bass
      }
    >>
  }
}




\book {
  \header { poet = "MIDI" }
  \score {
    <<
      \tempo 4 = 70
      \unfoldRepeats  \new Staff {
        \set Staff.midiInstrument = #"trumpet"
        \melody
      }
      \unfoldRepeats  \new Staff {
        \set Staff.midiInstrument = #"alto sax"
        \riff
      }
      \unfoldRepeats  \new Staff {
        \set Staff.midiInstrument = #"tuba"
        \bass
      }
    >>
    \midi { }
  }
}
