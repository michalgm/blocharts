
\version "2.12.2"
% automatically converted from lil liza jane.xml

\header {
    encodingsoftware = "Finale 2008 for Windows"
    tagline = "Finale 2008 for Windows"
    encodingdate = "2010-03-18"
	title = "Li'l Liza Jane"
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
PartPOneVoiceOne =  \relative f' {
    \clef "treble" \key f \major \time 4/4 r2 r8 f8 g8 [ f8 ] \repeat
    volta 2 {
        | % 2
        a8 [ a8 f8 f8 ] g8 [ g8 f8 f8 ] | % 3
        a8 [ a8 f8 f8 ] g8 [ g8 f8 f8 ] | % 4
        a4 c2 d8 [ c8 ] | % 5
        r2 r8 f,8 g8 [ f8 ] | % 6
        a8 [ a8 f8 f8 ] g8 [ g8 f8 f8 ] | % 7
        a8 [ a8 f8 f8 ] g8 [ g8 f8 f8 ] | % 8
        a4 a2 g8 [ f8 ] }
    \alternative { {
            | % 9
            r2 r8 f8 g8 [ f8 ] }
        {
            | \barNumberCheck #10
            R1 }
        } \repeat volta 2 {
        | % 11
        r4 f'2 c4 | % 12
        d4. c8 ~ c4 r4 | % 13
        a4 c2 d8 [ c8 ] | % 14
        R1 | % 15
        r4 f2 c4 | % 16
        d4. c8 ~ c4 r4 | % 17
        a4 a2 g8 [ f8 ] }
    \alternative { {
            | % 18
            R1 }
        {
            | % 19
            r2 ^"Fine" r8 f8 g8 [ f8 ] }
        {
            | \barNumberCheck #20
            r2 r8 c'8 d8 [ c8 ] }
        } \repeat volta 2 {
        | % 21
        <as c es>2. ~ ~ <as c es>8 [ <f as c>8 ] | % 22
        r2 r8 <f as c>8 <g bes d>8 [ <f as c>8 ] | % 23
        <as c es>2. ~ ~ <as c es>8 [ <f as c>8 ] | % 24
        r2 r8 <f as c>8 <g bes d>8 [ <f as c>8 ] | % 25
        <as c es>2. ~ ~ <as c es>8 [ <f as c>8 ] | % 26
        R1 | % 27
        <as c es>4 <as c es>4 <g c e>4 <g e'>8 [ <f f'>8 ] }
    \alternative { {
            | % 28
            r2 r8 <f as c>8 <g bes d>8 [ <f as c>8 ] }
        {
            | % 29
            r2 r8 f8 g8 [ f8 ] }
        } }

PartPTwoVoiceOne =  \relative f {
    \clef "bass" \key f \major \time 4/4 R1 \repeat volta 2 {
        | % 2
        R1*4 | % 6
        f2 es2 | % 7
        d4. des8 ~ des2 | % 8
        c4 c4 c8 [ d8 e8 f8 ] }
    \alternative { {
            | % 9
            R1 }
        {
            | \barNumberCheck #10
            R1 }
        } \repeat volta 2 {
        | % 11
        R1*7 }
    \alternative { {
            | % 18
            R1 }
        {
            | % 19
            R1 }
        {
            | \barNumberCheck #20
            R1 }
        } \repeat volta 2 {
        | % 21
        R1*7 }
    \alternative { {
            | % 28
            R1 }
        {
            | % 29
            R1 }
        } }

PartPThreeVoiceOne =  \relative f, {
    \clef "bass" \key f \major \time 4/4 R1 \repeat volta 2 {
        | % 2
        f4 r4 f4 f4 | % 3
        r4 c'4 r4 d4 | % 4
        f,4 r4 f4 f4 | % 5
        r4 es2 e4 | % 6
        f4 r4 f4 f4 | % 7
        r4 c'4 r4 d4 | % 8
        f,4 r4 f4 f4 }
    \alternative { {
            | % 9
            r4 es2 e4 }
        {
            | \barNumberCheck #10
            r4 es2 e4 }
        } \repeat volta 2 {
        | % 11
        f4 r4 f4 f4 | % 12
        r4 c'4 r4 d4 | % 13
        f,4 r4 f4 f4 | % 14
        r4 es2 e4 | % 15
        f4 r4 f4 f4 | % 16
        r4 c'4 r4 d4 | % 17
        f,4 r4 f4 f4 }
    \alternative { {
            | % 18
            r4 ^"Fine" es2 e4 }
        {
            | % 19
            r4 es2 e4 }
        {
            | \barNumberCheck #20
            r4 es2 e4 }
        } \repeat volta 2 {
        | % 21
        f4 r4 f4 f4 | % 22
        r4 c'4 r4 d4 | % 23
        f,4 r4 f4 f4 | % 24
        r4 es2 e4 | % 25
        f4 r4 f4 f4 | % 26
        r4 c'4 r4 d4 | % 27
        f,4 r4 f4 f4 }
    \alternative { {
            | % 28
            r4 es2 e4 }
        {
            | % 29
            R1 }
        } }


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
            \set Staff.instrumentName = "tenor"
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

