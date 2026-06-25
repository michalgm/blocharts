
\version "2.12.2"
% automatically converted from merry blues.xml

\header {
    encodingsoftware = "Finale 2008 for Windows"
    tagline = "Finale 2008 for Windows"
    encodingdate = "2010-03-18"
	title = "Merry Blues - alpha version"
    }

#(set-global-staff-size 20.5767485433)
\paper {
    paper-width = 21.59\cm
    paper-height = 27.93\cm
    top-margin = 1.59\cm
    botton-margin = 1.59\cm
    left-margin = 2.53\cm
    right-margin = 1.27\cm
    between-system-space = 4.72\cm
    page-top-space = 3.81\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative d'' {
    \clef "treble" \key g \minor \time 4/4 \repeat volta 2 {
        R1*3 | % 4
        r4 d4 d8 es4 d8 ~ }
    | % 5
    d4 r4 r8 c4 d8 | % 6
    f8 d4 c4 bes4 g8 ~ | % 7
    g4 r4 r2 | % 8
    r4 d'4 d8 es4 d8 ~ | % 9
    d4 r4 r8 c4 d8 | \barNumberCheck #10
    f8 d4 c4 bes4 g8 ~ | % 11
    g4 r4 r2 | % 12
    r4 d'4 d8 es4 d8 ~ | % 13
    d4 r4 r8 c4 d8 | % 14
    f8 d4 c4 bes4 g8 ~ | % 15
    g4 r4 r2 | % 16
    r4 d'4 d8 es4 d8 ~ | % 17
    d4 r8 bes8 d8 es4 d8 ~ | % 18
    d4 r8 bes8 d8 es4 d8 ~ | % 19
    d4 r4 r2 | \barNumberCheck #20
    R1 \bar "|."
    \repeat volta 2 {
        | % 21
        r8 d8 d8 [ d8 ] d8 [ d8 c8 bes8 ] | % 22
        c8 [ c8 c8 bes8 ] g4 r4 | % 23
        r8 d'8 d8 [ d8 ] d8 [ d8 c8 bes8 ] | % 24
        c8 [ c8 c8 bes8 ] f4 r4 }
    | % 25
    R1*7 \bar "|."
    }

PartPTwoVoiceOne =  \relative f {
    \clef "bass" \key g \minor \time 4/4 \repeat volta 2 {
        <f bes>2 r2 | % 2
        r2 \times 2/3 {
            <f bes>4 <e a>4 <es as>4 }
        | % 3
        <d g>2 r2 | % 4
        | % 4
        r2 ^"Intro" \times 2/3 {
            <f bes>4 <d f>4 <g c>4 }
        }
    | % 5
    r4 <bes d f>8 [ <bes d f>8 ] r4 <bes d f>4 | % 6
    r4 <bes d f>8 [ <bes d f>8 ] r4 <bes d f>4 | % 7
    r4 <g bes d>8 [ <g bes d>8 ] r4 <g bes d>4 | % 8
    r4 <g bes d>8 [ <g bes d>8 ] r4 <g bes d>4 | % 9
    r4 <bes d f>8 [ <bes d f>8 ] r4 <bes d f>4 | \barNumberCheck #10
    r4 <bes d f>8 [ <bes d f>8 ] r4 <bes d f>4 | % 11
    r4 <g bes d>8 [ <g bes d>8 ] r4 <g bes d>4 | % 12
    r4 <g bes d>8 [ <g bes d>8 ] r4 <g bes d>4 | % 13
    r4 <bes d f>8 [ <bes d f>8 ] r4 <bes d f>4 | % 14
    r4 <bes d f>8 [ <bes d f>8 ] r4 <bes d f>4 | % 15
    r4 <g bes d>8 [ <g bes d>8 ] r4 <g bes d>4 | % 16
    r4 <g bes d>8 [ <g bes d>8 ] r4 <g bes d>4 | % 17
    r4 <bes d f>8 [ <bes d f>8 ] r4 <bes d f>4 | % 18
    r4 <bes d f>8 [ <bes d f>8 ] r4 <bes d f>4 | % 19
    r4 <g bes d>8 [ <g bes d>8 ] r4 <g bes d>4 | \barNumberCheck #20
    r4 <g bes d>8 [ <g bes d>8 ] r4 <g bes d>4 \bar "|."
    \repeat volta 2 {
        | % 21
        r4 <bes d f>8 [ <bes d f>8 ] r4 <bes d f>4 | % 22
        r4 <bes d f>8 [ <bes d f>8 ] r4 <bes d f>4 | % 23
        r4 <g bes d>8 [ <g bes d>8 ] r4 <g bes d>4 | % 24
        r4 <g bes d>8 [ <g bes d>8 ] r4 <g bes d>4 }
    | % 25
    R1*7 \bar "|."
    }

PartPThreeVoiceOne =  \relative bes, {
    \clef "bass" \key g \minor \time 4/4 \repeat volta 2 {
        R1*4 }
    | % 5
    bes8 [ bes8 bes8 bes8 ] bes8 [ bes8 ] bes4 | % 6
    R1 | % 7
    g8 [ g8 g8 g8 ] g8 [ g8 ] g4 | % 8
    R1 | % 9
    bes8 [ bes8 bes8 bes8 ] bes8 [ bes8 ] bes4 | \barNumberCheck #10
    R1 | % 11
    g8 [ g8 g8 g8 ] g8 [ g8 ] g4 | % 12
    R1 | % 13
    bes8 [ bes8 bes8 bes8 ] bes8 [ bes8 ] bes4 | % 14
    R1 | % 15
    g8 [ g8 g8 g8 ] g8 [ g8 ] g4 | % 16
    R1 | % 17
    bes8 [ bes8 bes8 bes8 ] bes8 [ bes8 ] bes4 | % 18
    R1 | % 19
    g8 [ g8 g8 g8 ] g8 [ g8 ] g4 | \barNumberCheck #20
    R1 \bar "|."
    \repeat volta 2 {
        | % 21
        bes4 r4 bes4 r8 bes8 ~ | % 22
        bes8 [ bes8 ] bes4 _. as4 _. as4 _. | % 23
        g4 r4 g4 r8 g8 ~ | % 24
        g8 [ g8 ] g4 _. f4 _. f4 _. }
    | % 25
    R1*7 \bar "|."
    }


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
            \set Staff.instrumentName = "skank"
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

