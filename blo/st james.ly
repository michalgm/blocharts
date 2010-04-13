
\version "2.12.2"
% automatically converted from st james.xml

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
PartPOneVoiceOne =  \relative g' {
    \clef "treble" \key g \minor \time 4/4 r2 r8 g8 bes4 \bar "||"
    \repeat volta 2 {
        | % 2
        d4 d8 [ d8 ] c4. d8 | % 3
        bes8 [ g8 ~ ] g2 \breathe bes4 | % 4
        d4. d8 g4 es8 [ d8 ~ ] | % 5
        d2 r8 g,8 bes4 | % 6
        d4 d8 [ d8 ] c4. d8 | % 7
        bes8 [ g8 ~ ] g2 r8 g8 | % 8
        bes4. g8 bes4 a8 [ g8 ~ ] }
    \alternative { {
            | % 9
            g2 r8 g8 bes4 }
        {
            | \barNumberCheck #10
            g1 }
        } }

PartPTwoVoiceOne =  \relative d' {
    \clef "treble" \key g \minor \time 4/4 R1 \bar "||"
    \repeat volta 2 {
        | % 2
        \times 2/3  {
            d8 [ es8 d8 ] }
        \times 2/3  {
            es8 [ d8 es8 ] }
        \times 2/3  {
            d8 [ es8 d8 ] }
        \times 2/3  {
            es8 [ d8 es8 ] }
        | % 3
        \times 2/3  {
            d8 [ es8 d8 ] }
        \times 2/3  {
            es8 [ d8 es8 ] }
        \times 2/3  {
            d8 [ es8 d8 ] }
        \times 2/3  {
            es8 [ d8 es8 ] }
        | % 4
        \times 2/3  {
            d8 [ es8 d8 ] }
        \times 2/3  {
            es8 [ d8 es8 ] }
        \times 2/3  {
            d8 [ es8 d8 ] }
        \times 2/3  {
            es8 [ d8 es8 ] }
        | % 5
        \times 2/3  {
            d8 [ es8 d8 ] }
        \times 2/3  {
            es8 [ d8 es8 ] }
        \times 2/3  {
            d8 [ es8 d8 ] }
        \times 2/3  {
            es8 [ d8 es8 ] }
        | % 6
        \times 2/3  {
            d8 [ es8 d8 ] }
        \times 2/3  {
            es8 [ d8 es8 ] }
        \times 2/3  {
            d8 [ es8 d8 ] }
        \times 2/3  {
            es8 [ d8 es8 ] }
        | % 7
        \times 2/3  {
            d8 [ es8 d8 ] }
        \times 2/3  {
            es8 [ d8 es8 ] }
        \times 2/3  {
            d8 [ es8 d8 ] }
        \times 2/3  {
            es8 [ d8 es8 ] }
        | % 8
        <des es>2 <c d>2 }
    \alternative { {
            | % 9
            \times 2/3  {
                d8 [ es8 d8 ] }
            \times 2/3  {
                es8 [ d8 es8 ] }
            \times 2/3  {
                d8 [ es8 d8 ] }
            \times 2/3  {
                es8 [ d8 es8 ] }
            }
        {
            | \barNumberCheck #10
            d1 }
        } }

PartPThreeVoiceOne =  \relative g {
    \clef "bass" \key g \minor \time 4/4 R1 \bar "||"
    \repeat volta 2 {
        | % 2
        | % 2
        <g bes>2 <fis a>2 | % 3
        | % 3
        <g bes>2 r2 | % 4
        | % 4
        <g bes>2 <fis a>2 | % 5
        | % 5
        <g bes>2 r2 | % 6
        | % 6
        <g bes>2 <g bes>2 | % 7
        | % 7
        <g bes>2 <fis c'>2 | % 8
        | % 8
        <g bes>2 <fis a>2 }
    \alternative { {
            | % 9
            | % 9
            <g bes>2 <fis c'>2 }
        {
            | \barNumberCheck #10
            | \barNumberCheck #10
            <g bes>1 }
        } }

PartPThreeVoiceOneChords =  \chordmode {
    | % 2
    | % 2
    s1 g2:m5 d2:7 | % 3
    | % 3
    g2:m5 | % 4
    | % 4
    s2 g2:m5 d2:7 | % 5
    | % 5
    g2:m5 | % 6
    | % 6
    s2 g2:m5 g2:m7 | % 7
    | % 7
    c2:m7 d2:7 | % 8
    | % 8
    es2:7 d2:7 | % 9
    | % 9
    g2:m5 d2:7 | \barNumberCheck #10
    | \barNumberCheck #10
    g1:m5 }

PartPFourVoiceOne =  \relative g, {
    \clef "bass" \key g \minor \time 4/4 R1 \bar "||"
    \repeat volta 2 {
        | % 2
        | % 2
        g2 d'2 | % 3
        | % 3
        g,1 | % 4
        | % 4
        | % 4
        g2 -"walk" d'2 | % 5
        | % 5
        g,1 | % 6
        | % 6
        g2 f2 | % 7
        | % 7
        es2 d2 | % 8
        | % 8
        es2 d2 }
    \alternative { {
            | % 9
            | % 9
            g2 d2 }
        {
            | \barNumberCheck #10
            | \barNumberCheck #10
            bes'1 }
        } }

PartPFourVoiceOneChords =  \chordmode {
    | % 2
    | % 2
    s1 g2:m5 d2:7 | % 3
    | % 3
    g1:m5 | % 4
    | % 4
    | % 4
    g2:m5 d2:7 | % 5
    | % 5
    g1:m5 | % 6
    | % 6
    g2:m5 g2:m7 | % 7
    | % 7
    c2:m7 d2:7 | % 8
    | % 8
    es2:7 d2:7 | % 9
    | % 9
    g2:m5 d2:7 | \barNumberCheck #10
    | \barNumberCheck #10
    g1:m5 }


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
            \set Staff.instrumentName = "sax"
            \context Staff << 
                \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "tbn/bari"
            \context ChordNames = "PartPThreeVoiceOneChords" \PartPThreeVoiceOneChords
            \context Staff <<
                \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "bass"
            \context ChordNames = "PartPFourVoiceOneChords" \PartPFourVoiceOneChords
            \context Staff <<
                \context Voice = "PartPFourVoiceOne" { \PartPFourVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

