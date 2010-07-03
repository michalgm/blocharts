
\version "2.12.2"
% automatically converted from roma-rama.xml

\header {
    encodingsoftware = "Finale 2008 for Windows"
    tagline = "Finale 2008 for Windows"
    encodingdate = "2010-03-18"
	title = "Roma-Rama - alpha version"
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
PartPOneVoiceOne =  \relative g' {
    \clef "treble" \key c \minor \time 4/4 \repeat volta 2 {
        g1 | % 2
        b2. as4 | % 3
        g1 | % 4
        b1 | % 5
        c1 | % 6
        es2. as,4 | % 7
        c1 | % 8
        as1 }
    | % 9
    g4 r8 as8 b8 [ b8 ] r8 as8 | \barNumberCheck #10
    g4 r8 f8 g8 [ as8 ] g4 | % 11
    r8 g4 as8 b8 [ b8 ] r8 as8 | % 12
    g4 r8 f8 g8 [ as8 ] g4 | % 13
    as4. es4. c'4 ~ | % 14
    c2. r4 | % 15
    as4. es4. c4 ~ | % 16
    c2. r4 | % 17
    b'4 r8 c8 d8 [ d8 ] r8 c8 | % 18
    b4 r8 as8 b8 [ c8 ] b4 | % 19
    r8 b4 c8 d8 [ d8 ] r8 c8 | \barNumberCheck #20
    b4 r8 as8 b8 [ c8 ] b4 | % 21
    c4. as4. es'4 ~ | % 22
    es2. r4 | % 23
    c4. as4. es4 ~ | % 24
    es2. r4 | % 25
    g4 as8 [ as8 ] b8 [ b8 as8 as8 ] | % 26
    g4 as8 [ as8 ] b8 [ b8 as8 as8 ] | % 27
    g4 c8 [ c8 ] b8 [ b8 es8 es8 ] | % 28
    d8 [ d8 as'8 as8 ] g4 r4 | % 29
    as4. es4. c4 | \barNumberCheck #30
    as'4. es4. c4 | % 31
    as'4. es4. c4 | % 32
    as'4 r4 as4 r4 | % 33
    g2 r2 \bar "|."
    }

PartPTwoVoiceOne =  \relative b {
    \clef "treble" \key c \minor \time 4/4 \repeat volta 2 {
        r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] | % 2
        r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] | % 3
        r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] | % 4
        r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] | % 5
        r4 <c es>8 [ <c es>8 ] r8 <c es>8 <c es>8 [ <c es>8 ] | % 6
        r4 <c es>8 [ <c es>8 ] r8 <c es>8 <c es>8 [ <c es>8 ] | % 7
        r4 <c es>8 [ <c es>8 ] r8 <c es>8 <c es>8 [ <c es>8 ] | % 8
        r4 <c es>8 [ <c es>8 ] r8 <c es>8 <c es>8 [ <c es>8 ] }
    | % 9
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] | \barNumberCheck
    #10
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] | % 11
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] | % 12
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] | % 13
    r4 <c es>8 [ <c es>8 ] r8 <c es>8 <c es>8 [ <c es>8 ] | % 14
    r4 <c es>8 [ <c es>8 ] r8 <c es>8 <c es>8 [ <c es>8 ] | % 15
    r4 <c es>8 [ <c es>8 ] r8 <c es>8 <c es>8 [ <c es>8 ] | % 16
    r4 <c es>8 [ <c es>8 ] r8 <c es>8 <c es>8 [ <c es>8 ] | % 17
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] | % 18
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] | % 19
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] | \barNumberCheck
    #20
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] | % 21
    r4 <c es>8 [ <c es>8 ] r8 <c es>8 <c es>8 [ <c es>8 ] | % 22
    r4 <c es>8 [ <c es>8 ] r8 <c es>8 <c es>8 [ <c es>8 ] | % 23
    r4 <c es>8 [ <c es>8 ] r8 <c es>8 <c es>8 [ <c es>8 ] | % 24
    r4 <c es>8 [ <c es>8 ] r8 <c es>8 <c es>8 [ <c es>8 ] | % 25
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] | % 26
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] | % 27
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] | % 28
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] | % 29
    r4 <c es>8 [ <c es>8 ] r8 <c es>8 <c es>8 [ <c es>8 ] |
    \barNumberCheck #30
    r4 <c es>8 [ <c es>8 ] r8 <c es>8 <c es>8 [ <c es>8 ] | % 31
    r4 <c es>8 [ <c es>8 ] r8 <c es>8 <c es>8 [ <c es>8 ] | % 32
    r4 <c es>8 [ <c es>8 ] r8 <c es>8 <c es>8 [ <c es>8 ] | % 33
    | % 33
    <b d>2 -"contunue pattern, last time hold" r2 \bar "|."
    }

PartPThreeVoiceOne =  \relative g, {
    \clef "bass" \key c \minor \time 4/4 \repeat volta 2 {
        g4 r8 d'8 r4 g,4 | % 2
        g4 r8 d'8 r4 g,4 | % 3
        g4 r8 d'8 r4 g,4 | % 4
        g4 r8 d'8 r4 g,4 | % 5
        as4 r8 es'8 r4 as,4 | % 6
        as4 r8 es'8 r4 as,4 | % 7
        as4 r8 es'8 r4 as,4 | % 8
        as4 r8 es'8 r4 as,4 }
    | % 9
    g4 r8 d'8 r4 g,4 | \barNumberCheck #10
    g4 r8 d'8 r4 g,4 | % 11
    g4 r8 d'8 r4 g,4 | % 12
    g4 r8 d'8 r4 g,4 | % 13
    as4 r8 es'8 r4 as,4 | % 14
    as4 r8 es'8 r4 as,4 | % 15
    as4 r8 es'8 r4 as,4 | % 16
    as4 r8 es'8 r4 as,4 | % 17
    g4 r8 d'8 r4 g,4 | % 18
    g4 r8 d'8 r4 g,4 | % 19
    g4 r8 d'8 r4 g,4 | \barNumberCheck #20
    g4 r8 d'8 r4 g,4 | % 21
    as4 r8 es'8 r4 as,4 | % 22
    as4 r8 es'8 r4 as,4 | % 23
    as4 r8 es'8 r4 as,4 | % 24
    as4 r8 es'8 r4 as,4 | % 25
    g4 r8 d'8 r4 g,4 | % 26
    g4 r8 d'8 r4 g,4 | % 27
    g4 r8 d'8 r4 g,4 | % 28
    g4 r8 d'8 r4 g,4 | % 29
    as4 r8 es'8 r4 as,4 | \barNumberCheck #30
    as4 r8 es'8 r4 as,4 | % 31
    as4 r8 es'8 r4 as,4 | % 32
    as4 r8 es'8 r4 as,4 | % 33
    | % 33
    g2 -"contunue pattern, last time hold" r2 \bar "|."
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

