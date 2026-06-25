
\version "2.24.0"

\header {
  composer = "Axel Herrera"
  title = "Roma-Rama"
  tagline = "6/24/2026"
  % copyright = \markup {\bold { "Default Form:" }  ""}

}

%description:An original modal piece (Concert G/Ab) written by former BLO member Axel Herrera.  It was inspired by the music of the Roma people of Eastern Europe and is a tribute to their struggles and culture.

%part: melody
melody =  \relative c'' {
  \key c \minor
  \mark \markup \box \bold "Head"

  \repeat volta 2 {
    g1 |
    b2. aes4 |
    g1 |
    b1 |
    c1 |
    ees2. aes,4 |
    c1 |
    aes1 |
  }
  \break

  \mark \markup \box \bold "1"

  g4 r8 aes8 b8 [ b8 ] r8 aes8 | \barNumberCheck #10
  g4 r8 f8 g8 [ aes8 ] g4 |
  r8 g4 aes8 b8 [ b8 ] r8 aes8 |
  g4 r8 f8 g8 [ aes8 ] g4 |

  aes4. ees4. c'4 ~ |
  c2. r4 |
  aes4. ees4. c4 ~ |
  c2. r4 |
  \break

  b'4 r8 c8 d8 [ d8 ] r8 c8 |
  b4 r8 aes8 b8 [ c8 ] b4 |
  r8 b4 c8 d8 [ d8 ] r8 c8 | \barNumberCheck #20
  b4 r8 aes8 b8 [ c8 ] b4 |

  c4. aes4. ees'4 ~ |
  ees2. r4 |
  c4. aes4. ees4 ~ |
  ees2. r4 |
  \break

  \mark \markup \box \bold "2"

  g4 aes8 [ aes8 ] b8 [ b8 aes8 aes8 ] |
  g4 aes8 [ aes8 ] b8 [ b8 aes8 aes8 ] |
  g4 c8 [ c8 ] b8 [ b8 ees8 ees8 ] |
  d8 [ d8 aes'8 aes8 ] g4 r4 |
  \break
  aes4. ees4. c4 | \barNumberCheck #30
  aes'4. ees4. c4 |
  aes'4. ees4. c4 |
  aes'4 r4 aes4 r4 |
  g2 r2 \bar "|."
}

%part: tenor
tenor =  \relative b {
  \key c \minor
  \mark \markup \box \bold "Head"
  \repeat volta 2 {
    \repeat percent 4 {
      r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] |
    }
    \repeat percent 4 {
      r4 <c ees>8 [ <c ees>8 ] r8 <c ees>8 <c ees>8 [ <c ees>8 ] |
    }
  }

  \break

  \mark \markup \box \bold "1"
  \repeat percent 4 {
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] |
  }
  \repeat percent 4 {
    r4 <c ees>8 [ <c ees>8 ] r8 <c ees>8 <c ees>8 [ <c ees>8 ] |
  }

  \break

  \repeat percent 4 {
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] |
  }
  \repeat percent 4 {
    r4 <c ees>8 [ <c ees>8 ] r8 <c ees>8 <c ees>8 [ <c ees>8 ] |
  }

  \break

  \mark \markup \box \bold "2"
  \repeat percent 4 {
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] |
  }
  \break
  \repeat percent 4 {
    r4 <c ees>8 [ <c ees>8 ] r8 <c ees>8 <c ees>8 [ <c ees>8 ] |
  }

  <b d>2 -"continue pattern, last time hold" r2 \bar "|."
}

%part: bass
bass =  \relative g, {
  \key c \minor

  \mark \markup \box \bold "Head"
  \repeat volta 2 {
    \repeat percent 4 {
      g4 r8 d'8 r4 g,4 |
    }
    \repeat percent 4 {
      aes4 r8 ees'8 r4 aes,4 |
    }
  }

  \break

  \mark \markup \box \bold "1"
  \repeat percent 4 {
    g4 r8 d'8 r4 g,4 |
  }
  \repeat percent 4 {
    aes4 r8 ees'8 r4 aes,4 |
  }

  \break

  \repeat percent 4 {
    g4 r8 d'8 r4 g,4 |
  }
  \repeat percent 4 {
    aes4 r8 ees'8 r4 aes,4 |
  }

  \break

  \mark \markup \box \bold "2"
  \repeat percent 4 {
    g4 r8 d'8 r4 g,4 |
  }
  \break
  \repeat percent 4 {
    aes4 r8 ees'8 r4 aes,4 |
  }

  g2 -"continue pattern, last time hold" r2 \bar "|."
}


%layout

\book {
  \score {
    <<
      \set Score.rehearsalMarkFormatter = #format-mark-box-numbers

      % Group: Melody
      \new Staff \with { \consists "Volta_engraver" instrumentName = "Melody" } {
        \override Score.RehearsalMark.self-alignment-X = #LEFT
        \melody
      }

      % Group: Tenor
      \new Staff \with { \consists "Volta_engraver" instrumentName = "Tenor" } {
        \override Score.RehearsalMark.self-alignment-X = #LEFT
        \tenor
      }


      % Group: Bass
      \new Staff \with { \consists "Volta_engraver" instrumentName = "Bass" } {
        \override Score.RehearsalMark.self-alignment-X = #LEFT
        \clef bass
        \bass
      }

    >> \layout { \context { \Score \remove "Volta_engraver" } }
  }
}

\book {
  \header { poet = "MIDI" }
  \score {
    <<
      \tempo 4 = 200
      \unfoldRepeats
      \new Staff {
        \set Staff.midiInstrument = #"trumpet"
        \melody
      }

      \unfoldRepeats
      \new Staff {
        \set Staff.midiInstrument = #"trombone"
        \tenor
      }

      \unfoldRepeats\new Staff {
        \set Staff.midiInstrument = #"tuba"
        \bass
      }
    >>
    \midi { }
  }
}
