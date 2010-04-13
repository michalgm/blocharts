
\version "2.12.2"
% automatically converted from matador - Score.xml

\header {
    encodingsoftware = "Finale 2008 for Windows"
    tagline = "Finale 2008 for Windows"
    encodingdate = "2010-03-18"
    }

#(set-global-staff-size 20.5767485433)
\paper {
    paper-width = 27.93\cm
    paper-height = 21.59\cm
    top-margin = 1.59\cm
    botton-margin = 1.59\cm
    left-margin = 1.27\cm
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
PartPOneVoiceOne =  \relative a {
    \repeat volta 2 {
        \clef "treble" \key c \major \time 2/2 \partial 4 r4 \bar "||"
        \repeat volta 2 {
            | % 1
            \mark \markup { \box { A } } | % 1
            a8 \mf [ a8 r8 a8 ] c4 c8 [ e8 ~ ] | % 2
            e8 r8 d4 e4 d4 \bar "||"
            | % 3
            e4. c8 ~ c4 r4 | % 4
            R1 | % 5
            r8 d8 [ d8 d8 ] d8 [ f8 r8 e8 ] | % 6
            r8 b8 [ r8 b8 ] c4 b4 | % 7
            c4. a8 ~ a4 r4 | % 8
            R1 | % 9
            r8 d8 [ r8 d8 ] d8 [ f8 r8 e8 ] | \barNumberCheck #10
            r8 b8 r4 r8 b8 [ r8 b8 ] | % 11
            c4 b8 [ c8 ] r8 c8 [ r8 d8 ] | % 12
            e4 r4 r8 a,8 ~ [ a8 b8 ] | % 13
            c8 [ c8 r8 c8 ] d4 c8 [ b8 ] | % 14
            r8 e,8 [ e8 e8 ] c'4 d8 [ c8 ] \bar "||"
            | % 15
            a4 r4 r2 | % 16
            R1*2 | % 18
            r2 r8 \f e'8 -"2nd & 3rd x only
            ------------------------------------------------|" _- [ r8 g8
            _- ] | % 19
            r8 f8 _- [ r8 d8 _- ] e4 _- d8 _- [ e8 _. ] |
            \barNumberCheck #20
            r8 e8 _- e4 _- r4 r8 c8 _- | % 21
            d8 _- [ d8 _. r8 d8 _- ] e4 f8 _- [ e8 _. ] | % 22
            r8 e8 _- e4 _- r2 \bar "||"
            }
        \alternative { {
                | % 23
                \mark \markup { \box { B } } | % 23
                R1*7 | \barNumberCheck #30
                | \barNumberCheck #30
                R1 }
            {
                | % 31
                \mark \markup { \box { C } } | % 31
                R1 }
            } | % 32
        R1*2 | % 34
        \once \override NoteHead #'style = #'cross e'4 ^"To solos last
        time" \mf _"cresc." r4 \once \override NoteHead #'style =
        #'cross e4 r4 | % 35
        R1*3 | % 38
        \once \override NoteHead #'style = #'cross e4 r4 \once \override
        NoteHead #'style = #'cross e4 r4 | % 39
        R1*4 \bar "||"
        | % 43
        \mark \markup { \box { D } } | % 43
        R1 | % 44
        r2 \ff r4 r8 g,8 | % 45
        r8 g8 [ r8 d8 ] r8 f8 [ r8 d8 ] | % 46
        e2 r2 | % 47
        R1 | % 48
        r2 r4 r8 g8 | % 49
        r8 d8 [ r8 f8 ] r8 c8 [ r8 e8 ] | \barNumberCheck #50
        r8 e8 e4 r8 e8 [ r8 e8 ] | % 51
        g4 ^\turn f8 [ e8 ] f4 ^\turn e8 [ d8 ] | % 52
        e4 ^\turn d8 [ c8 ] d4 ^\turn c8 [ b8 ] | % 53
        c2 r8 f8 _> _- [ r8 f8 _> _- ] | % 54
        r8 e8 ~ _> _- e4 r2 | % 55
        R1*4 }
    s1 ^"back to A" \repeat volta 2 {
        | \barNumberCheck #60
        | \barNumberCheck #60
        R1 }
    \alternative { {
            | % 61
            R1 }
        {
            | % 62
            R1 }
        } }

