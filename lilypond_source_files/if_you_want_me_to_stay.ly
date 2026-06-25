
\version "2.12.3"

\header {
  tagline = "12/1/2013"

  title = "If You Want Me To Stay"
  composer = "Sly Stone, 1973"
  arranger = \markup {\tiny "Arr: Jeff Giaquinto"}

  copyright = \markup {\bold ""} %form
}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }
voltaFirstOnly = \markup { 1. }

%music pieces
%part: melody
melody = \relative c' {

  \time 4/4 \key bes \minor
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'self-alignment-X = #LEFT

  \break \mark \markup \box \bold "Longtones"
  \repeat volta 2 {
    <des f as>1  |  <c es ges>2  <c f as>  |
    <des f bes>1  |  <es as c>2  <es a c>  |
  }
  \break \mark \markup \box \bold "Vamp"
  <bes des f as>4 r2.  |  r1  |  r  |  r2.  bes'8 bes  |
  \break \mark \markup \box \bold "Head"
  \repeat volta 2 {
    des8 bes  bes bes  r f  es des  |
    des4  bes8 f'  r des  des bes  |
    des des  des bes  des4  bes8 f'~  |
    f4 r2  bes8 bes  |
    \break
    des des4 bes8  r4  f   |
    des4  bes8 f'  r des  des bes  |
    des des  r  bes  des bes  bes f'~  |
    f4 r2 bes8 bes  |
  }

  %{
    r8 es4 des8 bes r  des,8 des16 bes  |
    des4 es8 f r4 bes,8 des |
    es es des4 des8 es des f~ |
    f4 r2 bes8 bes  |
    %f'16 es8.~  es16 des8 bes16~ bes4  r8. as16 |
    f'8 ees4 des bes8 r8. as16 |
    %bes as bes as   bes as8 f16~  f16 es8. r8 des16 des  |
    bes8 bes16 as bes as r8 f16 es8. r8 des16 des |
    es8 des des4  des8 es  des f |
    r2 r8 bes  bes bes  |
  %}
  \break \mark \markup \box \bold "Hits"
  \repeat volta 2 {
    <bes, des f aes>4 r r8 <bes des f aes>4 <a c e g>8 |
    <aes c ees ges>4 r r8 <aes c f>4 <g b d f>8 |
    <ges bes des f>4 r r8 <ges bes des f>4 <ges bes des f>8 |
    <f aes c ees>2 <a c ees a> |
  }

  %{
    \break \mark \markup \box \bold "Chorus"

    d'4~ d16 c bes g~  g8 g  g f  |  c4 bes8 d  r bes bes g  |
    bes bes r4  r8 g16 g bes bes g8  |  g f~  f4  r8  g'  g g  |
    bes bes4 g8~  g4  c,8  c16 bes  |  c8 c bes d  r4 c16 c8 bes16
    c16 bes8. c8 bes  c c  r d~  | d4 r4 r8 g bes c
    d  c16 bes   c c d bes~  bes8 g  g f  |  d bes4 c8~ c4  bes8 g |
    bes8 r  bes bes  bes c  bes  d  | r d4 d8~ d4 g16 g8.
    bes4 c8 bes  c bes16 c~  c d bes8~ | bes2 r4  c,8 bes
    c bes  bes bes  bes c bes d~  |  d4 g  g8 bes  c d~ | d c16 bes~ bes8 r8  g16 g8 g16~ g8 f
    c bes4 c8 r4 c8 bes  |  c bes c bes  c c4 d8 |  r4 cis'16 d8.~ d2  |
    c16 bes g8~ g4 r2  |  r1 | r | r |


    \break \mark \markup \box \bold "Bridge"
    \repeat volta 2 {
    a4. f16 d~  d4 r  |  f4. d8  bes4. r16  c16~  |
    c8 bes8~ bes  r16  f'16~  f8 d~ d8 r |  c8 d c d  fis d fis d
    }
  %}

}

