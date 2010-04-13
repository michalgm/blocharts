
\version "2.12.2"
% automatically converted from sat.xml

\header {
    encodingsoftware = "Finale 2008 for Windows"
    tagline = "Finale 2008 for Windows"
    encodingdate = "2010-03-18"
    }

#(set-global-staff-size 20.5767485433)
\paper {
    paper-width = 21.59\cm
    paper-height = 27.93\cm
    top-margin = 1.59\cm
    botton-margin = 1.59\cm
    left-margin = 2.53\cm
    right-margin = 1.27\cm
    between-system-space = 2.19\cm
    page-top-space = 1.27\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative d' {
    \repeat volta 2 {
        \clef "treble" \key c \minor \time 4/4 R1*4 \bar "||"
        | % 5
        <d f bes>16 [ <es g c>16 ~ ~ ~ <es g c>8 ~ ] ~ ~ <es g c>2. ~ ~
        ~ | % 6
        <es g c>2. <d f bes>4 | % 7
        <d f bes>8 [ <es g c>16 <d f bes>16 ] <c es g>2. ~ ~ ~ | % 8
        <c es g>2 r2 | % 9
        <es g c>1 | \barNumberCheck #10
        r2 es'8 ^- [ des8 ^. des8 ^- c8 ^. ] | % 11
        R1*2 | % 13
        <d, f bes>16 [ <es g c>16 ~ ~ ~ <es g c>8 ~ ] ~ ~ <es g c>2. ~ ~
        ~ | % 14
        <es g c>2. <d f bes>4 | % 15
        <d f bes>8 [ <es g c>16 <d f bes>16 ] <c es g>2. ~ ~ ~ | % 16
        <c es g>2 r4 r8 bes8 | % 17
        <c es>8 ( [ <d f>8 <es g>8 <f as>8 ] <es g>8 [ <bes f'>8 <as
            es'>8 <bes d>8 ] | % 18
        <g es'>4 r8 <g es'>8 <g' bes>8 [ <f as>8 <f as>8 <es g>8 ] | % 19
        <es g>1 ) | \barNumberCheck #20
        R1 | % 21
        <g b>8 ( [ <as c>8 <bes d>8 <as c>8 ] <g b>8 [ <f as>8 <es g>8
        <d f>8 ] | % 22
        <f as>1 ) | % 23
        <g b>8 ( [ <as c>8 <g b>8 <f as>8 ] <es g>8 [ <bes f'>8 <as es'>8
        <bes d>8 ] | % 24
        <g es'>1 ) | % 25
        es'8 ( [ f8 g8 as8 ] bes8 [ as8 g8 f8 ] | % 26
        es8 [ d8 d8 es8 ) ] <es es'>8 _- [ <des des'>8 _. <des des'>8 _-
        <c c'>8 _. ] }
    \alternative { {
            | % 27
            <c c'>1 ~ ~ | % 28
            <c c'>2 r2 }
        {
            | % 29
            <c c'>1 ^"Fine" }
        } | \barNumberCheck #30
    r2. g'8 [ f16 es16 ] \bar "||"
    \repeat volta 2 {
        | % 31
        es16 [ f16 g8 ] r4 r4 g8 [ f16 es16 ] | % 32
        es16 [ f16 g8 ] r4 r4 r16 g16 [ c16 d16 ] | % 33
        es8 [ d16 c16 ] d8 [ c16 bes16 ] c8 [ bes16 as16 ] bes8 [ as16 g16
        ] | % 34
        as16 [ bes16 bes16 as16 ] as16 [ g16 g16 f16 ] f4 f8 [ es16 d16
        ] | % 35
        d16 [ es16 f8 ] r4 r4 es8 [ d16 c16 ] | % 36
        c16 [ d16 es8 ] r4 r2 | % 37
        g16 [ as8 g16 ] b8 [ g16 as16 ] r16 f16 [ g8 ] f8 [ es16 d16 ] }
    \alternative { {
            | % 38
            c8 [ c16 d16 ] es8 [ es16 f16 ] g8 [ g16 as16 ] g8 [ f16 es16
            ] }
        {
            | % 39
            <c es g>1 }
        } | \barNumberCheck #40
    R1*3 \bar "|."
    ^"D.C. al Fine" }

PartPTwoVoiceOne =  \relative g {
    \repeat volta 2 {
        \clef "bass" \key c \minor \time 4/4 R1*2 | % 3
        r8 g8 ^. c8 ^. [ g8 ^. ] es'8 ^. [ g,8 ^. c8 ^. g8 ^. ] | % 4
        r8 g8 ^. c8 ^. [ g8 ^. ] es'8 ^. [ g,8 ^. c8 ^. g8 ^. ] \bar
        "||"
        | % 5
        r8 g8 ^. c8 ^. [ g8 ^. ] es'8 ^. [ g,8 ^. c8 ^. g8 ^. ] | % 6
        r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] | % 7
        r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] | % 8
        r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] | % 9
        r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] | \barNumberCheck #10
        r2 es'8 ^- [ des8 ^. des8 ^- c8 ^. ] | % 11
        r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] | % 12
        r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] | % 13
        r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] | % 14
        r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] | % 15
        r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] | % 16
        r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] | % 17
        r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] | % 18
        r8 bes,8 es8 [ bes8 ] bes'8 [ bes,8 es8 bes8 ] | % 19
        r8 bes8 es8 [ bes8 ] bes'8 [ bes,8 es8 bes8 ] | \barNumberCheck
        #20
        R1 | % 21
        r8 c8 f8 [ c8 ] c'8 [ c,8 f8 c8 ] | % 22
        r8 c8 f8 [ c8 ] c'8 [ c,8 f8 c8 ] | % 23
        r8 c8 f8 [ c8 ] c'8 [ c,8 f8 c8 ] | % 24
        r8 bes8 es8 [ bes8 ] bes'8 [ bes,8 es8 bes8 ] | % 25
        r8 bes8 es8 [ bes8 ] bes'8 [ bes,8 es8 bes8 ] | % 26
        r2 es'8 [ des8 des8 c8 ] }
    \alternative { {
            | % 27
            r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] | % 28
            r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] }
        {
            | % 29
            r8 ^"Fine" g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] }
        } | \barNumberCheck #30
    r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] \bar "||"
    \repeat volta 2 {
        | % 31
        r4 c8 [ c8 ] r4 c4 | % 32
        r4 c8 [ c8 ] r4 c4 | % 33
        r4 c8 [ c8 ] r4 c4 | % 34
        r4 c8 [ c8 ] r4 c4 | % 35
        r4 b8 [ b8 ] r4 b4 | % 36
        r4 c8 [ c8 ] r4 c4 | % 37
        r4 b8 [ b8 ] r4 b4 }
    \alternative { {
            | % 38
            r4 c8 [ c8 ] r4 c4 }
        {
            | % 39
            r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] }
        } | \barNumberCheck #40
    r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] | % 41
    r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] | % 42
    r8 g8 c8 [ g8 ] es'8 [ g,8 c8 g8 ] \bar "|."
    ^"D.C. al Fine" }