PartPOneVoiceOneLyricsOne =  \lyricmode { \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 "Hey!" "Hey!" "Hey!" "Hey!" \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 }
PartPTwoVoiceOne =  \relative a {
    \repeat volta 2 {
        \clef "treble" \key c \major \time 2/2 \partial 4 r4 \bar "||"
        \repeat volta 2 {
            | % 1
            \mark \markup { \box { A } } | % 1
            a8 \mf [ a8 r8 a8 ] c4 c8 [ e8 ~ ] | % 2
            e8 r8 d4 e4 d4 \bar "||"
            | % 3
            e4. c8 ~ c4 r4 | % 4
            R1 | % 5
            r8 d8 [ d8 d8 ] d8 [ f8 r8 e8 ] | % 6
            r8 b8 [ r8 b8 ] c4 b4 | % 7
            c4. a8 ~ a4 r4 | % 8
            R1 | % 9
            r8 d8 [ r8 d8 ] d8 [ f8 r8 e8 ] | \barNumberCheck #10
            r8 b8 r4 r8 b8 [ r8 b8 ] | % 11
            c4 b8 [ c8 ] r8 c8 [ r8 d8 ] | % 12
            e4 r4 r8 a,8 ~ [ a8 b8 ] | % 13
            c8 [ c8 r8 c8 ] d4 c8 [ b8 ] | % 14
            r8 e,8 [ e8 e8 ] c'4 d8 [ c8 ] \bar "||"
            | % 15
            a4 r4 \f a8 [ a8 r8 a8 ] | % 16
            e'1 | % 17
            r2 a,8 [ a8 r8 f'8 ] | % 18
            e1 | % 19
            r2 a,8 [ a8 r8 a8 ] | \barNumberCheck #20
            e'1 | % 21
            r2 a,8 [ a8 r8 f'8 ] | % 22
            e1 \bar "||"
            }
        \alternative { {
                | % 23
                \mark \markup { \box { B } } | % 23
                a,8 _. [ a8 _. a8 _. a8 _. ] a4 _> _- c8 _. [ c8 _. ] | % 24
                c4 _> _- a8 _. [ a8 _. ] a4 _> _- r4 | % 25
                a8 [ a8 a8 a8 ] a4 c8 [ c8 ] | % 26
                c4 a8 [ a8 ] a4 r4 | % 27
                a8 [ a8 a8 a8 ] a4 c8 [ c8 ] | % 28
                c4 a8 [ a8 ] a4 r4 | % 29
                a8 [ a8 a8 a8 ] a4 c8 [ c8 ] | \barNumberCheck #30
                | \barNumberCheck #30
                c4 ^"To solos last time" a8 [ a8 ] a4 r4 }
            {
                | % 31
                \mark \markup { \box { C } } | % 31
                R1 }
            } | % 32
        R1*2 | % 34
        e''4 \mf _"cresc." r4 e4 r4 | % 35
        c8 [ c8 c8 c8 ] b4 c4 | % 36
        r2 a8 [ b8 c8 b8 ] | % 37
        c8 [ c8 c8 c8 ] b4 c4 | % 38
        e4 r4 e4 r4 | % 39
        e8 [ e8 e8 e8 ] d4 e4 | \barNumberCheck #40
        r2 c8 [ d8 e8 d8 ] | % 41
        e8 [ e8 e8 e8 ] d4 e4 | % 42
        r2 r4 e,8 [ f8 ] \bar "||"
        | % 43
        \mark \markup { \box { D } } | % 43
        e2. \ff e8 [ f8 ] | % 44
        e2. s4 | % 45
        d8 [ d8 d8 d8 ] e4 _. f8 [ e8 ~ ] | % 46
        e2 r4 e8 [ f8 ] | % 47
        e2. e8 [ f8 ] | % 48
        e2. r4 | % 49
        d8 [ d8 d8 d8 ] e4 f8 [ e8 ~ ] | \barNumberCheck #50
        e2 r8 e8 [ r8 e8 ] | % 51
        g4 ^\turn f8 [ e8 ] f4 ^\turn e8 [ d8 ] | % 52
        e4 ^\turn d8 [ c8 ] d4 ^\turn c8 [ b8 ] | % 53
        c2 r8 f8 _> _- [ r8 f8 _> _- ] | % 54
        r8 e8 ~ _> _- e4 r4 e8 [ f8 ] | % 55
        e2. e8 [ f8 ] | % 56
        e2. r4 | % 57
        d8 [ d8 d8 d8 ] e4 f8 [ e8 ~ ] | % 58
        e4 r4 r2 }
    | % 59
    s1 ^"back to A" \repeat volta 2 {
        | \barNumberCheck #60
        | \barNumberCheck #60
        c8 -"solos" [ c8 c8 c8 ] c4 e8 [ e8 ] }
    \alternative { {
            | % 61
            e4 c8 [ c8 ] c4 r4 }
        {
            | % 62
            e4 r4 r4 e8 [ f8 ] }
        } }

PartPTwoVoiceOneLyricsOne =  \lyricmode { \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 "Hey!" "Hey!" \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 "Hey!" "Hey!" \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 }
PartPThreeVoiceOne =  \relative a' {
    \repeat volta 2 {
        \clef "treble" \key c \major \time 2/2 \partial 4 <a e'>8 ^^ [
        <a e'>8 ^^ ] \bar "||"
        \repeat volta 2 {
            | % 1
            \mark \markup { \box { A } } | % 1
            R1*2 \bar "||"
            | % 3
            | % 3
            r8 \mp <a e'>8 ^. [ r8 <a e'>8 ^. ] r4 <a e'>4 ^. | % 4
            r4 <a e'>4 ^. r4 <a e'>4 ^. | % 5
            r8 <a f'>8 [ r8 <a f'>8 ] r4 <a f'>4 | % 6
            r4 <b e>4 r4 <b e>4 | % 7
            r8 <a e'>8 [ r8 <a e'>8 ] r4 <a e'>4 | % 8
            r4 <a e'>4 r4 <a e'>4 | % 9
            r8 <a f'>8 [ r8 <a f'>8 ] r4 <a f'>4 | \barNumberCheck #10
            r4 <b e>4 r4 <b e>4 | % 11
            r8 <a e'>8 [ r8 <a e'>8 ] r4 <a e'>4 | % 12
            r4 <a e'>4 r4 <a e'>4 | % 13
            r8 <a f'>8 [ r8 <a f'>8 ] r4 <a f'>4 | % 14
            r4 <b e>4 r4 <b e>4 \bar "||"
            | % 15
            | % 15
            e1 \mp ( | % 16
            b1 | % 17
            c2 d4 f4 | % 18
            e2 c4 b4 | % 19
            e1 | \barNumberCheck #20
            b1 | % 21
            c2 d4 f4 | % 22
            e4 d4 c4 b4 \bar "||"
            }
        \alternative { {
                | % 23
                \mark \markup { \box { B } } | % 23
                a1 ) ( | % 24
                e1 ) | % 25
                d2 e4 a4 | % 26
                e1 | % 27
                a1 | % 28
                e1 | % 29
                d2 e4 a4 | \barNumberCheck #30
                | \barNumberCheck #30
                e2 ^"To solos last time" r4 <a e'>8 ^^ [ <a e'>8 ^^ ] }
            {
                | % 31
                \mark \markup { \box { C } } | % 31
                a8 _. [ a8 \mf _. a8 _. a8 _. ] g4 _"cresc." _- a4 _. }
            } | % 32
        r2 e8 _. [ g8 _. a8 _. g8 _. ] | % 33
        a8 _. [ a8 _. a8 _. a8 _. ] g4 _- a4 _. | % 34
        e'4 r4 e4 r4 | % 35
        c8 [ c8 c8 c8 ] b4 c4 | % 36
        r2 a8 [ b8 c8 b8 ] | % 37
        c8 [ c8 c8 c8 ] b4 c4 | % 38
        e4 r4 e4 r4 | % 39
        c8 [ c8 c8 c8 ] b4 c4 | \barNumberCheck #40
        r2 a8 [ b8 c8 b8 ] | % 41
        c8 [ c8 c8 c8 ] b4 c4 | % 42
        r2 r4 e,8 [ f8 ] \bar "||"
        | % 43
        \mark \markup { \box { D } } | % 43
        e2. \ff e8 [ f8 ] | % 44
        e2. s4 | % 45
        d8 [ d8 d8 d8 ] e4 _. f8 [ e8 ~ ] | % 46
        e2 r4 e8 [ f8 ] | % 47
        e2. e8 [ f8 ] | % 48
        e2. r4 | % 49
        d8 [ d8 d8 d8 ] e4 f8 [ e8 ~ ] | \barNumberCheck #50
        e2 r2 | % 51
        R1*2 | % 53
        d8 [ d8 d8 d8 ] e4 f8 [ e8 ~ ] | % 54
        e4 r4 r4 e8 [ f8 ] | % 55
        e2. e8 [ f8 ] | % 56
        e2. r4 | % 57
        d8 [ d8 d8 d8 ] e4 f8 [ e8 ~ ] | % 58
        e4 r4 r4 <a e'>8 ^^ [ <a e'>8 ^^ ] }
    | % 59
    s1 ^"back to A" \repeat volta 2 {
        | \barNumberCheck #60
        | \barNumberCheck #60
        c,8 -"solos" [ c8 c8 c8 ] c4 e8 [ e8 ] }
    \alternative { {
            | % 61
            e4 c8 [ c8 ] c4 r4 }
        {
            | % 62
            e4 r4 r4 e8 [ f8 ] }
        } }