%part: riffA
riffA= \relative c' {
  \time 4/4 \key bes \minor
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \set Score.markFormatter = #format-mark-box-letters

  \break \mark \markup \box \bold "Longtones"
  \repeat volta 2 {
    <des f as>1  |  <c es ges>2  <c f as>  |
    <des f bes>1  |  <es as c>2  <es a c>  |
  }
  %  bes'4. g16 es~ es4 
  \break \mark \markup \box \bold "Vamp"
  <bes des f as>4 r2.  |  r1  |  r  | r1 |

  \break \mark \markup \box \bold "Head"
  \repeat volta 2 {
    r2. r8 bes'~ | bes as4  f8~ f es16 des  es f8 des16~  |
    des2. r8 as'~  |  as f4 es8~ es es16 des  es f8 bes,16~  |
    bes2 r4.  bes'8~ | bes as4  f8~ f es16 des  es f8 des16~  |
    des2. r8 as'~  |  as f4 es8~ es es16 des  es f8 bes,16  |
  }

  \break \mark \markup \box \bold "Hits"
  \repeat volta 2 {
    <bes des f aes>4 r r8 <bes des f aes>4 <a c e g>8 |
    <aes c ees ges>4 r r8 <aes c f>4 <g b d f>8 |
    <ges bes des f>4 r r8 <ges bes des f>4 <ges bes des f>8 |
    <f aes c ees>2 <a c ees a> |
  }
  %{
    \break \mark \markup \box \bold "Chorus"

    g2 r4.  g'8~ | g f4  d8~ d c16 bes  c d8 bes16~  |
    bes2. r8 f'~  |  f d4 c8~ c16 c bes8  c16 d bes8  |
    g2 r4.  g'8~ | g f4  d8~ d c16 bes  c d8 bes16~  |
    bes2. r8 f'~  |  f d4 c8~ c16 c bes8  c16 d bes8  |
    g2 r4.  g'8~ | g f4  d8~ d c16 bes  c d8 bes16~  |
    bes2. r8 f'~  |  f d4 c8~ c16 c bes8  c16 d bes8  |
    g2 r4.  g'8~ | g f4  d8~ d c16 bes  c d8 bes16~  |
    bes2. r8 f'~  |  f d4 c8~ c16 c bes8  c16 d bes8  |
    g2 r4.  g'8~ | g f4  d8~ d c16 bes  c d8 bes16~  |
    bes2. r8 f'~  |  f d4 c8~ c16 c bes8  c16 d bes8  |
    g2 r4.  g'8~ | g f4  d8~ d c16 bes  c d8 bes16~  |
    bes2. r8 f'~  |  f d4 c8~ c16 c bes8  c16 d bes8  |


    \break \mark \markup \box \bold "Bridge"
    \repeat volta 2 {
    <bes d f>1  |  <a c es>2  <a d f>  |
    <bes d g>1  |  <c f a>2  <c fis a>  |
    }
  %}
}


