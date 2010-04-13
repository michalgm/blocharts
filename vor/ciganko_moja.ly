
\version "2.12.2"
% automatically converted from CigankoMoja2.xml

\header {
    encodingsoftware = "Finale 2008 for Windows"
    tagline = "Finale 2008 for Windows"
    encodingdate = "2010-03-18"
    title = "Cigonko Moja"
    }

#(set-global-staff-size 20.5767485433)
\paper {
    paper-width = 21.59\cm
    paper-height = 27.93\cm
    top-margin = 1.27\cm
    botton-margin = 1.27\cm
    left-margin = 1.9\cm
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

%{ SOLO BACKING (WORK IT IN)
from "ciganko_solo.ly"
	{ d4-. r8 fis-. ees4-. fis-. | r8 c-. ees-. fis-. g4-- fis4-. }
	  \\
	{  a4-. r8 d-. c4-. d-. | r8 a-. c-. d-. ees4-- d4-.  }

from "ciganko_solo_backing.ly" (finale)
        <a d>4 _. r8 <d fis>8 _. <c es>4 _. <d fis>4 _. | % 2
        r8 <a c>8 _. <c es>8 _. [ <d fis>8 _. ] <es g>4 _- <d fis>4 _. }
	%}

PartPOneVoiceOne =  \relative g' {
    \repeat volta 2 {
        \clef "treble" \key a \minor \time 4/4 g4 g8 [ fis8 ] es4 es8 [
        d8 ] | % 2
        d2 fis8 [ g8 ] a4 | % 3
        fis8 [ g8 g8 fis8 ] es4 es8 [ d8 ] | % 4
        d4 fis8 [ g8 ] a8 [ fis8 g8 es8 ] | % 5
        g4 g8 [ fis8 ] es4 es8 [ d8 ] | % 6
        d2 fis8 [ g8 ] a4 | % 7
        fis8 [ g8 g8 fis8 ] es4 es8 [ d8 ] | % 8
        d4. es8 d8 [ c8 ] d4 }
    \repeat volta 2 {
        | % 9
        r4 fis8 [ g8 ] a4 a4 | \barNumberCheck #10
        a4 a4 a4 g4 | % 11
        c2 bes2 | % 12
        a4. g8 fis8 [ g8 ] a4 }
    \repeat volta 2 {
        | % 13
        g4. fis8 es4. d8 | % 14
        d2 fis8 [ g8 ] a4 | % 15
        g4. fis8 es4. d8 | % 16
        | % 16
        d4. ^"repeat 4x last time" es8 d8 [ c8 ] d4 }
    | % 17
    | % 17
    R1*16 \repeat volta 2 {
        | % 33
        g4 ^"D. C. 3x" _"Solo (variable length)" r8 d8 f4 as4 | % 34
        r8 g4 d8 f4 as4 | % 35
        g4 r8 d8 f4 g4 | % 36
        as8 [ as8 ] as4 f8 [ f8 ] f4 }
    \repeat volta 2 {
        | % 37
        r8 g8 [ b8 c8 ] d4 d4 | % 38
        \times 2/3  {
            es8 [ d8 c8 ] }
        d4 \times 2/3 {
            es8 [ d8 c8 ] }
        d4 | % 39
        r8 g,8 [ as8 b8 ] c4 c4 | \barNumberCheck #40
        \times 2/3  {
            d8 [ c8 b8 ] }
        c4 \times 2/3 {
            d8 [ c8 b8 ] }
        c4 | % 41
        r4 g8 [ as8 ] as4 as4 | % 42
        g8 [ as8 as8 g8 ] f8 [ g8 ] f4 | % 43
        c'8 [ b8 as8 b8 ] g8 [ as8 as8 g8 ] }
    \alternative { {
            | % 44
            g4 g8 [ g8 ] b8 [ c8 ] d4 }
        {
            | % 45
            g,4 as8 [ g8 ] g8 [ f8 ] g4 }
        } \repeat volta 2 {
        | % 46
        c8 [ b8 as8 b8 ] g8 [ as8 as8 g8 ] }
    \alternative { {
            | % 47
            g4 g8 [ g8 ] b8 [ c8 ] d4 }
        {
            | % 48
            g,4 b8 [ c8 ] d8 [ b8 c8 as8 ] }
        {
            | % 49
            g4 as8 [ g8 ] g8 [ f8 ] g4 }
        } \repeat volta 2 {
        | \barNumberCheck #50
        c8 [ b8 as8 b8 ] g8 [ as8 as8 g8 ] }
    \alternative { {
            | % 51
            g4 g8 [ g8 ] b8 [ c8 ] d4 }
        {
            | % 52
            g,8 [ b8 r8 c8 ] r8 cis8 d4 }
        {
            | % 53
            g,4 as8 [ g8 ] g8 [ f8 ] g4 }
        } | % 54
    R1 \repeat volta 4 {
        | % 55
        d8 [ g8 r8 g8 ] r8 g8 [ r8 g8 ] | % 56
        d8 [ as'8 r8 as8 ] r8 as8 [ r8 as8 ] | % 57
        c,8 [ f8 r8 f8 ] r8 f8 [ r8 f8 ] | % 58
        \times 2/3  {
            c'8 [ c8 b8 ] }
        as8 [ b8 ] \times 2/3 {
            as8 [ as8 g8 ] }
        g4 }
    }

PartPTwoVoiceOne =  \relative d {
    \repeat volta 2 {
        \clef "bass" \key a \minor \time 4/4 d4 r4 -"break 1st x only" r2
        | % 2
        d4. fis4. a4 | % 3
        d,4. fis4. a4 | % 4
        d,4 r4 r2 | % 5
        d4. fis4. a4 | % 6
        d,4. fis4. a4 | % 7
        d,4. fis4. a4 | % 8
        d,4. fis4. a4 }
    \repeat volta 2 {
        | % 9
        d,4. fis4. a4 | \barNumberCheck #10
        d,4. fis4. a4 | % 11
        c,2 cis2 | % 12
        d4. fis4. a4 }
    \repeat volta 2 {
        | % 13
        d,4. fis4. a4 | % 14
        d,4. fis4. a4 | % 15
        d,4. fis4. a4 | % 16
        d,4. fis4. a4 }
    | % 17
    R1*16 \repeat volta 2 {
        | % 33
        g4 ^"D. C. 3x" r8 d8 f4 as4 | % 34
        r8 g4 d8 f4 as4 | % 35
        g4 r8 d8 f4 g4 | % 36
        as8 [ as8 ] as4 f8 [ f8 ] f4 }
    \repeat volta 2 {
        | % 37
        g,4 r4 r2 | % 38
        g4. b4. d4 | % 39
        f,4. as4. c4 | \barNumberCheck #40
        f,4. as4. c4 | % 41
        f,4. as4. c4 | % 42
        f,4. as4. c4 | % 43
        g4. b4. d4 }
    \alternative { {
            | % 44
            g,4. b4. d4 }
        {
            | % 45
            g,4. b4. d4 }
        } \repeat volta 2 {
        | % 46
        g,4. b4. d4 }
    \alternative { {
            | % 47
            g,4. b4. d4 }
        {
            | % 48
            g,4 r4 r2 }
        {
            | % 49
            g4. b4. d4 }
        } \repeat volta 2 {
        | \barNumberCheck #50
        g,4. b4. d4 }
    \alternative { {
            | % 51
            g,4. b4. d4 }
        {
            | % 52
            g,8 [ b8 r8 c8 ] r8 cis8 d4 }
        {
            | % 53
            g,4. b4. d4 }
        } | % 54
    R1 \repeat volta 4 {
        | % 55
        g,8 [ g8 ] r4 r2 | % 56
        as8 [ as8 ] r4 r2 | % 57
        f8 [ f8 ] r4 r2 | % 58
        g4. b4. d4 }
    }


% The score definition
\score {
    <<
        \new Staff <<
            \set Staff.instrumentName = "Trumpet in C"
            \context Staff << 
                \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                >>
            >>
        \new Staff <<
            \context Staff << 
                \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

