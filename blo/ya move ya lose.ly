
\version "2.12.2"
% automatically converted from ya move ya lose.xml

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
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key f \minor \time 4/4 \repeat volta 2 {
        r2 c8 [ bes8 as8 bes8 ~ ] | % 2
        bes4 as4 f8 [ f8 ] as4 | % 3
        bes4 as4 bes4 as8 [ bes8 ~ ] | % 4
        bes4 c4 r2 | % 5
        r2 c8 [ bes8 as8 bes8 ~ ] | % 6
        bes4 as4 f8 [ f8 ] as4 | % 7
        bes4 as4 c4 as8 [ f8 ~ ] }
    \alternative { {
            | % 8
            f4 r4 r2 }
        {
            | % 9
            f4 ~ r4 r4 f4 }
        } \bar "||"
    \repeat volta 2 {
        | \barNumberCheck #10
        c'2 c2 | % 11
        bes4 as8 [ f8 ] r4 f4 | % 12
        c'2 c2 | % 13
        bes4 as8 [ f8 ] r4 f4 | % 14
        c'2 c2 | % 15
        bes4 as8 [ f8 ] r4 f4 | % 16
        es4. e8 ~ e4 f4 | % 17
        r4 r4 r4 -"1st x only" f4 }
    }

PartPTwoVoiceOne =  \relative es' {
    \clef "treble" \key f \minor \time 4/4 \repeat volta 2 {
        r8 es8 d4 es4 d4 | % 2
        es4 d4 es4 d4 | % 3
        es4 d4 es8 [ f8 ] r8 f8 ~ | % 4
        f4 r4 r2 | % 5
        r8 es8 d4 es4 d4 | % 6
        es4 d4 es4 d4 | % 7
        es4 d4 es8 [ f8 ] r8 f8 ~ }
    \alternative { {
            | % 8
            f4 r4 r2 }
        {
            | % 9
            f4 ~ r4 r4 f4 }
        } \bar "||"
    \repeat volta 2 {
        | \barNumberCheck #10
        as2 as2 | % 11
        g4 es8 [ f8 ] r4 f4 | % 12
        as2 as2 | % 13
        g4 es8 [ f8 ] r4 f4 | % 14
        as2 as2 | % 15
        g4 es8 [ f8 ] r4 f4 | % 16
        es4. e8 ~ e4 f4 | % 17
        r4 r4 r4 -"1st X only" f4 }
    }

PartPThreeVoiceOne =  \relative f, {
    \clef "bass" \key f \minor \time 4/4 \repeat volta 2 {
        f4 r8 f8 ~ f4 g4 | % 2
        as4 r8 as8 ~ as4 a4 | % 3
        bes4 r8 bes8 ~ bes4 b4 | % 4
        c4 r8 es8 ~ es4 f4 | % 5
        f,4 r8 f8 ~ f4 g4 | % 6
        as4 r8 as8 ~ as4 a4 | % 7
        bes4 r8 bes8 ~ bes4 b4 }
    \alternative { {
            | % 8
            c4 r8 es8 ~ es4 f4 }
        {
            | % 9
            c4 r8 es8 ~ es4 f4 }
        } \bar "||"
    \repeat volta 2 {
        | \barNumberCheck #10
        f,4 r8 f8 ~ f4 g4 | % 11
        as4 r8 as8 ~ as4 a4 | % 12
        bes4 r8 bes8 ~ bes4 b4 | % 13
        c4 r8 es8 ~ es4 f4 | % 14
        f,4 r8 f8 ~ f4 g4 | % 15
        as4 r8 as8 ~ as4 a4 | % 16
        bes4 r8 bes8 ~ bes4 b4 | % 17
        c4 r8 es8 ~ es4 f4 }
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

