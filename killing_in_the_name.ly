
\version "2.16.0"
\header {
  title = "Killing in the Name"
  composer = "Rage Against the Machine (arr. M. Zbyszyński)"
}

%place a mark at bottom right
marktopright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #UP }

\layout {
  \context {
    \Score
    skipBars = ##t
    autoBeaming = ##f
  }
}

%part: melodyOne
melodyOne =  \relative d' {

  \key c \major
  \mark \markup \box \bold "Intro"

  \repeat volta 2 {
    R1 | % 2
  }

  \repeat volta 2 {
    r2 d8 [(es8) fis8 (g8)] |  % 3
    r2 d8 [ (es8) g8 (fis8) ]  ^"4x" | %4
  }
  \repeat volta 2 {
    r2
    \times 2/3  {
      es4 es4 es4
    }
  }
  \break \mark \markup \box \bold "Verse"
  \repeat volta 2 {
    d8 \mp  [ c16 d16 ] r4 r2  | % 6
    d8 [ c16 d16 ] r4 r2  | % 7
    d8 [ c16 d16 ] r4 r2  | % 8
    d8 [ c16 d16 ] r4 d16 [ f16 g16 a16 ] c16 [ d16 f8 ] | % 9
    r4 r8 b,8 -> r4 r8 bes8 ->   |
    \barNumberCheck #10
    r4 r8 a8 -> r2   | % 11
    r4 r8 b8 -> r4 r8 bes8 ->   | % 12
    r4 r8 a8 -> c16 [ c16 c16 c16 ] c8 [ c8 ]
    \bar "||" | % 13
    \break \mark \markup \box \bold "Chorus"
    d16 [ d16 ] r8 d8 r8 r2 | % 14
    d16 [ d16 ] r8 d8 r8 r2 | % 15
    d16 [ d16 ] r8 d8 r8 r2 | % 16
    d16 [ d16 ] r8 d8 r8 r2 | % 17

    \break \mark \markup { \musicglyph #"scripts.segno" }

    d16 \mf [ d8 c16 ] d8 r16 d16 ~ d16 [ d16 g,8 ] (a8 [ c8 ])  | % 18
    d16 [ d8 c16 ] d8 r16 d16 ~ d16 [ d16 f8 ] (e8 [ es8 ])    | % 19
    d16 [ d8 c16 ] d8 r16 d16 ~ d16 [ d16 g,8 ] (a8 [ c8 ])  |
    \barNumberCheck #20
    d16  ^\markup {  \tiny "(To Coda after Segno)" }   [ d8 c16 ] d8 r16 d16 ~ d16 [ d16 f8 ] (e8 [ es8^\markup {  \musicglyph #"scripts.coda"   }  ])
  }
  \break \mark  \markup \box \bold "Solos"
  \repeat volta 2 { \repeat volta 2 { r1  |    r  |    r  |    r  | } } %solo vamp

  \override NoteHead #'style = #'cross
  r1 _"Spoken, cresc..." |
  \repeat percent 4 {
    r8 f,8 _"'Fuck you I won't do what you tell me'"  f16 [ f  f8 ] f16  [ f f f~ ]  f [ f8. ]
    \marktopright   \mark  "D.S."
  }
  \revert NoteHead #'style
  \bar "||"
  \break \mark  \markup { \musicglyph #"scripts.coda"  \box \bold "Coda" }
  c'4 \ff 
  a4 ^\markup { \italic cuivré }  g4 f4 | % 22
  g4 f4 a2 | % 23
  c4 a4 g4 f4 | % 24
  g4 f4 d2 | % 25
  c'4 a4 g4 f4 | % 26
  g4 f4 a2 | % 27
  c4 a4 g4 f4 | % 28
  g4 f4 d2
  \break| % 29
  R1   | \barNumberCheck #39
  R1  | % 31
  a'16 _\markup { \italic "mf cresc. poco a poco..."   }  [ a16 ] r8 a16 [ a16 g16 a16 ] r8 a16 [ a16 ] g16 [ a16 ] r8 | % 32
  <a c>16  \ff   [ <a c>16 ] r8 <a c>16 [ <a c>16 <g b>16 <a c>16 ] r8 <a c>16
  [ <a c>16 ] <g b>16 [ <a c>16 ] r8 | % 33
  <a e'>1~  _\markup { \italic "sub. pp, cresc."   }  | <a e'>1 % 34
  \times 2/3  {
    d,4  \fff   d4 d4
  }
  \times 2/3  {
    es'4 es4 es4
  }
  \bar "|."
}


%part: melodyTwo
melodyTwo =  \relative d' {
  \key c \major \repeat volta 2 {
    \mark \markup \box \bold "Intro"

    r2
    \times 2/3  {
      es'4 es4 es4
    }
  }
  \repeat volta 2 {
    | % 2
    d,8. [ d16 ~ ] d8 [ d8 ] es8. [ es16 ~ ] es8 [ es8 ] | % 3
    d8. [ d16 ~ ] d8 [ d8 ] es8. [ es16 ~ ] es8 [ es8 ] ^"4x"
  }
  \repeat volta 2 {
    | % 4
    r2
    \times 2/3  {
      es'4 es4 es4
    }
  }
  \repeat volta 2 {
    \break \mark \markup \box \bold "Verse"

    | % 5
    r4 r8 f,16 \mp [ ges16 ] d4 r4 | % 6
    r4 r8 f16 [ ges16 ] d4 r4 | % 7
    r4 r8 f16 [ ges16 ] d4 r4 | % 8
    r4 r8 f16 [ ges16 ] d16 [ f16 g16 a16 ] c16 [ d16 f8 ] | % 9
    d,8 [ c16 d16 ] r8 <e g>8 -> d8 [ c16 d16 ] r8 <d f>8 -> |
    \barNumberCheck #10
    d8 [ c16 d16 ] r8 <e g>8 -> <c e>16 [ <c e>16 <c e>16 <c e>16 ] <c e>8 [ <c e>8 ] | % 11
    d8 [ c16 d16 ] r8 <e g>8 -> d8 [ c16 d16 ] r8 <d f>8 -> | % 12
    d8 [ c16 d16 ] r8 <e g>8 -> <e a>16 [ <e a>16 <e a>16 <e a>16 ]
    <e a>8 [ <e a>8 ] \bar "||"
    | % 13
    \break \mark \markup \box \bold "Chorus"

    <d a'>16 [ <d a'>16 ] r8 <d a' >8 r8 r2 | % 14
    <d a'>16 [ <d a'>16 ] r8 <d a'>8 r8 r2 | % 15
    <d a'>16 [ <d a'>16 ] r8 <d a'>8 r8 r2 | % 16
    <d a'>16 [ <d a'>16 ] r8 <d a'>8 r8 r2 | % 17
    a'16 \mf [ a8 g16 ] a8 r16 a16 ~ a16 [ a16 d,8 ] (f8 [ g8) ] | % 18
    a16 [ a8 g16 ] a8 r16 a16 ~ a16 [ a16 c8 ] (b8 [ bes8) ] | % 19
    a16 [ a8 g16 ] a8 r16 a16 ~ a16 [ a16 d,8 ] (f8 [ g8) ] |
    \barNumberCheck #20
    a16  ^\markup {  \tiny "(To Coda after Segno)" }   [ a8 g16 ] a8 r16 a16 ~ a16 [ a16 c8 ] (b8 [ bes8) ] ^\markup {  \musicglyph #"scripts.coda"   }
  }
  | % 21

  \break \mark  \markup \box \bold "Solos"
  \repeat volta 2 {
    r4 ^"Just one person play this during solos" r8 f16 [ ges16 ] d4 r4 | % 6
    r4 r8 f16 [ ges16 ] d4 r4 | % 7
    r4 r8 f16 [ ges16 ] d4 r4 | % 8
    r4 r8 f16 [ ges16 ] d16 [ f16 g16 a16 ] c16 [ d16 f8 ] | % 9
  } % solo vamp

  \override NoteHead #'style = #'cross
  r1 _"Spoken, cresc..." |
  \repeat percent 4 {
    r8 f,8 _"'Fuck you I won't do what you tell me'"  f16 [ f  f8 ] f16  [ f f f~ ]  f [ f8. ]
    \marktopright   \mark  "D.S."
  }

  \revert NoteHead #'style
  \break \mark  \markup { \musicglyph #"scripts.coda"  \box \bold "Coda" } 
  r8 \ff 
  d8 r8 d8 r8 d8 r8 d8 | % 22
  r8 d8 r8 d8 r8 d8 [ f8 e8 ] | % 23
  r8 d8 r8 d8 r8 d8 r8 d8 | % 24
  r8 d8 r8 d8 r8 d8 [ f8 e8 ] | % 25
  r8 d8 r8 d8 r8 d8 r8 d8 | % 26
  r8 d8 r8 d8 r8 d8 [ f8 e8 ] | % 27
  r8 d8 r8 d8 r8 d8 r8 d8 | % 28
  r8 d8 r8 d8 r8 d8 [ f8 e8 ] | % 29
  \break
  d16 _\markup { \italic "sub. pp, cresc. poco a poco..."   }  [ d16 ] r8 d16 [ d16 c16 d16 ] r8 d16 [ d16 ] c16 [ d16 ] r8
  | \barNumberCheck #39
  <d f>16 [ <d f>16 ] r8 <d f>16 [ <d f>16 <c e>16 <d f>16 ] r8 <d
  f>16 [ <d f>16 ] <c e>16 [ <d f>16 ] r8 | % 31
  <d f>16 [ <d f>16 ] r8 <d f>16 [ <d f>16 <c e>16 <d f>16 ] r8 <d
  f>16 [ <d f>16 ] <c e>16 [ <d f>16 ] r8 | % 32
  <d f>16  \ff   [ <d f>16 ] r8 <d f>16 [ <d f>16 <c e>16 <d f>16 ] r8 <d
  f>16 [ <d f>16 ] <c e>16 [ <d f>16 ] r8 | % 33
  <g c>1~ _\markup { \italic "sub. pp, cresc."   } | <g c> % 34
  \times 2/3  {
    d4  \fff  d4 d4
  }
  \times 2/3  {
    es'4 es4 es4
  }
  \bar "|."
}


%part: bass    
bass =  \relative d, {
  \key c \major \repeat volta 2 {
    \mark \markup \box \bold "Intro"

    \times 2/3  {
      d4 d4 d4
    }
    \times 2/3  {
      es'4 es4 es4
    }
  }
  \repeat volta 2 {
    | % 2
    d4-. a4-. es'4-. bes4-. | % 3
    d4-. a4-. es'4-. bes4-. ^"4x"
  }
  \repeat volta 2 {
    | % 4
    \times 2/3  {
      d,4 d4 d4
    }
    \times 2/3  {
      es'4 es4 es4
    }
  }

  \break \mark \markup \box \bold "Verse"
  \repeat volta 2 {
    | % 5

    d,4 \mp r4 r8 d8 [ f8 e8 ] | % 6
    d4 r4 r8 d8 [ f8 e8 ] | % 7
    d8 r8 r4 r8 d8 [ f8 e8 ] | % 8
    d4 r4 r8 d8 [ f8 e8 ] | % 9
    d8 [ c16 d16 ] r4 d8 [ c16 d16 ] r4 | \barNumberCheck #10
    d8 [ c16 d16 ] r8 f16 [ ges16 ] d8 [ d8 f8 e8 ] | % 11
    d8 [ c16 d16 ] r4 d8 [ c16 d16 ] r4 | % 12
    d8 [ c16 d16 ] r8 f16 [ ges16 ] d8 [ d8 f8 e8 ] \bar "||"
    | % 13
    \break \mark \markup \box \bold "Chorus"
    d16 [ d16 ] r8 d8 r8 r2 | % 14
    d16 [ d16 ] r8 d8 r8 r2 | % 15
    d16 [ d16 ] r8 d8 r8 r8 a'8 [ b8 c8 ] | % 16
    d16 [ d16 ] r8 d8 r8 r8 a8 [ b8 c8 ] | % 17
    d4-. \mf a4-. d8 [g,8 (a8 c8)] | % 18
    d4-. a4-. d8 [ f8 (e8 es8) ] | % 19
    d4-. a4-. d8 [g,8 (a8 c8)] | \barNumberCheck #20
    d4-.  ^\markup {  \tiny "(To Coda after Segno)" }   a4-. d8 [ f,8 (e8 es8) ] ^\markup {  \musicglyph #"scripts.coda"   }
  }
  | % 21

  \break \mark  \markup \box \bold "Solos"
  \repeat percent 4 {   d4 r4 r8 d8 [ f8 e8 ] | }  %solo vamp

  \repeat percent 5 {
    \repeat tremolo 4 { d  16 es }  \repeat tremolo 4 { d16 es }  \mark  "D.S."
  }
  \bar "||"
  \break  \mark  \markup { \musicglyph #"scripts.coda"  \box \bold "Coda" }
  r8 \ff d8 r8 d8 r8 d8 r8 d8 | % 22
  r8 d8 r8 d8 r8 d8 [ f8 e8 ] | % 23
  r8 d8 r8 d8 r8 d8 r8 d8 | % 24
  r8 d8 r8 d8 r8 d8 [ f8 e8 ] | % 25
  r8 d8 r8 d8 r8 d8 r8 d8 | % 26
  r8 d8 r8 d8 r8 d8 [ f8 e8 ] | % 27
  r8 d8 r8 d8 r8 d8 r8 d8 | % 28
  r8 d8 r8 d8 r8 d8 [ f8 e8 ] | % 29
  d8 _\markup { \italic "sub. pp, cresc. poco a poco..."   }  [ c16 d16 ] r8 f16 [ ges16 ] d8 [ d8 f8 e8 ] |
  \barNumberCheck #39
  d8 [ c16 d16 ] r8 f16 [ ges16 ] d8 [ d8 f8 e8 ] | % 31
  d8 [ c16 d16 ] r8 f16 [ ges16 ] d8 [ d8 f8 e8 ] | % 32
  d8  \ff   [ c16 d16 ] r8 f16 [ ges16 ] d8 [ d8 f8 e8 ] | % 33
  a1~  _\markup { \italic "sub. pp, cresc."   }  |  a % 34
  \times 2/3  {
    d,4  \fff  d4 d4
  }
  \times 2/3  {
    es'4 es4 es4
  }
  \bar "|."
}


%layout
% The score definition
\score {
  <<
    \new Staff <<
      \set Staff.instrumentName = "Melody 1"
      \context Staff <<
        \context Voice = "PartPOneVoiceOne" { \melodyOne }
      >>
    >>
    \new Staff <<
      \set Staff.instrumentName = "Melody 2"
      \context Staff <<
        \context Voice = "PartPTwoVoiceOne" { \melodyTwo }
      >>
    >>
    \new Staff <<
      \set Staff.instrumentName = "Bass"
      \context Staff <<
        \context Voice = "PartPThreeVoiceOne" { \clef bass \bass }
      >>
    >>

  >>
  \layout {}
  % To create MIDI output, uncomment the following line:
  %  \midi {}
}

