\version "2.24.4"

\header { 
  tagline = "4/30/2025"
  title = "Do What You Wanna"
  composer = "Rebirth Brass Band"
  arranger = "Arr. Andrew Snyder, Jeff Giaquinto"

  copyright = \markup {\bold { "Default Form:" }  "Intro, Head, 2, Head, 2, Solos, Head, 2, Bridge, Head"}

}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark.self-alignment-X = #RIGHT \once \override Score.RehearsalMark.direction = #DOWN }


% music pieces
%part: melody_call
melody_call = {
  \relative c'
  {
    \key bes \major
    \time 2/2

    \section
    \sectionLabel \markup { \bold \box "Intro" }
    \repeat volta 4 {
      r8 bes'4 aes8 f4 r8 bes8 | r8 bes4 aes8 f4 r4 |
      r8 bes4 aes8 f4 g
    }
    \alternative {
      { as4 g8 f8 r2 }
      { as4 f8 f g bes4 g8 }
    }

    \break
    \section
    \sectionLabel \markup { \bold \box "Head" }
    \repeat volta 2 {
      <f bes>1\segno
      | r4 f8 f g bes4 g8
      <f bes>1
      | r4 f8 f g bes4 g8
      <f bes>1
      
      | r4 f8 f g bes4 g8
      <as c>4 <g des'> <as c> <g des'>  | 
    }
    \alternative {
      { <g bes>8 r f8 f g bes4 g8 }
      { <g bes>8 <as c>4 <g bes>8 r2 \fine  }
    }

    \break
    \section
    \sectionLabel \markup { \bold \box "2" }
    \repeat volta 2 {
      <bes d>8^\markup { \italic tutti }  <bes d> r4 <as c>8 <as c> r4  |  <g bes>8 <g bes> r4 <f as> <d f>~
      <d f> <f as> <f as> <g bes>  |  <des c'>8 <c bes'> <bes as'>4 r <d f>~
      <d f> <f as> <f as> <g bes>  |  <as des> r <g c> <f bes>  |  r1
    }
    \alternative {
      { r1 }
      { r4 f8^\markup { \tiny "if returning to A" } f g bes4 g8 \jump "D.S." }
    }

    \break
    \section
    \sectionLabel \markup { \bold \box "Bridge" }
    \repeat volta 2 {
      |  r4^\markup {\italic tutti }   <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      |  <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
            |  r4  <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
      \break
      |  r4  <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
    }
    \alternative {
      {
        r4  <as des>8  <g c>~  <g c>4  <as des>8 <g c>~  |  <g c>4  <c f>8 <bes es>~ <bes es>4  r4  |
      }
      {
        r4 <as c>8 <g bes>~ <g bes>4  <as c>8 <g bes>8~ 
        <g bes>4 f8 f g bes4 g8 \jump "D.S."
      }
    }

    \break \section
    \sectionLabel \markup { \bold \box "Solo Backing" }
    | r2.^\markup { during solos sometimes (groups of 4!) } r8 d8~
    \repeat volta 2 {
      | d f g bes~ bes g8 r4  |
      | r8  <es g>16  [( <f as>)]  <es g>8  r r <es g>16 ([ <f as> ]) <es g>8 d~
    | d f g bes~ bes g8 r4  |
      <as c>4. <g bes>8~  <g bes>4 <g bes>8 d8~ 
    }
  }
}

%part: melody_response
melody_response = {
  \relative c'
  {
    \key bes \major
    \time 2/2

    \section
    \sectionLabel \markup { \bold \box "Intro" }
    \repeat volta 4 {
      r8 d'4^\markup { \tiny "tacit until 3x" } c8 as4 r8 d8 | r8 d4 c8 as4 r4 |
      r8 d4 c8 as4 bes
    }
    \alternative {
      { c4 bes8 as8 r2 }
      { c4 r2. }
    }

    \break
    \section
    \sectionLabel \markup { \bold \box "Head" }
    \repeat volta 2 {
      | r4\segno f,8 f g bes4 g8
      <f bes>1
      | r4 f8 f g bes4 g8
      <f bes>1
      | r4 f8 f g bes4 g8
      <f bes>1
  
      <as c>4 <g des'> <as c> <g des'>  | 
    }
    \alternative {
      { <g bes>8 <as c>4 <g bes>8 r2 }
      { <g bes>8 <as c>4 <g bes>8 r2 \fine }
    }

    \break
    \section
    \sectionLabel \markup { \bold \box "2" }
    \repeat volta 2 {
      <bes d>8^\markup { \italic tutti }  <bes d> r4 <as c>8 <as c> r4  |  <g bes>8 <g bes> r4 <f as> <d f>~
      <d f> <f as> <f as> <g bes>  |  <des c'>8 <c bes'> <bes as'>4 r <d f>~
      <d f> <f as> <f as> <g bes>  |  <as des> r <g c> <f bes>  |  r1
    }
    \alternative {
      { r1 }
      { r1 }
    }

    \break
    \section
    \sectionLabel \markup { \bold \box "Bridge" }
    \repeat volta 2 {
      |  r4^\markup {\italic tutti }   <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      |  <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
            |  r4  <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
      \break
      |  r4  <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
    }
    \alternative {
      {
        r4  <as des>8  <g c>~  <g c>4  <as des>8 <g c>~  |  <g c>4  <c f>8 <bes es>~ <bes es>4  r4  |
      }
      {
        r4 <as c>8 <g bes>~ <g bes>4  <as c>8 <g bes>8~ <g bes>4 r2. 
      }
    }

    \break \section
    \sectionLabel \markup { \bold \box "Solo Backing" }
    | r2.^\markup { during solos sometimes (groups of 4!) } r8 d8~
    \repeat volta 2 {
      | d f g bes~ bes g8 r4  |
      | r8  <es g>16  [( <f as>)]  <es g>8  r r <es g>16 ([ <f as> ]) <es g>8 d~
    | d f g bes~ bes g8 r4  |
      <as c>4. <g bes>8~  <g bes>4 <g bes>8 d8~
    }
  }
}

