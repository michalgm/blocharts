\version "2.12.3"

\header {
  title = "Matador"
  composer = "Los Fabuloso Cadilacs"
  arranger =  "arr. Marini"
  tagline = "8/25/12" %date of latest edits
  copyright = \markup {\bold ""} %form
}

%description: Frequently-covered samba-rock tune by Los Fabulosos Cadillacs, from their 1993 album <i>Vasos Vac&iacute;os</i>.

% music pieces
%part: melody
melody = \relative c' {
  \time 2/2 \key c \major
  \partial 4 r

  \mark \default %A
  {
    a'8 \mf a r a c4 c8 e ~ |
    e r d4 e d |
    e4. c8 ~ c4 r |
    R1 |
    r8 d d d d f r e |
    r b r b c4 b |
    c4. a8 ~ a4 r |
    R1 |
    r8 d r d d f r e |
    r b r4 r8 b r b |
    c4 b8 c r c r d |
    e4 r r8 a, ~ a b |
    c c r c d4 c8 b |
    r e, e e c'4 d8 c |
    a4 r a8\f a r a |
    e'1 |
    r2 a,8 a r f' |
    e1 |
    r2 a,8 a r a |
    e'1 |
    r2 a,8 a r f' |
    e1 |
  }

  \break \mark \default %B
  {
    a,8-. a-. a-. a-. a4 c8-. c-.|
    c4 a8-. a-. a4 r4 |
    a8-. a-. a-. a-. a4 c8-. c-.|
    c4 a8-. a-. a4 r4 |
    a8-. a-. a-. a-. a4 c8-. c-.|
    c4 a8-. a-. a4 r4 |
    a8-. a-. a-. a-. a4 c8-. c-.|
    c4 a8-. a-. a4 r4 |
  }
  \break \mark \default %C
  {
    r1 \mf  r1  r1 |
    \override NoteHead #'style = #'cross
    e'4_"Hey!" r e_"Hey!" r |
    \override NoteHead #'style = #'default
    c8_"cresc." c c c b4 c |
    r2 a8 b c b|
    c c c c b4 c |
    \override NoteHead #'style = #'cross
    e4_"Hey!" r e_"Hey!" r |
    \override NoteHead #'style = #'default
    <c e>8 <c e> <c e> <c e> <b d>4 <c e>|
    r2 <a c>8 <b d> <c e> <b d>|
    <c e>8 <c e> <c e> <c e> <b d>4 <c e>|
    r2 r4 e8 f |
  }
  \break \mark \default %D
  {
    e2.\ff e8 f |
    e2. r4 |
    d8 d d d e4-. f8 e ~|
    e2 r4 e8 f |
    e2. e8 f |
    e2. r4 |
    d8 d d d e4-. f8 e ~ |
    e2 r8 e r e |
    g4 f8 e f4 e8 d |
    e4 d8 c d4 c8 b |
    c2 r8 f r f |
    r e ~ e4 r e8 f |
    e2. e8 f |
    e2. r4 |
    d8 d d d e4-. f8 e ~|
    e4 r4 r2 |
  }

  \break \mark "Solos"
  {
    <a,, c e>8 <a c e> <a c e> <a c e> <a c e>4 <c e g>8 <c e g> | 
    <c e g>4 <a c e>8 <a c e> <a c e>4 r |
  }

}

%part: tenor
tenor = \relative c' {
  \time 2/2 \key c \major
  \partial 4 <a' c e>8 ^^ <a c e> ^^
  \mark \default %A
  {
    R1*2
    r4 <a c e> ^. r <a c e> ^. |
    r <a c e> ^. r <a c e> ^. |
    r <a d f> r <a d f> |
    r <gis b e> r <gis b e> |
    r4 <a c e> ^. r <a c e> ^. |
    r <a c e> ^. r <a c e> ^. |
    r <a d f> r <a d f> |
    r <gis b e> r <gis b e> |
    r4 <a c e> ^. r <a c e> ^. |
    r <a c e> ^. r <a c e> ^. |
    r <a d f> r <a d f> |
    r <gis b e> r <gis b e> |
    e'1 \mp ( |
    b |
    c2 d4 f |
    e2 c4 b |
    e1 |
    b |
    c2 d4 f |
    e d c b
  }
  \break \mark \default %B
  {
    a1 ) ( |
    e ) |
    d2 e4 a |
    e1 |
    a |
    e |
    d2 e4 a |
    e2 r4 <a c e>8 ^^ <a c e> ^^
  }
  \break \mark \default %C
  {
    a _. a \mf _. a _. a _. g4 _"cresc." _- a _.
    r2 e8 _. g _. a _. g _. |
    a _. a _. a _. a _. g4 _- a _. |
    \override NoteHead #'style = #'cross
    e'4_"Hey!" r e_"Hey!" r |
    \override NoteHead #'style = #'default
    c,8 c c c b4 c |
    r2 a8 b c b |
    c c c c b4 c |
    \override NoteHead #'style = #'cross
    e'4_"Hey!" r e_"Hey!" r |
    \override NoteHead #'style = #'default
    <c, e>8 <c e> <c e> <c e> <b d>4 <c e> |
    r2 <a c>8 <b d> <c e> <b d>|
    <c e>8 <c e> <c e> <c e> <b d>4 <c e> |
    R1
  }
  \break \mark \default %D
  {
    <a' c e>4 \ff ^> ^- r <a c e> ^> ^- r |
    R1*3 |
    r4 <a c e>8 ^^ <a c e> ^^ r4 <a c e>8 ^^ <a c e> ^^ |
    R1*3 |
    <a c e>4 r <a c e> r |
    R1 |
    d,8 d d d e4 f8 e ~ |
    e4 r r2 |
    r4 <a c e>8 <a c e> r4 <a c e>8 <a c e> |
    R1 |
    d,8 d d d e4 f8 e ~ |
    e4 r r <a c e>8 ^^ <a c e> ^^
  }
  
  \break \mark "Solos"
  {
    c8 c c c c4 e8 e |
    e4 c8 c8 c4 r4

  }
}