PartPThreeVoiceOne =  \relative es {
    \repeat volta 2 {
        \clef "bass" \key c \minor \time 4/4 R1*4 \bar "||"
        | % 5
        r4 <es g>8 -"2nd x only" ^. [ <es g>8 ^. ] r4 <es g>4 | % 6
        r4 <es g>8 ^. [ <es g>8 ^. ] r4 <es g>4 | % 7
        r4 <es g>8 [ <es g>8 ] r4 <es g>4 | % 8
        r4 <es g>8 [ <es g>8 ] r4 <es g>4 | % 9
        r4 <es g>8 [ <es g>8 ] r4 <es g>4 | \barNumberCheck #10
        | \barNumberCheck #10
        r2 -"both times - - - - - - - - - - - - - - >" es8 ^- [ des8 ^.
    des8 ^- c8 ^. ] | % 11
    r4 <es g>8 [ <es g>8 ] r4 <es g>4 | % 12
    r4 <es g>8 [ <es g>8 ] r4 <es g>4 | % 13
    r4 <es g>8 [ <es g>8 ] r4 <es g>4 | % 14
    r4 <es g>8 [ <es g>8 ] r4 <es g>4 | % 15
    r4 <es g>8 [ <es g>8 ] r4 <es g>4 | % 16
    r4 <es g>8 [ <es g>8 ] r4 <es g>4 | % 17
    r4 <es g>8 [ <es g>8 ] r4 <es g>4 | % 18
    r4 <g bes>8 [ <g bes>8 ] r4 <g bes>4 | % 19
    r4 <g bes>8 [ <g bes>8 ] r4 <g bes>4 | \barNumberCheck #20
    r4 <g bes>8 [ <g bes>8 ] r4 <g bes>4 | % 21
    r4 <as c>8 [ <as c>8 ] r4 <as c>4 | % 22
    r4 <as c>8 [ <as c>8 ] r4 <as c>4 | % 23
    r4 <as c>8 [ <as c>8 ] r4 <as c>4 | % 24
    r4 <g bes>8 [ <g bes>8 ] r4 <g bes>4 | % 25
    r4 <g bes>8 [ <g bes>8 ] r4 <g bes>4 | % 26
    r4 <g bes>8 [ <g bes>8 ] es8 [ des8 des8 c8 ] }
\alternative { {
        | % 27
        r4 <es g>8 [ <es g>8 ] r4 <es g>4 | % 28
        r4 <es g>8 [ <es g>8 ] r4 <es g>4 }
    {
        | % 29
        r4 ^"Fine" <es g>8 [ <es g>8 ] r4 <es g>4 }
    } | \barNumberCheck #30
r4 <es g>8 [ <es g>8 ] r4 <es g>4 \bar "||"
\repeat volta 2 {
    | % 31
    r4 <es g>8 [ <es g>8 ] r4 <es g>4 | % 32
    r4 <es g>8 [ <es g>8 ] r4 <es g>4 | % 33
    r4 <es g>8 [ <es g>8 ] r4 <e g>4 | % 34
    r4 <f as>8 [ <f as>8 ] r4 <f as>4 | % 35
    r4 <d g>8 [ <d g>8 ] r4 <d g>4 | % 36
    r4 <es as>8 [ <es as>8 ] r4 <es as>4 | % 37
    r4 <d g>8 [ <d g>8 ] r4 <d g>4 }
\alternative { {
        | % 38
        r4 <es g>8 [ <es g>8 ] r4 <es g>4 }
    {
        | % 39
        r4 <es g>8 [ <es g>8 ] r4 <es g>4 }
    } | \barNumberCheck #40
r4 <es g>8 [ <es g>8 ] r4 <es g>4 | % 41
r4 <es g>8 [ <es g>8 ] r4 <es g>4 | % 42
r4 <es g>8 [ <es g>8 ] r4 <es g>4 \bar "|."
^"D.C. al Fine" }