PartPThreeVoiceOneLyricsOne =  \lyricmode { \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 "Hey!" "Hey!" \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 "Hey!" "Hey!" \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 }
PartPFourVoiceOne =  \relative a' {
    \repeat volta 2 {
        \clef "treble" \key c \major \time 2/2 \partial 4 <a c>8 ^^ [ <a
            c>8 ^^ ] \bar "||"
        \repeat volta 2 {
            | % 1
            \mark \markup { \box { A } } | % 1
            r2 r2 | % 2
            R1 \bar "||"
            | % 3
            | % 3
            r4 \mp <a c>4 ^. r4 <a c>4 ^. | % 4
            r4 <a c>4 ^. r4 <a c>4 ^. | % 5
            r4 <a d>4 r4 <a d>4 | % 6
            r4 <gis b>4 r4 <gis b>4 | % 7
            r4 <a c>4 r4 <a c>4 | % 8
            r4 <a c>4 r4 <a c>4 | % 9
            r4 <a d>4 r4 <a d>4 | \barNumberCheck #10
            r4 <gis b>4 r4 <gis b>4 | % 11
            r4 <a c>4 r4 <a c>4 | % 12
            r4 <a c>4 r4 <a c>4 | % 13
            r4 <a d>4 r4 <a d>4 | % 14
            r4 <gis b>4 r4 <gis b>4 \bar "||"
            | % 15
            | % 15
            r2 \f a,8 [ a8 r8 a8 ] | % 16
            e'1 | % 17
            r2 a,8 [ a8 r8 f'8 ] | % 18
            e1 | % 19
            r2 a,8 [ a8 r8 a8 ] | \barNumberCheck #20
            e'1 | % 21
            r2 a,8 [ a8 r8 f'8 ] | % 22
            e1 \bar "||"
            }
        \alternative { {
                | % 23
                \mark \markup { \box { B } } | % 23
                a,8 _. [ a8 _. a8 _. a8 _. ] a4 _> _- c8 _. [ c8 _. ] | % 24
                c4 _> _- a8 _. [ a8 _. ] a4 _> _- r4 | % 25
                a8 [ a8 a8 a8 ] a4 c8 [ c8 ] | % 26
                c4 a8 [ a8 ] a4 r4 | % 27
                a8 [ a8 a8 a8 ] a4 c8 [ c8 ] | % 28
                c4 a8 [ a8 ] a4 r4 | % 29
                a8 [ a8 a8 a8 ] a4 c8 [ c8 ] | \barNumberCheck #30
                | \barNumberCheck #30
                c4 ^"To solos last time" a8 [ a8 ] a4 <a' c>8 ^^ [ <a c>8
                ^^ ] }
            {
                | % 31
                \mark \markup { \box { C } } | % 31
                a8 _. [ a8 \mf _. a8 _. a8 _. ] g4 _"cresc." _- a4 _. }
            } | % 32
        r2 e8 _. [ g8 _. a8 _. g8 _. ] | % 33
        a8 _. [ a8 _. a8 _. a8 _. ] g4 _- a4 _. | % 34
        e'4 r4 e4 r4 | % 35
        a,8 [ a8 a8 a8 ] g4 a4 | % 36
        r2 e8 [ g8 a8 g8 ] | % 37
        a8 [ a8 a8 a8 ] g4 a4 | % 38
        e'4 r4 e4 r4 | % 39
        a,8 [ a8 a8 a8 ] g4 a4 | \barNumberCheck #40
        r2 e8 [ g8 a8 g8 ] | % 41
        a8 [ a8 a8 a8 ] g4 a4 | % 42
        R1 \bar "||"
        | % 43
        \mark \markup { \box { D } } | % 43
        <a c>4 \ff ^> ^- r4 <a c>4 ^> ^- r4 | % 44
        R1*3 | % 47
        r4 <a c>8 ^^ [ <a c>8 ^^ ] r4 <a c>8 ^^ [ <a c>8 ^^ ] | % 48
        R1*3 | % 51
        <a c>4 r4 <a c>4 r4 | % 52
        R1 | % 53
        d,8 [ d8 d8 d8 ] e4 f8 [ e8 ~ ] | % 54
        e4 r4 r2 | % 55
        r4 <a c>8 [ <a c>8 ] r4 <a c>8 [ <a c>8 ] | % 56
        R1 | % 57
        d,8 [ d8 d8 d8 ] e4 f8 [ e8 ~ ] | % 58
        e4 r4 r4 <a c>8 ^^ [ <a c>8 ^^ ] }
    | % 59
    s1 ^"back to A" \repeat volta 2 {
        | \barNumberCheck #60
        | \barNumberCheck #60
        a,8 -"solos" [ a8 a8 a8 ] a4 c8 [ c8 ] }
    \alternative { {
            | % 61
            c4 a8 [ a8 ] a4 r4 }
        {
            | % 62
            c4 r4 r2 }
        } }

