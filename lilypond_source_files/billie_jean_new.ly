\version "2.12.3"
\header {
  title = "Billie Jean"
  composer = ""
  arranger = ""
  tagline = "9/7/12" %date of latest edits
  copyright = \markup {\bold ""} %form
}
%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }
voltaFirstOnly = \markup { 1. }
%music pieces
%part: melody
melody = \relative d'' {
  \time 4/4 \key bes \major
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \break \mark \markup \box \bold "Verse 1"
  \repeat volta 3 {
    r4 d8 d d c bes c |
    bes d r c16 bes c8 bes d4 |
    r8 d d d d c bes c |
    bes d r c ~ c bes a g |
    r2 r4 a16 bes g8 |
    r4 a16 bes g8 r4 a16 bes g8 |
  }
  \alternative {
    {
      \set Score.repeatCommands = #(list(list 'volta voltaFirstOnly) )
      R1 |
      r8 g bes c ~ c bes a g |
      r2 r4 a16 bes g8 |
      r4 a16 bes g8 r4 a16 bes g8 |
      R1 |
      R1 |
    }
    {
      \set Score.repeatCommands = #'((volta "2."))
      R1 | R1
    }
  }
  \bar "||"
  \break \mark \markup \box \bold "Bridge"
  g8 f g16 f g8 ~ g bes r g |
  bes16 g g8 ~ g f16 g ~ g f d8 r f |
  g16 g g8 ~ g g16 f g8 a ~ a g16 f |
  d4 r r r8 f |
  g f g16 f g8 ~ g bes r g |
  bes16 g g8 ~ g f16 g ~ g f d8 r g |
  es es16 es ~ es8 f16 g ~ g4 r8 g16 g |
  fis8 fis16 fis ~ fis g a8 r g a g \bar "||"
  \break \mark \markup \box \bold "Chorus"
  r4 g8 g f d d4 |
  g8 g4 f8 ~ f d d4 |
  r8 g g g f d d4 |
  g8 bes4 c8 ~ c bes a g |
  r2 r8 g r g |
  d'4 c g8 es4 d8 |
  R1 |
  r8 g bes c ~ c bes a g |
  r2 r8 g r g |
  d'4 c g8 es4 d8 |
  R1*2
  \break \mark \markup \box \bold "Verse 2"
  \repeat volta 3 {
    r4 d'8 d d c bes c |
    bes d r c16 bes c8 bes d4 |
    r8 d d d d c bes c |
    bes d r c ~ c bes a g |
    r2 r4 a16 bes g8 |
    r4 a16 bes g8 r4 a16 bes g8 |
  }
  \alternative {
    {
      \set Score.repeatCommands = #(list(list 'volta voltaFirstOnly) )
      R1 |
      r8 g bes c ~ c bes a g |
      r2 r8 g r g |
      \times 2/3 { es'4 d bes } \times 2/3 { a g es } |
      d r r2 |
      R1 |
    }
    {
      \set Score.repeatCommands = #'((volta "2."))
      R1 | R1
    }
  }
  \bar "||"
}

%part: tenor
tenor= \relative d' {
  \time 4/4 \key bes \major
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \set Score.markFormatter = #format-mark-box-letters
  \break \mark \markup \box \bold "Verse 1"
  \repeat volta 3 {
    <d g>8 ^"G min." r4 <e a>8 r2 |
    <f bes>8 r4 <e a>8 r2 |
    <d g>8 ^"G min." r4 <e a>8 r2 |
    <f bes>8 r4 <e a>8 r2 |
    <es g>8 ^"C min." r4 <es g>8 r2 |
    <es g>8 r4 <es g>8 r2 |
  }
  \alternative {
    {
      <d g>8 ^"G min." r4 <e a>8 r2 |
      <f bes>8 r4 <e a>8 r2 |
      <es g>8 ^"C min." r4 <es g>8 r2 |
      <es g>8 r4 <es g>8 r2 |
      <d g>8 ^"G min." r4 <e a>8 r2 |
      <f bes>8 r4 <e a>8 r2
    }
    {
      <d g>8 ^"G min." r4 <e a>8 r2 |
      <f bes>8 r4 <e a>8 r2 |
    }
  }
  \bar "||"
  \break \mark \markup \box \bold "Bridge"
  <g, es' bes'>1 |
  <g d' bes'> |
  <g es' bes'> |
  <g d' bes'> |
  <g es' bes'> |
  <g d' bes'> |
  <g es' bes'> |
  <fis c' a'> \bar "||"
  \break \mark \markup \box \bold "Chorus"
  <d' g>8 ^"G min." r4 <e a>8 r2 |
  <f bes>8 r4 <e a>8 r2 |
  <d g>8 ^"G min." r4 <e a>8 r2 |
  <f bes>8 r4 <e a>8 r2 |
  <es g>8 ^"C min." r4 <es g>8 r2 |
  <es g>8 r4 <es g>8 r2 |
  <d g>8 ^"G min." r4 <e a>8 r2 |
  <f bes>8 r4 <e a>8 r2 |
  <es g>8 ^"C min." r4 <es g>8 r2 |
  <es g>8 r4 <es g>8 r2 |
  <d g>8 ^"G min." r4 <e a>8 r2 |
  <f bes>8 r4 <e a>8 r2 |
  \break \mark \markup \box \bold "Verse 2"
  \repeat volta 2 {
    <d g>8 ^"G min." r4 <e a>8 r2 |
    <f bes>8 r4 <e a>8 r2 |
    <d g>8 ^"G min." r4 <e a>8 r2 |
    <f bes>8 r4 <e a>8 r2 |
    <es g>8 ^"C min." r4 <es g>8 r2 |
    <es g>8 r4 <es g>8 r2 |
  }
  \alternative {
    {
      <d g>8 ^"G min." r4 <e a>8 r2 |
      <f bes>8 r4 <e a>8 r2 |
      <es g>8 ^"C min." r4 <es g>8 r2 |
      <es g>8 r4 <es g>8 r2 |
      <d g>8 ^"G min." r4 <e a>8 r2 |
      <f bes>8 r4 <e a>8 r2
    }
    {
      <d g>8 ^"G min." r4 <e a>8 r2 |
      <f bes>8 r4 <e a>8 r2 |
    }
  }
  \bar "||"
}