%part: tenor
tenor = {
  \relative c'
  {
    \key bes \major
    \time 2/2

    \section
    \sectionLabel \markup { \bold \box "Intro" }
    \repeat volta 4 {
      R1*3
    }
    \alternative {
      { r1 }
      { r1 }
    }

    \break
    \section
    \sectionLabel \markup { \bold \box "Head" }
    \repeat volta 2 {
      r4.\segno <d f>8~ <d f>2
      <es g>1
      r4.  <d f>8~ <d f>2
      <es g>1
      r4.  <d f>8~ <d f>2
      <es g>1
      | es4 c bes c 
    }
    \alternative {
      { |  bes8 c4 bes8 r2 | }
      { |  bes8 c4 bes8 r2 \fine  }
    }

    \break
    \section
    \sectionLabel \markup { \bold \box "2" }
    \repeat volta 2 {
      <bes' d>8^\markup {\italic tutti }  <bes d> r4 <as c>8 <as c> r4  |  <g bes>8 <g bes> r4 <f as> <d f>~
      <d f> <f as> <f as> <g bes>  |  <des c'>8 <c bes'> <bes as'>4 r <d f>~
      <d f> <f as> <f as> <g bes>  |  <as des> r <g c> <f bes>  |  r1
    }
    \alternative {
      { r1 }
      { r1 \jump "D.S." }
    }

    \break
    \section
    \sectionLabel \markup { \bold \box "Bridge" }
    \repeat volta 2 {
      |  r4^\markup {\italic tutti }   <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      |  <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
            |  r4  <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
      \break
      |  r4  <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      <g c>4 <f bes>8 <d as'> <f bes>4 <g c>  |
    }
    \alternative {
      {
        r4  <as des>8  <g c>~  <g c>4  <as des>8 <g c>~  |  <g c>4  <c f>8 <bes es>~ <bes es>4  r4  |
      }
      {
           r4 <as c>8 <g bes>~ <g bes>4  <as c>8 <g bes>8~ <g bes>4 r2. \jump "D.S."
      }
    }

    \break \section
    \sectionLabel \markup { \bold \box "Solo Backing" }
    | r2.^\markup { during solos sometimes (groups of 4!) } r8 d8~
    \repeat volta 2 {
      | d f g bes~ bes g8 r4  |
      | r8  <es g>16  [( <f as>)]  <es g>8  r r <es g>16 ([ <f as> ]) <es g>8 d~
    | d f g bes~ bes g8 r4  |
      <as c>4. <g bes>8~  <g bes>4 <g bes>8 d8~
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

    \section
    \sectionLabel \markup { \bold \box "Intro" }
    \repeat volta 4 {
      R1*3
    }
    \alternative {
      { r1 }
      { r1 }
    }

    \break
    \section
    \sectionLabel \markup { \bold \box "Head" }
    \repeat volta 2 {
      \repeat percent 3 { bes4.\segno d f4  |  es,4. g bes4
      }
       bes4. d f4  |  
    }
    \alternative {
      { es,4. g bes4 }
      { es,4. g bes4 }
    }
    

    \break
    \section
    \sectionLabel \markup { \bold \box "2" }
    \repeat volta 2 {
      \repeat percent 3 { bes4. d f4  |  es,4. g bes4 }
      bes4. d f4
    }
    \alternative {
      { es,4. g bes4 }
      { es,4. g bes4 \jump "D.S." }
    }
    \break
    \section
    \sectionLabel \markup { \bold \box "Bridge" }
    \repeat volta 2 {
      \repeat percent 3 { bes4 r2.  |  r4 bes r bes  | }
    }
    \alternative {
      { bes4 r2.  | r4 bes r bes  | }
      { bes4 r4 r4. bes8~  | bes2. r4 \jump "D.S."  | }
    }
  }
}

%\tempo 4=180
%%Generated layout
#(set-default-paper-size "letter")
\book {
  \score { <<
    \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
    
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"trumpet" \clef treble
      \tempo  4=180
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      \melody_call
    }

    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"trumpet" \clef treble
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      \melody_response
    }

    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"trombone" \clef treble
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      \tenor
    }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"tuba" \clef bass
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      \bass
    }
    >> \layout { \context { \Score \remove "Volta_engraver" } }
  }
}

