\version "2.18.2"

\header {
  tagline = "3/16/2015"
  title = "Miserlou"
  composer = "Michalis Patrinos"
  %copyright = \markup {\bold { "Default Form:" }  "Vamp, Head, 2, Head, 2, Bridge, Solos/Drum break, Head, 2"}
}
% \include "include.ly"
%description:Greek <a href="http://en.wikipedia.org/wiki/Rebetiko">Rebetiko</a> folk song dating back to at least 1927, claimed by many composers and cultures, with many Arabic, Jewish (<a href="http://en.wikipedia.org/wiki/Klezmer">Klezmer</a>) and Turkish versions, but best known today through <a href="http://en.wikipedia.org/wiki/Dick_Dale">Dick Dale</a>'s 1962 American surf rock interpretation. (From <a href="http://en.wikipedia.org/wiki/Misirlou">wikipedia entry</a>.)

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }

%music pieces
%part: melody
melody = {
  \relative c' {
    \override Glissando.style = #'zigzag
    \bar "[|:"
    \repeat volta 2 {
      d4. ees8 fis4 g | a4. bes8 cis4 bes | a1~ | a\glissando |
      d,4. ees8 fis4 g | a4. bes8 cis4 bes | a1~ | a |
      \break
      bes8 a4 bes8 a4 g | a8 g4 a8 g4 fis | fis1~ | fis |
      a8 g4 a8 g4 fis | g8 fis4 g8 fis4 ees | d1~ |
    }
    \alternative {
      { d1^\markup \box "Fine" | \bar ":|]"}
      { r8 d des d ees e f fis \bar ":|]"}
    }
    \break
    g1~ | g2. fis8 g | a1~ | a2. g8 a |
    bes2. a8 bes | cis2 bes4 cis | d1~ | d |
    \break
    ees8 d4 ees8 d4 c4 | d8 c4 d8 c4 bes | a1~ a1 |
    c8 bes4 c8 bes4 a | a8 fis~ fis2 ees4 | d1~ | d ^\markup "D.C. al Fine" \bar ":|." |
  }
}

%part: tenor
tenor = {
  \relative c' {
    \bar "[|:"
    \repeat volta 2 {
      \repeat percent 8 {
        r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
      }
      \break
      r4 <ees g c>8 <ees g c> r <ees g c> <ees g c> <ees g c> |
      r4 <ees g c>8 <ees g c> r <ees g c> <ees g c> <ees g c> |
      r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
      r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
      r4 <ees g c>8 <ees g c> r <ees g c> <ees g c> <ees g c> |
      r4 <ees g c>8 <ees g c> r <ees g c> <ees g c> <ees g c> |
      r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    }
    \alternative {
      { r4^\markup \box "Fine" <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> | \bar ":|]"}
      { r8 d des d ees e f fis |\bar ":|]"}
    }
    \break
    r4 <d g bes>8 <d g bes> r <d g bes> <d g bes> <d g bes> |
    r4 <d g bes>8 <d g bes> r <d g bes> <d g bes> <d g bes> |
    r4 <c f a>8 <c f a> r <c f a> <c f a> <c f a> |
    r4 <c f a>8 <c f a> r <c f a> <c f a> <c f a> |
    r4 <ees g bes>8 <ees g bes> r <ees g bes> <ees g bes> <ees g bes> |
    r4 <ees g bes>8 <ees g bes> r <ees g bes> <ees g bes> <ees g bes> |
    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |

    \break

    r4 <d g bes>8 <d g bes> r <d g bes> <d g bes> <d g bes> |
    r4 <d g bes>8 <d g bes> r <d g bes> <d g bes> <d g bes> |
    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    r4 <ees g c>8 <ees g c> r <ees g c> <ees g c> <ees g c> |

    r4 <ees g c>8 <ees g c> r <ees g c> <ees g c> <ees g c> |

    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    r4^\markup "D.C. al Fine" <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> \bar ":|."|

  }
}

%part: bass
bass = {
  \relative c {
    \bar "[|:"
    \repeat volta 2 {
      \repeat percent 8 {
        d,4. fis a4 |
      }
      \break
      c,4. ees g4 | c,4. ees g4 | d4. fis a4 | d,4. fis a4 |
      c,4. ees g4 | c,4. ees g4 | d4. fis a4 |
    }
    \alternative {
      {d,4.^\markup \box "Fine" fis a4 | \bar ":|]"}
      { r8 d, des d ees e f fis |\bar ":|]"}
    }
    \break
    g4. bes d4 | | g,4. bes d4 | f,4. a c4 | f,4. a c4 |
    ees,4. g bes4 | ees,4. c ees4 | d4. fis a4 | d,4. fis a4
    \break
    ees4. g bes4 | ees,4. g bes4  | d,4. fis a4 | d,4. fis a4 |
    c,4. ees g4 | c,4. ees g4 | d4. fis a4 | d,4.^\markup "D.C. al Fine" fis a4 \bar ":|."|
  }
}

%part: changes
changes = \chordmode {
    \bar "[|:"
    \repeat volta 2 {
      \repeat percent 8 {
        d1
      }
      \break
      c1:m | c1:m | d1 | d1
      c1:m | c1:m | d1 |
    }
    \alternative {
      {d1 | \bar ":|]"}
      {d1 |\bar ":|]"}
    }
    \break
    g1:m | g1:m | f1 | f1 
    ees1 | ees1 | d1 | d1
    \break
    ees1 | ees1 | d1 | d1
    c1:m | c1:m | d1 | d1 \bar ":|."|
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
        \tempo  4 = 200
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

    %\midi { }
    \layout { \context  {  \Score  \remove "Volta_engraver" } }
  }
}

\book {
  \score  {
    \unfoldRepeats
    <<
      \set Score.markFormatter = #format-mark-box-numbers
      \transpose c c \new ChordNames { \set chordChanges = ##t \changes }

      \new Staff \with { \consists "Volta_engraver" } {
        \set Staff.midiInstrument = #"trumpet" \clef treble
        \tempo  4 = 200
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
    \layout { \context  {  \Score  \remove "Volta_engraver" } }
  }
}