%part: bass
bass = \relative c {
  \time 2/2 \key c \major
  \partial 4 a8 ^^ a ^^

  \mark \default %A
  {
    R1*2
    r2 a8 _- a _- a _- a _- |
    e' ^- e ^- e ^- e ^- c ^- c ^- c ^- d ^> ^.
    R1*2 |
    r2 a8 a a a |
    e' e e e c c c d |
    R1*2 |
    r2 a8 a a a |
    e' e e e c c c d |
    R1*2
    r2 a8 _- a _- a _- d _- |
    e4 ^- e ^- e ^- r |
    r2 d8 d d d |
    e4 e e r |
    r2 a,8 a a d |
    e4 e e r |
    r2 d8 d d d |
    e4 e e r
  }
  \break \mark \default %B
  {
    r2 a,8 a a d |
    e4 e e r |
    r2 d8 d d d |
    e4 e e r |
    r2 a,8 a a d |
    e4 e e r |
    r2 d8 d d d |
    e4 e e a,8 ^^ a ^^ |
  }
  \break \mark \default %C
  {
    a _. a \mf _. a _. a _. g4 _"cresc." _- a _.
    r2 e8 _. g _. a _. g _. |
    a _. a _. a _. a _. g4 _- a _. |
    \override NoteHead #'style = #'cross
    e'4_"Hey!" r e_"Hey!" r |
    \override NoteHead #'style = #'default
    a,8 a a a g4 a |
    r2 e8 g a g |
    a a a a g4 a |
    \override NoteHead #'style = #'cross
    e'4_"Hey!" r e_"Hey!" r |
    \override NoteHead #'style = #'default
    a,8 a a a g4 a |
    r2 e8 g a g |
    a a a a g4 a |
    R1 |
  }
  \break \mark \default
  {
    r2 \ff a8 a a d |
    e4 e e r |
    d8 d d d e4 ^. f8 e ~ |
    e2 r |
    r a,8 a a d |
    e4 e e r |
    d8 d d d e4 f8 e ~ |
    e2 r |
    r a,8 a a d |
    e4 e e r |
    d8 d d d e4 f8 e ~ |
    e2 r |
    r a,8 a a d |
    e4 e e r |
    d8 d d d e4 f8 e ~ |
    e2 r4 a,8 ^^ a ^^
  }
  
  \break \mark "Solos"
  {
    a8 a a a a4 c8 c | 
    c4 a8 a a4 r |

  }

}

%part: words
words = \markup { }

%part: changes
changes = \chordmode {
}


%layout
\book {
  \header { poet = "Melody - Eb" }
  \score {
    <<
      \new ChordNames { \set chordChanges = ##t \changes }
      \new Staff {
       \transpose c a { \melody }
      }
       \new Staff {
      %  \tenor
      }
       \new Staff {
         \clef bass
      %   \bass
       }
    >>
  }
  %    \words
}




\book {
  \header { poet = "MIDI" }
  \score {
    <<
      \tempo 4 = 200
      \unfoldRepeats	\new Staff {
        \set Staff.midiInstrument = #"trumpet"
        \melody
      }
      \unfoldRepeats	\new Staff {
        \set Staff.midiInstrument = #"alto sax"
        \tenor
      }
      \unfoldRepeats	\new Staff {
        \set Staff.midiInstrument = #"tuba" \clef bass
        \bass
      }
    >>
    \midi { }
  }
}
