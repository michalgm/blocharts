\version "2.12.3"
\header {
  tagline = "2/5/2026"
  source = ""
  style = ""
  lastupdated = ""
  title = "Cariñito"
  composer = "Los Hijos del Sol"
  arranger = "Bruno Soria"
  copyright = \markup {\bold { "Form:" }  "Intro, Verse, Chorus, Intro, Verse, Chorus, Drums, Intro, Coda"}
}

%description: This song was arranged by our sister band, the <a href="https://rudemechanicalorchestra.org/">Rude Mechanical Orchestra</a>. Cariñito is a chicha (peruvian cumbia). It's a love song, and was first made popular by the band Los Hijos del Sol in Peru a few decades ago. Today, it is well known in Peru, Bolivia, and Ecuador, and all sorts of acts – from cumbia bands to rock bands to folk singers – play their own renditions. People from those countries never fail to recognize it when we play it on the streets. 

%part: melody
melody = \relative c' {
  \key d\minor
  \time 4/4
  \compressEmptyMeasures
  \section
  \sectionLabel \markup { \bold \box "Intro"}
  \repeat volta 2 {
    R1*4

    d8. a16 d4-.  r  c8 d  |  f8. c16 f4-.  r2  |  f8. c16 f4-.  r8. f16  a8 g16 f  | d8. a16 d4-.  r8. a'16 a8-. g16 e |
    f16 g8-. f16  f16 g8-. f16   f16 g8-. a16   a8-. g16 e |  f16 g8-. f16  f16 g8-. f16   f16 g8-. a16   a8-. g16 e |
    f16 g8-. f16  f16 g8-. f16   f16 g8-. g16   g8-. f16 e |  d16 f8-. d16   d16 f8-. d16   d8-. r16 a'16 a8-. g16 e |
    f16 g8-. f16  f16 g8-. f16   f16 g8-. <a c>16 <a c>8-. <g bes>16 <e g> |
    <f a>16 <g bes>8-. <f a>16 <f a>16 <g bes>8-. <f a>16   <f a>16 <g bes>8-. <a c>16  <a c>8-. <g bes>16 <e g> |
    <f a>16 <g bes>8-. <f a>16  <f a>16 <g bes>8-. <f a>16  <f a>16 <g bes>8-. <g bes>16   <g bes>8-. <f a>16 <e g> |
    <d f>16 <f a>8-. <d f>16   <d f>16 <f a>8-. <d f>16   a'16 g a g  f8-. d-.^"Last time to Coda"

    \break
    \section
    \sectionLabel \markup { \bold \box "Verse" }
    d8.-.\mf\<  a16 r4   r c8 d  |  f8.-. c16  r4 r f8 g  | a4.\f\! c8  g4.  a8 |  f8. d16  r4 r2  |
    d8.-.\mf\<  a16 r4   r c8 d  |  f8.-. c16  r4 r f8 g  | a4.\f\! c8  g4.  a8 |  f8. d16  r4 r2  |

    \break
    \section
    \sectionLabel \markup { \bold \box "Chorus"  }
    d'2.\f   c4  | c8. a16 ~ a8 r8  r2  |  d2.   c4  | c8. a16 ~ a8 r8  r2  |
    a8.-.\mp\< e16  r4 r a8 g  | a8.-. f16  r4 r f8 g  |  a4.\f\! c8  g4.  a8 |  f8. d16  r4 r2  |
    a'8.-.\mp\< e16  r4 r a8 g  | a8.-. f16  r4 r f8 g  |  a4.\f\! c8  g4.  a8 |  f8. d16  r4 r2  |

  } % end repeat

  \break
  \section
  \sectionLabel \markup { \bold \box "Drums, then D.C."}
  \break R1*16


  \bar "||"

%%%%%% CODA
  r4\coda e2.  |  f8.-. f16 f4-.  r2
  \bar "|."

} % END PART

