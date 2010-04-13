
\version "2.12.2"
% automatically converted from hop hop hop.xml

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
PartPOneVoiceOne =  \relative d'' {
    \clef "treble" \key g \minor \time 4/4 \repeat volta 2 {
        r8 d8 r8 cis8 d8 [ cis8 d8 bes8 ] | % 2
        b8 [ b8 ] c4 b8 [ c8 ] c4 | % 3
        r8 c8 r8 b8 c8 [ b8 c8 a8 ] | % 4
        a8 [ bes8 ] bes4 a8 [ bes8 ] bes4 | % 5
        r8 d8 r8 cis8 d8 [ cis8 d8 bes8 ] | % 6
        \times 2/3  {
            c4 c4 bes4 }
        \times 2/3  {
            a4 a4 g4 }
        | % 7
        fis4 r4 d'8 [ c8 b8 a8 ] | % 8
        | % 8
        g1 ^"Fine" }
    \repeat volta 2 {
        | % 9
        | % 9
        d'4. _\markup{ \bold {Goran Bregovich} } -"call and response" d8
        d4 bes4 | \barNumberCheck #10
        c4 c4 c2 | % 11
        c4. c8 c4 d4 | % 12
        c4 bes4 bes2 | % 13
        bes4. bes8 bes4 g4 | % 14
        a4 a4 a2 | % 15
        c8 [ c8 c8 c8 ] c4 <bes d>4 | % 16
        c4 bes4 bes2 }
    \alternative { {
            | % 17
            | % 17
            g4. -"all play" a8 bes4 g4 ~ | % 18
            g4 a4 bes4 g4 | % 19
            a4 a4 a4 r4 | \barNumberCheck #20
            R1 | % 21
            fis4. g8 a4 fis4 ~ | % 22
            fis4 g4 a4 fis4 | % 23
            g4 g4 g4 r4 | % 24
            R1 }
        {
            | % 25
            g2 bes2 -"all play" }
        } | % 26
    d2 c4 bes4 | % 27
    a4 r8 c8 c4 c4 | % 28
    c4 c4 es4 d4 \bar "|."
    ^"D.C. al Fine" }

PartPTwoVoiceOne =  \relative d {
    \clef "bass" \key g \minor \time 4/4 \repeat volta 2 {
        <d bes'>4 ^^ ^. r8 <d bes'>8 ^^ ^. r4 <d bes'>4 ^^ ^. | % 2
        r4 <d a'>4 ^^ ^. r4 <d a'>4 ^^ ^. | % 3
        | % 3
        <d a'>4 -"etc." r8 <d a'>8 r4 <d a'>4 | % 4
        r4 <d c'>4 r4 <d c'>4 | % 5
        <d g>4 r8 <d g>8 r4 <d g>4 | % 6
        r4 <c es>4 r4 <c es>4 | % 7
        <d a'>4 r4 <fis b>8 [ <e a>8 <d g>8 <c fis>8 ] | % 8
        | % 8
        <b g'>2 ^"Fine" <gis' c>2 _\markup{ \bold {Goran Bregovich} } ^>
        }
    \repeat volta 2 {
        | % 9
        r2 <g bes>4 ^^ ^. r4 | \barNumberCheck #10
        r2 <fis a>4 r4 | % 11
        r2 <fis a>4 r4 | % 12
        r2 <g bes>4 r4 | % 13
        r2 <d g>4 r4 | % 14
        r2 <d fis>4 r4 | % 15
        r2 <fis a>4 r4 | % 16
        r2 <d g>4 r4 }
    \alternative { {
            | % 17
            bes'4. c8 d4 bes4 ~ | % 18
            bes4 c4 d4 bes4 | % 19
            c4 c4 c4 r4 | \barNumberCheck #20
            R1 | % 21
            a4. bes8 c4 a4 ~ | % 22
            a4 bes4 c4 a4 | % 23
            bes4 bes4 bes4 r4 | % 24
            R1 }
        {
            | % 25
            g2 g2 }
        } | % 26
    bes2 a4 g4 | % 27
    fis4 r4 r2 | % 28
    r2 fis2 \bar "|."
    ^"D.C. al Fine" }

PartPThreeVoiceOne =  \relative d {
    \clef "bass" \key g \minor \time 4/4 \repeat volta 2 {
        d4 r4 d4 r8 d8 ~ | % 2
        d4 d4 d4 d4 | % 3
        d4 r4 fis,4 r8 g8 ~ | % 4
        g4 a4 bes4 c4 | % 5
        g4 r4 b4 r8 c8 ~ | % 6
        c4 d4 es4 cis4 | % 7
        d4 r4 d8 [ c8 bes8 a8 ] | % 8
        | % 8
        g1 ^"Fine" }
    \repeat volta 2 {
        | % 9
        g4 _\markup{ \bold {Goran Bregovich} } r4 g4 r8 a8 ~ |
        \barNumberCheck #10
        a4 bes4 c4 d4 | % 11
        d4 r4 a4 r8 g8 ~ | % 12
        g4 d'4 r4 d4 | % 13
        g,4 r4 g4 r8 a8 ~ | % 14
        a4 bes4 c4 d4 | % 15
        d4 r4 a4 r8 g8 ~ | % 16
        g4 d'4 r4 d4 }
    \alternative { {
            | % 17
            g,4 r4 g4 r8 g8 ~ | % 18
            g4 a4 bes4 c4 | % 19
            d4 r4 a4 r4 | \barNumberCheck #20
            R1 | % 21
            d4 r4 d4 r8 d8 ~ | % 22
            d4 d4 a4 d4 | % 23
            g,4 r4 g4 r4 | % 24
            R1 }
        {
            | % 25
            g4 r4 g4 r8 g8 ~ }
        } | % 26
    g4 a4 bes4 c4 | % 27
    d4 r4 r2 | % 28
    R1 \bar "|."
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
            \set Staff.instrumentName = "harmony"
            \context Staff << 
                \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "bass"
            \context Staff << 
                \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

