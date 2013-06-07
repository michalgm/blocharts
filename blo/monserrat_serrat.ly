\version "2.12.3"
\header {
  source = ""
  style = ""
  copyright = "Copyright (C) Sebastian Isler"
  lastupdated = ""
  title = "Monserrat Serrat"
  poet = "Do / C"
  composer = "Sebastian Isler"
  arranger = "via HMB & EE"
  tagline = "& BLO"
}

%part: melody
melody = \relative c'' {
  %\set Staff.midiInstrument = "violin"
  \key f\minor
  \override Staff.TimeSignature   #'style = #'numbered
  \time 4/4
  \repeat volta 2 {
    \mark \default
    c1 ~ |
    c1 ~ |
    c2 bes4 c |
    ees4. c8~ c4 bes |
    c1 ~ |
    c1 ~ |
    c1 |
    bes1 |
    a1 ~ |
    a1 ~ |
    a1 |
    ges1 |
    f1 ~ |
    f1 ~ |
    f1 ~ |
    f1 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
  \break
  \repeat volta 2 {
    \mark \default
    c'8 c r c r c bes4 |
    ees4 des c bes |
    a8 a r a r bes a4 |
    r1 |
    \break
    c8 c r c r bes c des |
    ees4 des c bes |
    a8 a r a r bes a4 |
    r1 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
}

%part: harmony
harmony = \relative c'' {
  %\set Staff.midiInstrument = "violin"
  \key f\minor
  \override Staff.TimeSignature   #'style = #'numbered
  \time 4/4
  
  \mark \default
  << {
    ees1 ~ |
    ees1 ~ |
    ees2 des4 ees |
    g4. ees8~ ees4 des |
    ees1 ~ |
    ees1 ~ |
    ees1 |
    des1 |
    c1 ~ |
    c1 ~ |
    c1 |
    bes1 |
    a1 ~ |
    a1 ~ |
    a1 ~ |
    a1 |
     }
     \\
     {
       \bar "||"
       
       a1 ~ |
       a1 ~ |
       a2 ges4 a |
       c4. a8~ a4 ges |
       a1 ~ |
       a1 ~ |
       a1 |
       ges1 |
       f1 ~ |
       f1 ~ |
       f1 |
       des1 |
       c1 ~ |
       c1 ~ |
       c1 ~ |
       c1 |
  } >>
  \bar "||"
  
  \break
  
  \mark \default
  << {
  ees'8 ees r ees r ees des4 |
  ges4 f ees des |
  c8 c r c r des c4 |
  r1 |
  \break
  ees8 ees r ees r des ees f |
  ges4 f ees des |
  c8 c r c r des c4 |
  r1 |
      \bar "||"

     }
  \\
 { 
  a8 a r a r a ges4 |
  c4 bes a ges |
  f8 f r f r ges f4 |
  r1 |
  \break
  a8 a r a r ges a bes |
  c4 bes a ges |
  f8 f r f r ges f4 |
  r1 |
  
  \bar "||"
 } >>
}

%part: countermelody
countermelody = \relative c' {
  %\set Staff.midiInstrument = "viola"
  \key f\minor
  \override Staff.TimeSignature   #'style = #'numbered
  \time 4/4
  \repeat volta 2 {
    \mark \default
    
    r4 r8 <f c> r <f  c> <f c>4 |
    <ges bes,> <f c> <ges bes,> <f c> |
    r4 r8 <ges bes,> r <f des> <ees c>4 |
    r1 |
    
    r4 r8 <f c> r <f  c> <f c>4 |
    <ges bes,> <f c> <ges ees> <a des,> |
    r4 r8 <bes c,> ~ <bes c,> <des bes,> <c a,>4 |
    r1 |
    
    r4 r8 <f, c> r <f  c> <f c>4 |
    <ges bes,> <f c> <ges bes,> <f c> |
    r4 r8 <ges bes,> r <f des> <ees c>4 |
    r1 |
    
    r4 r8 <f c> r <f  c> <f c>4 |
    <ges bes,> <f c> <ges ees> <a des,> |
    r4 r8 <bes c,> ~ <bes c,> <ges bes,> <f a,>4 |
    r1 |
    
  }
  %\set Score.repeatCommands = #'(end-repeat)
  \break
  \repeat volta 2 {
    \mark \default
    
    c'8 c r c  r c bes4 |
    ees4 des c bes |
    a8 a r a r bes a4 |
    r1 |
    
    c8 c r c r bes c des |
    ees4 des c bes |
    a8 a r a r bes a4 |
    r1 |
    
  }
  %\set Score.repeatCommands = #'(end-repeat)
}

bassHead = \relative c {
  
  \repeat volta 2 {
    \mark \default
    f,4. c'8 ~ c4 f4 |
    ges4. des8 ~ des4 ges,4 |
    f4. c'8 ~ c4 f4 |
    ees2 r2 |
    
    f,4. c'8 ~ c4 f4 |
    ges4. des8 ~ des4 ges,4 |
    f2 ees |
    f2 r2 |
    
    f4. c'8 ~ c4 f4 |
    ges4. des8 ~ des4 ges,4 |
    f4. c'8 ~ c4 f4 |
    ees2 r2 |
    
    f,4. c'8 ~ c4 f4 |
    ges4. des8 ~ des4 ges,4 |
    f2 ees |
    f2 r2 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
}

bassBridge = \relative c {
  
  \repeat volta 2 {
    \mark \default
    
    f,4. c'8 ~ c4 f4 |
    ges4. des8 ~ des4 ges,4 |
    f4. c'8 ~ c4 f4 |
    ees2 r2 |
    
    f,4. c'8 ~ c4 f4 |
    ges4. des8 ~ des4 ges,4 |
    f2 ees |
    f2 r2 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
}

originalBass = \relative c {
  \override Staff.TimeSignature   #'style = #'numbered
  \key f\minor
  
  \repeat volta 2 {
    \mark \default
    f,4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,4. c'8 ~ c4 f4 |
    ees2 r2 |
    
    f,4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,2 ees |
    f2 r2 |
    
    f4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,4. c'8 ~ c4 f4 |
    ees2 r2 |
    
    f,4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,2 ees |
    f2 r2 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
  
  \repeat volta 2 {
    \mark \default
    f4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,4. c'8 ~ c4 f4 |
    ees2 r2 |
    
    f,4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,2 ees |
    f2 r2 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
}

eeBassHead = \relative c {
  
  \repeat volta 2 {
    \mark \default
    f,4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,4. c'8 ~ c4 f4 |
    ees2 r2 |
    
    f,4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,2 ees |
    f2 r2 |
    
    f4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,4. c'8 ~ c4 f4 |
    ees2 r2 |
    
    f,4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,2 ees |
    f2 r2 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
}

eeBassBridge = \relative c {
  \repeat volta 2 {
    \mark \default
    f,8 f r f r c' c4 |
    f4 f c c |
    f,8 f r f r c' f,4 |
    r1 |
    
    f8 f r f r c' c4 |
    f4 f c c |
    f,8 f r f r c' f,4 |
    r1 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
}
%part: bass
bass = \relative c {
  \key f\minor
  \clef bass
  \bassHead
  \bassBridge
}
%part: altbass
altbass = \relative c {
  \key f\minor
  \clef bass
  \eeBassHead
  \eeBassBridge
}


zeBass = \relative c {
  \override Staff.TimeSignature   #'style = #'numbered
  \key f\minor
  
  \repeat volta 2 {
    \mark \default
    f4. c8 ~ c4 f4 |
    ges4. c,8 ~ c4 ges'4 |
    f4. c8 ~ c4 f4 |
    ees2 r2 |
    
    f4. c8 ~ c4 f4 |
    ges4. c,8 ~ c4 ges'4 |
    f2 ees |
    f2 r2 |
    
    f4. c8 ~ c4 f4 |
    ges4. c,8 ~ c4 ges'4 |
    f4. c8 ~ c4 f4 |
    ees2 r2 |
    
    f4. c8 ~ c4 f4 |
    ges4. c,8 ~ c4 ges'4 |
    f2 ees |
    f2 r2 |
    
  }
  %\set Score.repeatCommands = #'(end-repeat)
  
  \repeat volta 2 {
    \mark \default
    f4. c8 ~ c4 f4 |
    ges4. c,8 ~ c4 ges'4 |
    f4. c8 ~ c4 f4 |
    ees2 r2 |
    
    f4. c8 ~ c4 f4 |
    ges4. c,8 ~ c4 ges'4 |
    f2 ees |
    f2 r2 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
}

%%Generated layout
#(set-default-paper-size "letter")
\book {
  \score { <<
    \set Score.markFormatter = #format-mark-box-numbers
    
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"trumpet" \clef treble
      \tempo  4=180
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \melody
    }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"clarinet" \clef treble
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \harmony
    }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"alto sax" \clef treble
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \countermelody
    }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"tuba" \clef bass
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \bass
    }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"alto sax" \clef treble
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \altbass
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } }
  }
}