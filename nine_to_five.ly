\version "2.12.1"

\header {
  tagline = "2/17/2015"
  title = "Nine to Five"
  composer = "Dolly Parton"

}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }

%music pieces
%part: melody
melody = {
  \relative c {
    \key f \major
    \set Score.markFormatter = #format-mark-box-letters
    \override Score.RehearsalMark #'self-alignment-X = #LEFT

    \mark \markup \box \bold "Vamp"
    \repeat volta 2 {
      <f a c>8-^ ^\markup {\tiny "(2nd time only)"} r8 r4 r2 | r1 | r1 | r1 |
    }
    \break \mark \markup \box \bold "1"
    f8 f f f a4 a | c8 c c4 d f | bes,8 bes bes4 d d8 f8| r8 f8 d4 g8 f d4 |


    f4 d f d | d c8 d4~ d8 c4 | c2 r2 | r1 |
    \break
    f,8 f4 f8 a4 a | c8 c c4 d f | bes,4 bes4 d4 d8 f | r8 f8 d4 g8 f d4 |

    a'4 g f d | c4 c8 a'4~ a8 g4 | f2 r2 | r2 d4 f |
    \break \mark \markup \box \bold "2"

    \repeat volta 3 {
      as4. g4. f4~ | f2 d4 f | f d8 f~ f d g4~ | g a d, f |
      \break
      r4 a4~ a8 g4. | f4 d d8 f4. | f4 d8 f~ f d g4~ | g a d, f |

      \break
      r4 as4~ as8 g4. |  f4 d d8 f4. | f4 d8 f~ f d g4~ | g a d, f |

      \break
      g2  g4 g~ | g g d r4 | d' c8 c8 ~c4 a |
    }
    \alternative {
      {  c4 a d,4 f }
      {  c'4 a r2| }
      {  c4 a2.|f4 r2.|  }

    }
  }
}

%part: tenor
tenor = {
  \relative c' {
    \key f \major
    \mark \markup \box \bold "Vamp"
    \repeat volta 2 {
      <f a c>8-^  ^\markup {\tiny "(2nd time only)"} r8 r4 r2 |  r1 | r1 | r1 |
    }
    \break \mark \markup \box \bold "1"
    r4 a8 a r4 c8 c | r4 d8 d r c bes a | r4 d8 d r4 f8 f| r4 bes8 bes r a g f |
    r4 a8 a r4 f8 f | f f c4 d4 c8 c~ | c2 r2 | r1 |
    \break
    r4 a8 a r4 c8 c | r4 d8 d r c bes a | r4 d8 d r4 f8 f| r4 bes8 bes r a g f |
    r4 c'8 c r4 a8 a | a8 a g r8 c4 bes8 a~ | a2 r2 | r1

    \break \mark \markup \box \bold "2"
    \repeat volta 3 {
      d,4. bes4. aes4~| aes <d f bes>-^ r r | r <d f> r <d f> | r2 aes4 f |
      r c'~ c8 bes4. | a4 <c f a>-^ r2 | r4 <a c> r <a c> | d c aes8 g f4 |
      \break
      r4 d'4~ d8 bes4. | aes4 <d f bes>-^ r r | r <d f> r <d f> | r <d f> <des e> <c ees> |
      <b d>2 <c es> | <cis e> <d f> | <c e> <d f>
    }
    \alternative {
      { <ees ges>4 <e g> aes,8 g f4 }
      { <ees' ges>4 <e g> r2 }
      { <ees ges>4 <e g>2. | <a, c>4 r2. }

    }
  }
}

%part: bass
bass = {
  \relative c, {
    \key f \major
    \mark \markup \box \bold "Vamp"
    \repeat volta 2 {

      f4 f f f | f f f f | f f f f | f8. d16 d4 es e |
    }
    \break \mark \markup \box \bold "1"

    f4 f f f | f f f f (| bes,) bes bes bes | bes bes bes bes (|

    f') f f f | f f f f (| c) c c c | c c c c (|
    \break
    f4) f f f | f f f f (| bes,) bes bes bes | bes bes bes bes (|
    f') f f f (| c) c c c | f f f f | f2 (f,4) r4 |
    \break \mark \markup \box \bold "2"
    \repeat volta 3 {
      bes bes' f bes | bes, bes' f bes | bes, bes' f bes | bes, bes' f bes |
      \break
      f f' c f | f, f' c f | f, f' c f | f, c' f, f |
      \break
      bes, bes' f bes | bes, bes' f bes  |bes, bes' f bes | bes, bes a as |
      \break
      g g a a | bes bes b b | c c d d |
    }
    \alternative {
      {  es es e c | }
      {  es es e c | }
      {  es es e c | f4 r2. }

    }
  }
}

%part: changes
changes = \chordmode {
  f1 | f1 | f1 | f1
  \break \mark \markup \box \bold "1"
  f1 | f1 | bes1 | bes1|
  f1 | f1 | c1 | c1 |
  f1 | f1 | bes1 | bes1 |
  f1 | c1 | f1 | f1 |
  \break \mark \markup \box \bold "2"
  bes1 | bes1 | bes1 | bes1 |
  f1 | f1 | f1 | f1 |
  bes1 | bes1 | bes1 | bes1 |
  g1:7 | g1:7 | c1:7 | c1:7 |
}


%%Generated layout
#(set-default-paper-size "letter")
\book {
  \score  { 
    %\unfoldRepeats 
    <<
    \set Score.markFormatter = #format-mark-box-numbers
    \transpose c c \new ChordNames { \set chordChanges = ##t \changes }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"trumpet" \clef treble
      \tempo  4 = 184
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
           >>     

           \midi { }
           \layout { \context  {  \Score \remove "Volta_engraver" } }
  }
}
