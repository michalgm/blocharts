
PartOneVoiceOne = {
  \relative c' { \key c \minor 

	\mark "Intro"
    R1*4 \bar "||"

    \repeat volta 2 {
        <d f bes>16  <ees g c>~~~ <ees g c>8~~~ <ees g c>2.~~~ | <ees g c>2. <d f bes>4 | 
		<d f bes>8  <ees g c>16 <d f bes>16  <c ees g>2.~~~ | <c ees g>2 r2 |
        <ees g c>1 | r2 ees'8 ^-  des ^. des ^- c ^.  | 
		R1*2 |
        <d, f bes>16  <ees g c>16~~~ <ees g c>8~~~ <ees g c>2.~~~ | <ees g c>2. <d f bes>4 | 
		<d f bes>8  <ees g c>16 <d f bes>16  <c ees g>2.~~~ | <c ees g>2 r4 r8 bes |
        <c ees> (  <d f> <ees g> <f aes>  <ees g>  <bes f'> <aes ees'> <bes d>  | <g ees'>4 r8 <g ees'> <g' bes>  <f aes> <f aes> <ees g>  |
        <ees g>1 ) | R1 |
        <g b>8 (  <aes c> <bes d> <aes c>  <g b>  <f aes> <ees g> <d f>  | <f aes>1 ) |
        <g b>8 (  <aes c> <g b> <f aes>  <ees g>  <bes f'> <aes ees'> <bes d>  | <g ees'>1 ) |
        ees'8 (  f g aes  bes  aes g f  | ees  d d ees )  <ees ees'> _-  <des des'> _. <des des'> _- <c c'> _. |
	  }
    \alternative { 
	  { | <c c'>1~~ | <c c'>2 r2 }
        { | <c c'>1 ^"Fine" }
        } | 

    r2. g'8  f16 ees16  \bar "||"

    \repeat volta 2 {
      ees16  f16 g8  r4 r4 g8  f16 ees16  | ees16  f16 g8  r4 r4 r16 g16  c16 d16  |
        ees8  d16 c16  d8  c16 bes16  c8  bes16 aes16  bes8  aes16 g16 | aes16  bes16 bes16 aes16  aes16  g16 g16 f16  f4 f8  ees16 d16 |
        d16  ees16 f8  r4 r4 ees8  d16 c16  | c16  d16 ees8  r4 r2 |
        g16  aes8 g16  b8  g16 aes16  r16 f16  g8  f8  ees16 d16  }
    \alternative { 
	  { | c8  c16 d16  ees8  ees16 f16  g8  g16 aes16  g8  f16 ees16 }
        { | <c ees g>1 }
        } | 

    R1*3 \bar "|."

    ^"D.C. al Fine" }

PartPTwoVoiceOne =  \relative g {
    \repeat volta 2 {
        \clef "bass" \key c \minor \time 4/4 R1*2 |
        r8 g8 ^. c8 ^.  g8 ^.  ees'8 ^.  g,8 ^. c8 ^. g8 ^.  |
        r8 g8 ^. c8 ^.  g8 ^.  ees'8 ^.  g,8 ^. c8 ^. g8 ^.  \bar
        "||"
        |
        r8 g8 ^. c8 ^.  g8 ^.  ees'8 ^.  g,8 ^. c8 ^. g8 ^.  |
        r8 g8 c8  g8  ees'8  g,8 c8 g8  |
        r8 g8 c8  g8  ees'8  g,8 c8 g8  |
        r8 g8 c8  g8  ees'8  g,8 c8 g8  |
        r8 g8 c8  g8  ees'8  g,8 c8 g8  | 
        r2 ees'8 ^-  des8 ^. des8 ^- c8 ^.  |
        r8 g8 c8  g8  ees'8  g,8 c8 g8  |
        r8 g8 c8  g8  ees'8  g,8 c8 g8  |
        r8 g8 c8  g8  ees'8  g,8 c8 g8  |
        r8 g8 c8  g8  ees'8  g,8 c8 g8  |
        r8 g8 c8  g8  ees'8  g,8 c8 g8  |
        r8 g8 c8  g8  ees'8  g,8 c8 g8  |
        r8 g8 c8  g8  ees'8  g,8 c8 g8  |
        r8 bes,8 ees8  bes8  bes'8  bes,8 ees8 bes8  |
        r8 bes8 ees8  bes8  bes'8  bes,8 ees8 bes8  | \barNumberCheck
        #20
        R1 |
        r8 c8 f8  c8  c'8  c,8 f8 c8  |
        r8 c8 f8  c8  c'8  c,8 f8 c8  |
        r8 c8 f8  c8  c'8  c,8 f8 c8  |
        r8 bes8 ees8  bes8  bes'8  bes,8 ees8 bes8  |
        r8 bes8 ees8  bes8  bes'8  bes,8 ees8 bes8  |
        r2 ees'8  des8 des8 c8  }
    \alternative { {
            |
            r8 g8 c8  g8  ees'8  g,8 c8 g8  |
            r8 g8 c8  g8  ees'8  g,8 c8 g8  }
        {
            |
            r8 ^"Fine" g8 c8  g8  ees'8  g,8 c8 g8  }
        } | 
    r8 g8 c8  g8  ees'8  g,8 c8 g8  \bar "||"
    \repeat volta 2 {
        |
        r4 c8  c8  r4 c4 |
        r4 c8  c8  r4 c4 |
        r4 c8  c8  r4 c4 |
        r4 c8  c8  r4 c4 |
        r4 b8  b8  r4 b4 |
        r4 c8  c8  r4 c4 |
        r4 b8  b8  r4 b4 }
    \alternative { {
            |
            r4 c8  c8  r4 c4 }
        {
            |
            r8 g8 c8  g8  ees'8  g,8 c8 g8  }
        } | 
    r8 g8 c8  g8  ees'8  g,8 c8 g8  |
    r8 g8 c8  g8  ees'8  g,8 c8 g8  |
    r8 g8 c8  g8  ees'8  g,8 c8 g8  \bar "|."
    ^"D.C. al Fine" }

PartPThreeVoiceOne =  \relative ees {
    \repeat volta 2 {
        \clef "bass" \key c \minor \time 4/4 R1*4 \bar "||"
        |
        r4 <ees g>8 -"2nd x only" ^.  <ees g>8 ^.  r4 <ees g>4 |
        r4 <ees g>8 ^.  <ees g>8 ^.  r4 <ees g>4 |
        r4 <ees g>8  <ees g>8  r4 <ees g>4 |
        r4 <ees g>8  <ees g>8  r4 <ees g>4 |
        r4 <ees g>8  <ees g>8  r4 <ees g>4 | 
        | 
        r2 -"both times - - - - - - - - - - - - - - >" ees8 ^-  des8 ^.
    des8 ^- c8 ^.  |
    r4 <ees g>8  <ees g>8  r4 <ees g>4 |
    r4 <ees g>8  <ees g>8  r4 <ees g>4 |
    r4 <ees g>8  <ees g>8  r4 <ees g>4 |
    r4 <ees g>8  <ees g>8  r4 <ees g>4 |
    r4 <ees g>8  <ees g>8  r4 <ees g>4 |
    r4 <ees g>8  <ees g>8  r4 <ees g>4 |
    r4 <ees g>8  <ees g>8  r4 <ees g>4 |
    r4 <g bes>8  <g bes>8  r4 <g bes>4 |
    r4 <g bes>8  <g bes>8  r4 <g bes>4 | 
    r4 <g bes>8  <g bes>8  r4 <g bes>4 |
    r4 <aes c>8  <aes c>8  r4 <aes c>4 |
    r4 <aes c>8  <aes c>8  r4 <aes c>4 |
    r4 <aes c>8  <aes c>8  r4 <aes c>4 |
    r4 <g bes>8  <g bes>8  r4 <g bes>4 |
    r4 <g bes>8  <g bes>8  r4 <g bes>4 |
    r4 <g bes>8  <g bes>8  ees8  des8 des8 c8  }
\alternative { {
        |
        r4 <ees g>8  <ees g>8  r4 <ees g>4 |
        r4 <ees g>8  <ees g>8  r4 <ees g>4 }
    {
        |
        r4 ^"Fine" <ees g>8  <ees g>8  r4 <ees g>4 }
    } | 
r4 <ees g>8  <ees g>8  r4 <ees g>4 \bar "||"
\repeat volta 2 {
    |
    r4 <ees g>8  <ees g>8  r4 <ees g>4 |
    r4 <ees g>8  <ees g>8  r4 <ees g>4 |
    r4 <ees g>8  <ees g>8  r4 <e g>4 |
    r4 <f aes>8  <f aes>8  r4 <f aes>4 |
    r4 <d g>8  <d g>8  r4 <d g>4 |
    r4 <ees aes>8  <ees aes>8  r4 <ees aes>4 |
    r4 <d g>8  <d g>8  r4 <d g>4 }
\alternative { {
        |
        r4 <ees g>8  <ees g>8  r4 <ees g>4 }
    {
        |
        r4 <ees g>8  <ees g>8  r4 <ees g>4 }
    } | 
r4 <ees g>8  <ees g>8  r4 <ees g>4 |
r4 <ees g>8  <ees g>8  r4 <ees g>4 |
r4 <ees g>8  <ees g>8  r4 <ees g>4 \bar "|."
^"D.C. al Fine" }

PartPFourVoiceOne =  \relative c {
\repeat volta 2 {
    \clef "bass" \key c \minor \time 4/4 c4 r4 g4 r4 |
    c4 r4 g4 r4 |
    c4 r4 g4 r4 |
    c4 r4 g4 r4 \bar "||"
    |
    c4 r4 g4 r4 |
    c4 r4 g4 r4 |
    c4 r4 g4 r4 |
    c4 r4 g4 r4 |
    c4 r4 g4 r4 | 
    c4 r4 ees8 ^-  des8 ^. des8 ^- c8 ^.  |
    c4 r4 g4 r4 |
    c4 r4 g4 r4 |
    c4 r4 g4 r4 |
    c4 r4 g4 r4 |
    c4 r4 g4 r4 |
    c4 r4 g4 r4 |
    c4 r4 g4 r4 |
    ees'4 r4 bes4 d4 |
    ees4 r4 bes4 r4 | 
    ees4 r4 bes4 r4 |
    f'4 r4 c4 r4 |
    f4 r4 c4 r4 |
    f4 r4 c4 r4 |
    ees4 r4 bes4 r4 |
    ees4 r4 bes4 r4 |
    ees4 r4 ees8  des8 des8 c8  }
\alternative { {
        |
        c4 r4 g4 r4 |
        c4 r4 g4 r4 }
    {
        |
        c4 ^"Fine" r4 g4 r4 }
    } | 
c4 r4 g4 r4 \bar "||"
\repeat volta 2 {
    |
    c4 r4 g4 r4 |
    c4 r4 g4 r4 |
    c4 r4 ees4 r4 |
    f4 r4 c4 r4 |
    g16  g16 b16 d16  g4 d,16  g16 b16 d16  g4 |
    aes,16  aes16 c16 ees16  aes4 ees,16  aes16 c16 ees16  aes4 |
    g4 r4 b,4 r4 }
\alternative { {
        |
        c4 r4 g4 r4 }
    {
        |
        c4 r4 g4 r4 }
    } | 
c4 r4 g4 r4 |
c4 r4 g4 r4 |
c4 r4 g4 r4 \bar "|."
^"D.C. al Fine" }


% The score definition
\score {
<<
    \new Staff <<
        \set Staff.instrumentName = "melody"
        \context Staff << 
            \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
            >>
        >>
    \new Staff <<
        \set Staff.instrumentName = "tenor1"
        \context Staff << 
            \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
            >>
        >>
    \new Staff <<
        \set Staff.instrumentName = "tenor2"
        \context Staff << 
            \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
            >>
        >>
    \new Staff <<
        \set Staff.instrumentName = "bass"
        \context Staff << 
            \context Voice = "PartPFourVoiceOne" { \PartPFourVoiceOne }
            >>
        >>
    
    >>
\layout {}
% To create MIDI output, uncomment the following line:
%  \midi {}
}