PartPFourVoiceOneLyricsOne =  \lyricmode { \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 "Hey!" "Hey!"
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 "Hey!" "Hey!"
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 }
PartPFiveVoiceOne =  \relative a, {
    \repeat volta 2 {
        \clef "bass" \key c \major \time 2/2 \partial 4 a8 ^^ [ a8 ^^ ]
        \bar "||"
        \repeat volta 2 {
            | % 1
            \mark \markup { \box { A } } | % 1
            R1*2 \bar "||"
            | % 3
            r2 a8 _- [ a8 _- a8 _- a8 _- ] | % 4
            e'8 ^- [ e8 ^- e8 ^- e8 ^- ] c8 ^- [ c8 ^- c8 ^- d8 ^> ^. ]
            | % 5
            R1*2 | % 7
            r2 a8 [ a8 a8 a8 ] | % 8
            e'8 [ e8 e8 e8 ] c8 [ c8 c8 d8 ] | % 9
            R1*2 | % 11
            r2 a8 [ a8 a8 a8 ] | % 12
            e'8 [ e8 e8 e8 ] c8 [ c8 c8 d8 ] | % 13
            R1*2 \bar "||"
            | % 15
            r2 a8 _- [ a8 _- a8 _- d8 _- ] | % 16
            e4 ^- e4 ^- e4 ^- r4 | % 17
            r2 d8 [ d8 d8 d8 ] | % 18
            e4 e4 e4 r4 | % 19
            r2 a,8 [ a8 a8 d8 ] | \barNumberCheck #20
            e4 e4 e4 r4 | % 21
            r2 d8 [ d8 d8 d8 ] | % 22
            e4 e4 e4 r4 \bar "||"
            }
        \alternative { {
                | % 23
                \mark \markup { \box { B } } | % 23
                r2 a,8 [ a8 a8 d8 ] | % 24
                e4 e4 e4 r4 | % 25
                r2 d8 [ d8 d8 d8 ] | % 26
                e4 e4 e4 r4 | % 27
                r2 a,8 [ a8 a8 d8 ] | % 28
                e4 e4 e4 r4 | % 29
                r2 d8 [ d8 d8 d8 ] | \barNumberCheck #30
                | \barNumberCheck #30
                e4 ^"To solos last time" e4 e4 a,8 ^^ [ a8 ^^ ] }
            {
                | % 31
                \mark \markup { \box { C } } | % 31
                a8 _. [ a8 \mf _. a8 _. a8 _. ] g4 _"cresc." _- a4 _. }
            } | % 32
        r2 e8 _. [ g8 _. a8 _. g8 _. ] | % 33
        a8 _. [ a8 _. a8 _. a8 _. ] g4 _- a4 _. | % 34
        e''4 r4 e4 r4 | % 35
        a,,8 [ a8 a8 a8 ] g4 a4 | % 36
        r2 e8 [ g8 a8 g8 ] | % 37
        a8 [ a8 a8 a8 ] g4 a4 | % 38
        e''4 r4 e4 r4 | % 39
        a,,8 [ a8 a8 a8 ] g4 a4 | \barNumberCheck #40
        r2 e8 [ g8 a8 g8 ] | % 41
        a8 [ a8 a8 a8 ] g4 a4 | % 42
        R1 \bar "||"
        | % 43
        \mark \markup { \box { D } } | % 43
        r2 \ff a8 [ a8 a8 d8 ] | % 44
        e4 e4 e4 r4 | % 45
        d8 [ d8 d8 d8 ] e4 ^. f8 [ e8 ~ ] | % 46
        e2 r2 | % 47
        r2 a,8 [ a8 a8 d8 ] | % 48
        e4 e4 e4 r4 | % 49
        d8 [ d8 d8 d8 ] e4 f8 [ e8 ~ ] | \barNumberCheck #50
        e2 r2 | % 51
        r2 a,8 [ a8 a8 d8 ] | % 52
        e4 e4 e4 r4 | % 53
        d8 [ d8 d8 d8 ] e4 f8 [ e8 ~ ] | % 54
        e2 r2 | % 55
        r2 a,8 [ a8 a8 d8 ] | % 56
        e4 e4 e4 r4 | % 57
        d8 [ d8 d8 d8 ] e4 f8 [ e8 ~ ] | % 58
        e2 r4 a,8 ^^ [ a8 ^^ ] }
    | % 59
    s1 ^"back to A" \repeat volta 2 {
        | \barNumberCheck #60
        | \barNumberCheck #60
        R1 }
    \alternative { {
            | % 61
            R1 }
        {
            | % 62
            R1 }
        } }