%part: countermelodyHigh
countermelodyHigh = \relative c' {
  \key d\minor
  %  \override Staff.TimeSignature   #'style = #'numbered
  \time 4/4
  \compressEmptyMeasures
  \section
  \sectionLabel \markup { \bold \box "Intro"}
  \repeat volta 2 {
    R1*4

    r4 r8.  c'16  a g a g   f d d8-. | r4 r8.  g16  a c c c  a8-. g16 e  |
    f8-. r  r8.  g16  a c c c  a8-. g16 e  | f8-. r  r4  r8.  a16 a8-. g16 e

    f16 g8-. f16  f16 g8-. f16   f16 g8-. a16   a8-. g16 e |  f16 g8-. f16  f16 g8-. f16   f16 g8-. a16   a8-. g16 e |
    f16 g8-. f16  f16 g8-. f16   f16 g8-. g16   g8-. f16 e |  d16 f8-. d16   d16 f8-. d16   d8-. r16 a'16 a8-. g16 e |
    f16 g8-. f16  f16 g8-. f16   f16 g8-. <a c>16 <a c>8-. <g bes>16 <e g> |


    <f a>16 <g bes>8-. <f a>16 <f a>16 <g bes>8-. <f a>16   <f a>16 <g bes>8-. <a c>16  <a c>8-. <g bes>16 <e g> |
    <f a>16 <g bes>8-. <f a>16  <f a>16 <g bes>8-. <f a>16  <f a>16 <g bes>8-. <g bes>16   <g bes>8-. <f a>16 <e g> |
    <d f>16 <f a>8-. <d f>16   <d f>16 <f a>8-. <d f>16   a'16 g a g  f8-. d-.^"Last time to Coda"

    \break
    \section
    \sectionLabel \markup { \bold \box "Verse" }
    r8. \acciaccatura  c16 d  r  \acciaccatura  c16 d8-. a16  r \acciaccatura d8 c-. f16 f8-. r |
    r8. d16  f8-. d16 g   r \acciaccatura g  a8-. a16  a8-. r  | e'16 f e f  e f e f  c e c e  c e c8-. |
    d8.-.  f16   d c a g   f d f g  a8-. g16 f  |

    e8-. r16  \acciaccatura  c16 d  r  \acciaccatura  c16 d8-. a16  r \acciaccatura d8 c-. f16 f8-. r |
    r8. d'16  f8-. d16 g   r \acciaccatura g  a8-. a16  a8-. r  | e16 f e f  e f e f  c e c e  c e c8-. |
    d4-.  r16 \acciaccatura e  f8-. d16   r f, g a  b c d e |

    \break
    \section
    \sectionLabel \markup { \bold \box "Chorus"  }
    d2.\f  c4  | c8. a16 ~ a8 r  r2 |  d2.\f  c4  | c8. a16 ~ a8 r  r16 f f8\mp\<  e d |
    a'8-. a-.  a16 a a-. a   r a-. a-. a   r a-. a8-.  |  a8-. a-.  a16 a a-. a   r a-. a-. a   r a-. a8-.  |
    f2\f\!  e  |  d2  r16 f f8\mp\<  e d |
    a'8-. a-.  a16 a a-. a   r a-. a-. a   r a-. a8-.  |  a8-. a-.  a16 a a-. a   r a-. a-. a   r a-. a8-.  |
    f2\f\!  e  |  d2  r

  } % end repeat
  \section
  \sectionLabel \markup { \bold \box "Drums, then D.C."}
  \break R1*16


%%%%%% CODA
  r4\coda e2.  |  f8.-. f16 f4-.  r2
  \bar "|."

} % END PART

%part: countermelodyLow
countermelodyLow = \relative c' {
  \key d\minor
  %  \override Staff.TimeSignature   #'style = #'numbered
  \time 4/4
  \compressEmptyMeasures
  \section
  \sectionLabel \markup { \bold \box "Intro"}
  \repeat volta 2 {
    R1*4

    r4 r8.  c'16  a g a g   f d d8-. | r4 r8.  g16  a c c c  a8-. g16 e  |
    f8-. r  r8.  g16  a c c c  a8-. g16 e  | f8-. r  r4  r8.  a16 a8-. g16 e

    f16 g8-. f16  f16 g8-. f16   f16 g8-. a16   a8-. g16 e |  f16 g8-. f16  f16 g8-. f16   f16 g8-. a16   a8-. g16 e |
    f16 g8-. f16  f16 g8-. f16   f16 g8-. g16   g8-. f16 e |  d16 f8-. d16   d16 f8-. d16   d8-. r16 a'16 a8-. g16 e |
    f16 g8-. f16  f16 g8-. f16   f16 g8-. <a c>16 <a c>8-. <g bes>16 <e g> |


    <f a>16 <g bes>8-. <f a>16 <f a>16 <g bes>8-. <f a>16   <f a>16 <g bes>8-. <a c>16  <a c>8-. <g bes>16 <e g> |
    <f a>16 <g bes>8-. <f a>16  <f a>16 <g bes>8-. <f a>16  <f a>16 <g bes>8-. <g bes>16   <g bes>8-. <f a>16 <e g> |
    <d f>16 <f a>8-. <d f>16   <d f>16 <f a>8-. <d f>16   a'16 g a g  f8-. d-.^"Last time to Coda"

    \break
    \section
    \sectionLabel \markup { \bold \box "Verse" }
    r8. \acciaccatura  c16 d  r  \acciaccatura  c16 d8-. a16  r \acciaccatura d8 c-. f16 f8-. r |
    r8. d16  f8-. d16 g   r \acciaccatura g  a8-. a16  a8-. r  | e16 f e f  e f e f  c e c e  c e c8-. |
    d8.-.  f16   d c a g   f d f g  a8-. g16 f  |

    e'8-. r16  \acciaccatura  c16 d  r  \acciaccatura  c16 d8-. a16  r \acciaccatura d8 c-. f16 f8-. r |
    r8. d16  f8-. d16 g   r \acciaccatura g  a8-. a16  a8-. r  | e16 f e f  e f e f  c e c e  c e c8-. |
    d4-.  r16 \acciaccatura e  f8-. d16   r f g a  b c d e |

    \break
    \section
    \sectionLabel \markup { \bold \box "Chorus"  }
    d2.\f  c4  | c8. a16 ~ a8 r  r2 |  d2.\f  c4  | c8. a16 ~ a8 r  r16 f f8\mp\<  e d |
    a'8-. a-.  a16 a a-. a   r a-. a-. a   r a-. a8-.  |  a8-. a-.  a16 a a-. a   r a-. a-. a   r a-. a8-.  |
    f2\f\!  e  |  d2  r16 f f8\mp\<  e d |
    a'8-. a-.  a16 a a-. a   r a-. a-. a   r a-. a8-.  |  a8-. a-.  a16 a a-. a   r a-. a-. a   r a-. a8-.  |
    f2\f\!  e  |  d2  r

  } % end repeat
  \section
  \sectionLabel \markup { \bold \box "Drums, then D.C."}
  \break R1*16


