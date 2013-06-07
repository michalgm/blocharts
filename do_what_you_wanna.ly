\version "2.12.3"

\header {
  title = "Do What You Wanna"
  composer = "Traditional(?), Arr. Andrew Snyder"
  tagline = "2/8/13" %date of latest edits
  copyright = \markup {\bold ""} %form
  poet = "C melody"
}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
  \relative c'
  {
    \key bes \major
    \time 2/2
    \mark \default
    r4^\markup { Call and Response, 1 measure displaced } f8  f g bes4 g8
    \repeat volta 2 {
      <f bes>1
      |  r4 f8 f g bes4 g8
      <f bes>1
      |  r4 f8 f g bes4 g8
      <f bes>1
      |  r4 f8 f g bes4 g8
      <as c>4 <g des'> <as c> <g des'>  |  <g bes>8 <as c>4 <g bes>8 r2
    }
    
    
    \break \mark \default
    \repeat volta 2 {
      <bes d>8^\markup { \italic tutti }  <bes d> r4 <as c>8 <as c> r4  |  <g bes>8 <g bes> r4 <f as> <d f>~
      <d f> <f as> <f as> <g bes>  |  <des c'>8 <c bes'> <bes as'>4 r <d f>~
      <d f> <f as> <f as> <g bes>  |  <as des> r <g c> <f bes>  |  r1  |  r1
    }
    
    \break \mark \default
    \repeat volta 2 {
      |  r4^\markup {\italic tutti }   <as des>8 <as des>4. <g c>8 <g c>~  |  <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
      |  r4  <as des>8 <as des>4. <g c>8 <g c>~  |  <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
      \break
      |  r4  <as des>8 <as des>4. <g c>8 <g c>~  |  <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
    }
    \alternative {
      {
        r4  <as des>8 <g c>4. <as des>8 <g c>~  |  <g c>4  <c f>8 <bes es>4 r4.  |
      }
      {
        r4 <as c>8 <g bes>4. <as c>8 <g bes>8~ <g bes>4 f8 f g bes4 g8
      }
    }
    
    \break \mark \markup \box \bold {"Solo Backing"}
    
    | r2.^\markup { during solos sometimes (groups of 4!) } r8 d8~
    \repeat volta 2 {
      | d f g bes4 g8 r4  |
      | r8  <es g>16 ( <f as>) <es g>8 r4 <es g>16 ( <f as> ) <es g>8 d~
      |  d f g bes4 g8 r4  | <as c>4. <g bes>4. <g bes>8 d8
    }
  }
}

%part: tenor
tenor = {
  \relative c'
  {
    \key bes \major
    \time 2/2
    \mark \default
    
    r1
    \repeat volta 2 {
      r4. <d f>8~ <d f>2
      <es g>1
      r4.  <d f>8~ <d f>2
      <es g>1
      r4.  <d f>8~ <d f>2
      <es g>1
      | es4 c bes c |  bes8 c4 bes8 r2 |
      
    }
    
    \break
    \mark \default
    \repeat volta 2 {
      <bes' d>8^\markup {\italic tutti }  <bes d> r4 <as c>8 <as c> r4  |  <g bes>8 <g bes> r4 <f as> <d f>~
      <d f> <f as> <f as> <g bes>  |  <des c'>8 <c bes'> <bes as'>4 r <d f>~
      <d f> <f as> <f as> <g bes>  |  <as des> r <g c> <f bes>  |  r1  |  r1
    }
    
    \break
    \mark \default
    \repeat volta 2 {
      |  r4^\markup {\italic tutti }   <as des>8 <as des>4. <g c>8 <g c>~  |  <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
      |  r4  <as des>8 <as des>4. <g c>8 <g c>~  |  <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
      \break
      |  r4  <as des>8 <as des>4. <g c>8 <g c>~  |  <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
    }
    \alternative {
      {
        r4  <as des>8 <g c>4. <as des>8 <g c>~  |  <g c>4  <c f>8 <bes es>4 r4.  |
      }
      {
        r4 <as c>8 <g bes>4. <as c>8 <g bes>8~ <g bes>4 f8 f g bes4 g8
      }
    }
    \break \mark \markup \box \bold {"Solo Backing"}
    | r2.^\markup { during solos sometimes (groups of 4!) } r8 d8~
    \repeat volta 2 {
      | d f g bes4 g8 r4  |
      | r8  <es g>16 ( <f as>) <es g>8 r4 <es g>16 ( <f as> ) <es g>8 d~
      |  d f g bes4 g8 r4  | <as c>4. <g bes>4. <g bes>8 d8
    }
  }
}

%part: words
words = \markup { }

%part: changes
changes = \chordmode { }

%part: bass
bass = {
  \relative c
  {
    \key es \major
    \time 2/2
    \mark \default
    r1 |
    \repeat volta 2 {
      \repeat percent 4 { bes4. d f4  |  es,4. g bes4 }
    }
    \break \mark \default
    \repeat volta 2 {
      \repeat percent 4 { bes4. d f4  |  es,4. g bes4 }
    }
    \break \mark \default
    \repeat volta 2 {
      \repeat percent 3 { bes4 r2.  |  r4 bes r bes  | }
    }
    \alternative {
      { bes4 r2.  |  r1 | }
      { bes4 r2.  |  r1 | }
    }
  }
}

%\tempo 4=180
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
      \set Staff.midiInstrument = #"trombone" \clef treble
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \tenor
    }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"tuba" \clef bass
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \bass
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } }
  }
}