%FAKEpart: riffB
%{
  riffB = \relative c' {
  \time 4/4 \key bes \minor
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \set Score.markFormatter = #format-mark-box-letters

  \break \mark \markup \box \bold "Longtones"
  \repeat volta 2 {
  <des f as>1  |  <c es ges>2  <c f as>  |
  <des f bes>1  |  <es as c>2  <es a c>  |
  }
  %  bes'4. g16 es~ es4
  |    <bes des f as>4 r2.  |  r1  |  r  | r1 |

  \break \mark \markup \box \bold "Head"

  | r1  |  r  |  r  |  r  |
  | r1  |  r  |  r  |  r  |
  | r1  |  r  |  r  |  r  |
  | r2. r8 <bes' des> |  r2. r16 bes,des f~ |
  | f es8.  r16 des es as~   as f8. r4  | as16 f as f r2. |

  \break \mark \markup \box \bold "Hits"
  bes 4 r r8 bes4 a8 | aes4 r r8 aes4 g8 | ges4 r r8 ges4 ges8 | f2 a |

  {
  break \mark \markup \box \bold "Chorus"
  | <d g bes>4 r2 r8 <g bes> |  r2. r16 g, bes d~ |
  | d c8.  r16 bes c f~   f d8. r4  | f16 d f d r2. |

  | <d g bes>4 r2 r8 <g bes> |  r2. r16 g, bes d~ |
  | d c8.  r16 bes c f~   f d8. r4  | f16 d f d r2. |

  | <d g bes>4 r2 r8 <g bes> |  r2. r16 g, bes d~ |
  | d c8.  r16 bes c f~   f d8. r4  | f16 d f d r2. |

  | <d g bes>4 r2 r8 <g bes> |  r2. r16 g, bes d~ |
  | d c8.  r16 bes c f~   f d8. r4  | f16 d f d r2. |

  | <d g bes>4 r2 r8 <g bes> |  r2. r16 g, bes d~ |
  | d c8.  r16 bes c f~   f d8. r4  | f16 d f d r2. |

  | <d g bes>4 r2 r8 <g bes> |  r2. r16 g, bes d~ |
  | d c8.  r16 bes c f~   f d8. r4  | f16 d f d r2. |


  \break \mark \markup \box \bold "Bridge"
  \repeat volta 2 {
  <bes d f>1  |  <a c es>2  <a d f>  |
  <bes d g>1  |  <c f a>2  <c fis a>  |
  }
  }

%}
%part: bass
bass = \relative c {
  \time 4/4 \key bes \minor
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \set Score.markFormatter = #format-mark-box-letters

  \break \mark \markup \box \bold "Longtones"
  \repeat volta 2 {
    | bes1  |  as2 des  |  ges,1  |  f2 f  |
  }
  \break \mark \markup \box \bold "Vamp"
  bes,8 bes  bes bes  bes bes  bes a  |  as as  as es'  des des  des f | ges ges  ges ges ges ges es es  as as f f  c' c ces ces

  \break \mark \markup \box \bold "Head"
  \repeat volta 2 {
    \repeat percent 2 {
      bes16 bes bes,8  bes bes  bes bes  bes a  |  as as  as es'  des des  des f | ges ges  ges ges ges ges es es  as as f f  c' c ces ces
    }
  }
  \break \mark \markup \box \bold "Hits"
  \repeat volta 2 {

    bes 4 r r8 bes4 a8 | aes4 r r8 aes4 g8 | ges4 r r8 ges4 ges8 | f2 f |
  }

  %{
    \break \mark \markup \box \bold "Chorus"
    g16 g g,8  g g  g g  g fis  |  f f  f c'  bes bes  bes d | es es  es es es es c c  f f d d  a' a as as
    g16 g g,8  g g  g g  g fis  |  f f  f c'  bes bes  bes d | es es  es es es es c c  f f d d  a' a as as
    g16 g g,8  g g  g g  g fis  |  f f  f c'  bes bes  bes d | es es  es es es es c c  f f d d  a' a as as
    g16 g g,8  g g  g g  g fis  |  f f  f c'  bes bes  bes d | es es  es es es es c c  f f d d  a' a as as

    g16 g g,8  g g  g g  g fis  |  f f  f c'  bes bes  bes d | es es  es es es es c c  f f d d  a' a as as
    g16 g g,8  g g  g g  g fis  |  f f  f c'  bes bes  bes d | es es  es es es es c c  f f d d  a' a as as

    \break \mark \markup \box \bold "Bridge"
    \repeat volta 2 {
    g16 g g,8  g g  g g  g fis  |  f f  f c'  bes bes  bes d | es es  es es es es c c  f f d d  a' a as as
    }
  %}
}

%part: words
words = \markup { }

%part: changes
changes = \chordmode {
  \break \mark \markup \box \bold "Longtones"

  bes1:m7  |
  as2:7 \set majorSevenSymbol = \markup { "Maj 7" }  des2:maj7  |
  ges1:maj7 |
  f2:m7  f2:7  |

  bes1:m7  |
  as2:7 \set majorSevenSymbol = \markup { "Maj 7" }  des2:maj7  |
  ges1:maj7 |
  f2:m7  f2:7  |
  bes1:m7  |
  as2:7 \set majorSevenSymbol = \markup { "Maj 7" }  des2:maj7  |
  ges1:maj7 |
  f2:m7  f2:7  |
  bes1:m7  |
  as2:7 \set majorSevenSymbol = \markup { "Maj 7" }  des2:maj7  |
  ges1:maj7 |
  f2:m7  f2:7  |
  bes1:m7  |
  as2:7 \set majorSevenSymbol = \markup { "Maj 7" }  des2:maj7  |
  ges1:maj7 |
  f2:m7  f2:7  |


}


%%Generated layout
#(set-default-paper-size "letter")
\book {
  \score { <<
    \set Score.markFormatter = #format-mark-box-numbers

    \transpose c c \new ChordNames { \set chordChanges = ##t \changes }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"trumpet" \clef treble
      \tempo    4 = 110
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \melody
    }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"alto sax" \clef treble
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \riffA
    }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"tuba" \clef bass
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \bass
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } }
  }
}

\book {
  \score { <<
    \set Score.markFormatter = #format-mark-box-numbers

    \unfoldRepeats  \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"trumpet" \clef treble
      \tempo    4 = 110
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \melody
    }
    \unfoldRepeats \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"alto sax" \clef treble
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \riffA
    }
    \unfoldRepeats \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"tuba" \clef bass
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \bass
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } }
           \midi {}
  }
}