%%%%%% CODA
  r4\coda e2.  |  f8.-. f16 f4-.  r2
  \bar "|."

} % END PART



%part: bass
bass = \relative c {
  \key d\minor
  %  \override Staff.TimeSignature   #'style = #'numbered
  \time 4/4
  \compressEmptyMeasures
  \section
  \sectionLabel \markup { \bold \box "Intro"}
  \repeat volta 2 {
    d8. a16 d4-.  r  c8 d  |  f8. c16 f4-.  r2  |  f8. c16 f4-.  r8. f16  a8 g16 f  | d8. a16 d4-.  r2

    d8. a16 d4-.  r  c8 d  |  f8. c16 f4-.  r2  |  f8. c16 f4-.  r8. f16  a8 g16 f  | d8. a16 d4-.  r16 c c8 d e

    f4  c8 f f,4 c'8 f  | f,4  c'8 f f,4 c'8 f  | f,4  c'8 f f,4 c'8 f  | d4 a8 a  d4 c8 d |
    f4  c8 f f,4 c'8 f  | f,4  c'8 f f,4 c'8 f  | f,4  c'8 f f,4 c'8 f  | d4 a8 a  d a bes c^"Last time to Coda"
    \bar "||"

    \break
    \section
    \sectionLabel \markup { \bold \box "Verse" }
    d4 a8 d  f,4 c'8 d  |  f4 c8 f  f,4  c'8 f  | f,4  c'8 c  a4 d8 a'  |  d,4 c8 d  r16 f,16 f8  g a  |
    d4 a8 d  f,4 c'8 d  |  f4 c8 f  f,4  c'8 f  | f,4  c'8 c  a4 d8 a'  |  d,4 c8 d  r16 f,16 f8  g a  |

    \break
    \section
    \sectionLabel \markup { \bold \box "Chorus"  }
    bes8.  f'16 ~ f8 a  c,8. g'16 ~ g8 c  |  a8. f16 ~ f8 a  r16 f16 f8  g8 a |
    bes,8.  f'16 ~ f8 a  c,8. g'16 ~ g8 c  |  a8. f16 ~ f8 a  r16\mp\< f16 f8  g8 a |


    a,8. e'16 ~ e8 a  a,8. e'16 ~ e8 a  | d,8. f16 ~ f8 a  d, c d e  |
    f8.\f\! c16 ~ c8 bes  a8. e'16 ~ e8 a  | d,	8. a16 ~ a8 d  r16 a'\mp\< a8 g a

    a,8. e'16 ~ e8 a  a,8. e'16 ~ e8 a  | d,8. f16 ~ f8 a  d, c d e  |
    f8.\f\! c16 ~ c8 bes  a8. e'16 ~ e8 a  | d,	8. a16 ~ a8 d  r16 a a8  bes c


  } % end repeat
  \section
  \sectionLabel \markup { \bold \box "Drums, then D.C."}
  \break R1*16


%%%%%% CODA
  r4\coda e2.  |  f8.-. f16 f4-.  r2
  \bar "|."

} % END PART



%part: changes
changes = \chordmode {

% INTRO
d1:m

} % END CHORDS  last bracket before layout-- end of last part


%%Generated layout
#(set-default-paper-size "letter")
\book {
  \score {
    <<
      \transpose c c \new ChordNames { \set chordChanges = ##t \changes }
      \new Staff \with { \consists "Volta_engraver" } {
        \tempo 4=100
        \set Staff.midiInstrument = #"trumpet" \clef treble
        \override Score.RehearsalMark.self-alignment-X = #LEFT

        \melody
      }
      \new Staff \with { \consists "Volta_engraver" } {
        \tempo 4=100

        \set Staff.midiInstrument = #"tenor sax" \clef treble
        \override Score.RehearsalMark.self-alignment-X = #LEFT

        \countermelodyHigh
      }
      \new Staff \with { \consists "Volta_engraver" } {
        \tempo 4=100

        \set Staff.midiInstrument = #"alto sax" \clef treble
        \override Score.RehearsalMark.self-alignment-X = #LEFT

        \countermelodyLow
      }
      \new Staff \with { \consists "Volta_engraver" } {
        \tempo 4=100

        \set Staff.midiInstrument = #"tuba" \clef bass
        \override Score.RehearsalMark.self-alignment-X = #LEFT

        \bass
      }
    >> \layout { \context { \Score \remove "Volta_engraver" } }
    \midi { }
  }
}