%part: bass
bass = \relative g, {
  \time 4/4 \key bes \major
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \set Score.markFormatter = #format-mark-box-letters
  \break \mark \markup \box \bold "Verse 1"
  \repeat volta 3 {
    g8-> d f g-> f d f d |
    g-> d f g-> f d f d |
    g-> d f g-> f d f d |
    g-> d f g-> f d f d |
    c' g bes c r g bes g |
    c g bes c r c bes a
  }
  \alternative {
    {
      g-> d f g-> f d f d |
      g-> d f g-> f d f d |
      c' g bes c r g bes g |
      c g bes c r c bes a |
      g-> d f g-> f d f d |
      g-> d f g-> f d f d
    }
    {
      g-> d f g-> f d f d
    }
  } |
  g-> d f g-> f d f d \bar "||"
  \break \mark \markup \box \bold "Bridge"
  es1 |
  g |
  es |
  g |
  es |
  g |
  es |
  d \bar "||"
  \break \mark \markup \box \bold "Chorus"
  g8-> d f g-> f d f d |
  g-> d f g-> f d f d |
  g-> d f g-> f d f d |
  g-> d f g-> f d f d |
  c' g bes c r g bes g |
  c g bes c r c bes a |
  g-> d f g-> f d f d |
  g-> d f g-> f d f d |
  c' g bes c r g bes g |
  c g bes c r c bes a |
  g-> d f g-> f d f d |
  g-> d f g-> f d f d |
  \break \mark \markup \box \bold "Verse 2"
  \repeat volta 2 {
    g8-> d f g-> f d f d |
    g-> d f g-> f d f d |
    g-> d f g-> f d f d |
    g-> d f g-> f d f d |
    c' g bes c r g bes g |
    c g bes c r c bes a
  }
  \alternative {
    {
      g-> d f g-> f d f d |
      g-> d f g-> f d f d |
      c' g bes c r g bes g |
      c g bes c r c bes a |
      g-> d f g-> f d f d |
      g-> d f g-> f d f d
    }
    {
      g-> d f g-> f d f d
    }
  } |
  g-> d f g-> f d f d \bar "||"
}
%part: words
words = \markup { }
%part: changes
changes = \chordmode {
}
%%Generated layout
#(set-default-paper-size "letter")
\book {
  \score { <<
    \set Score.markFormatter = #format-mark-box-letters
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"trumpet" \clef treble
      \tempo 4 = 120
      \melody
    }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"clarinet" \clef treble
      \tenor
    }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"tuba" \clef bass
      \bass
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } }
  }
}