PartPFiveVoiceOneLyricsOne =  \lyricmode { \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 "Hey!" "Hey!" \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 "Hey!" "Hey!" \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4
    \skip4 \skip4 \skip4 }
PartPSixVoiceOne =  \relative f'' {
    \repeat volta 2 {
        \clef "percussion" \key c \major \time 2/2 \partial 4 r4 \bar
        "||"
        \repeat volta 2 {
            | % 1
            \mark \markup { \box { A } } | % 1
            f8 [ r8 r8 f8 ] r4 r8 f8 | % 2
            r4 f4 f4 r4 \bar "||"
            | % 3
            | % 3
            f,4 -"Samba" r4 f4 r4 | % 4
            f4 r4 f4 r8 f8 | % 5
            r2 f8 [ f8 f8 f8 ] | % 6
            f4 r4 f8 [ f8 f8 f8 ] | % 7
            f4 r4 -"etc." r2 | % 8
            R1*7 \bar "||"
            | % 15
            R1*8 \bar "||"
            }
        \alternative { {
                | % 23
                \mark \markup { \box { B } } | % 23
                f4 r4 f4 r4 | % 24
                f4 r4 f4 r4 | % 25
                f4 r4 f8 [ f8 f8 f8 ] | % 26
                f4 r4 f8 [ f8 f8 f8 ] | % 27
                f4 r4 -"etc." r2 | % 28
                R1*2 | \barNumberCheck #30
                | \barNumberCheck #30
                R1 }
            {
                | % 31
                \mark \markup { \box { C } } | % 31
                f4 ^"To solos last time" r4 \mf f4 _"cresc." r4 }
            } | % 32
        f4 r4 f4 r4 | % 33
        f4 r4 f4 r4 | % 34
        R1 | % 35
        f4 r4 f4 r4 | % 36
        f4 r4 f4 r4 | % 37
        f4 r4 f4 r4 | % 38
        R1 | % 39
        f4 r4 f4 r4 | \barNumberCheck #40
        f4 r4 f4 r4 | % 41
        f4 r4 f4 r4 | % 42
        f'4 r8 f8 r4 f4 \bar "||"
        | % 43
        \mark \markup { \box { D } } | % 43
        f,4 \ff r4 f4 r4 | % 44
        f4 r4 f4 r4 | % 45
        f4 r8 f8 f8 [ f8 f8 f8 ] | % 46
        f8 [ f8 f8 f8 ] f8 [ f8 f8 f8 ] | % 47
        f4 r4 -"etc." r2 | % 48
        R1*11 }
    | % 59
    R1 \repeat volta 2 {
        | \barNumberCheck #60
        | \barNumberCheck #60
        R1 }
    \alternative { {
            | % 61
            R1 }
        {
            | % 62
            \once \override NoteHead #'style = #'cross f'4 ^"back to A"
            -"solos" r8 \once \override NoteHead #'style = #'cross f8 r4
            \once \override NoteHead #'style = #'cross f4 }
        } }


% The score definition
\score {
    <<
        \new Staff <<
            \set Staff.instrumentName = "opt.solos"
            \context Staff << 
                \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "trumpet"
            \context Staff << 
                \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                \new Lyrics \lyricsto "PartPTwoVoiceOne" \PartPTwoVoiceOneLyricsOne
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "saxes"
            \context Staff << 
                \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
                \new Lyrics \lyricsto "PartPThreeVoiceOne" \PartPThreeVoiceOneLyricsOne
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "tbn-bari"
            \context Staff << 
                \context Voice = "PartPFourVoiceOne" { \PartPFourVoiceOne }
                \new Lyrics \lyricsto "PartPFourVoiceOne" \PartPFourVoiceOneLyricsOne
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "bass"
            \context Staff << 
                \context Voice = "PartPFiveVoiceOne" { \PartPFiveVoiceOne }
                \new Lyrics \lyricsto "PartPFiveVoiceOne" \PartPFiveVoiceOneLyricsOne
                >>
            >>
        \new DrumStaff <<
            \set DrumStaff.instrumentName = "percussion"
            \context DrumStaff << 
                \context DrumVoice = "PartPSixVoiceOne" { \PartPSixVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