PartPFourVoiceOne =  \relative c {
\repeat volta 2 {
    \clef "bass" \key c \minor \time 4/4 c4 r4 g4 r4 | % 2
    c4 r4 g4 r4 | % 3
    c4 r4 g4 r4 | % 4
    c4 r4 g4 r4 \bar "||"
    | % 5
    c4 r4 g4 r4 | % 6
    c4 r4 g4 r4 | % 7
    c4 r4 g4 r4 | % 8
    c4 r4 g4 r4 | % 9
    c4 r4 g4 r4 | \barNumberCheck #10
    c4 r4 es8 ^- [ des8 ^. des8 ^- c8 ^. ] | % 11
    c4 r4 g4 r4 | % 12
    c4 r4 g4 r4 | % 13
    c4 r4 g4 r4 | % 14
    c4 r4 g4 r4 | % 15
    c4 r4 g4 r4 | % 16
    c4 r4 g4 r4 | % 17
    c4 r4 g4 r4 | % 18
    es'4 r4 bes4 d4 | % 19
    es4 r4 bes4 r4 | \barNumberCheck #20
    es4 r4 bes4 r4 | % 21
    f'4 r4 c4 r4 | % 22
    f4 r4 c4 r4 | % 23
    f4 r4 c4 r4 | % 24
    es4 r4 bes4 r4 | % 25
    es4 r4 bes4 r4 | % 26
    es4 r4 es8 [ des8 des8 c8 ] }
\alternative { {
        | % 27
        c4 r4 g4 r4 | % 28
        c4 r4 g4 r4 }
    {
        | % 29
        c4 ^"Fine" r4 g4 r4 }
    } | \barNumberCheck #30
c4 r4 g4 r4 \bar "||"
\repeat volta 2 {
    | % 31
    c4 r4 g4 r4 | % 32
    c4 r4 g4 r4 | % 33
    c4 r4 es4 r4 | % 34
    f4 r4 c4 r4 | % 35
    g16 [ g16 b16 d16 ] g4 d,16 [ g16 b16 d16 ] g4 | % 36
    as,16 [ as16 c16 es16 ] as4 es,16 [ as16 c16 es16 ] as4 | % 37
    g4 r4 b,4 r4 }
\alternative { {
        | % 38
        c4 r4 g4 r4 }
    {
        | % 39
        c4 r4 g4 r4 }
    } | \barNumberCheck #40
c4 r4 g4 r4 | % 41
c4 r4 g4 r4 | % 42
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

