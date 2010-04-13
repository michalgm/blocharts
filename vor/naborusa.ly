
\version "2.12.2"
% automatically converted from Naborusa2.xml

\header {
    encodingsoftware = "Finale 2008 for Windows"
    tagline = "Finale 2008 for Windows"
    encodingdate = "2010-03-18"
	title = "Naborusa"
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
PartPOneVoiceOne =  \relative f {
    \clef "bass" \key f \minor \time 4/4 | % 1
    f8 -"Bass" [ r16 c16 ] r8 es8 r16 f8 [ f16 ] c8 [ es8 ] | % 2
    f8 [ r16 c16 ] r8 es8 r16 f8 [ f16 ] c8 -"etc." [ es8 ] \bar "||"
    \repeat volta 2 {
        | % 3
        \clef "treble" | % 3
        f'8. [ f16 ~ ] f8 [ f8 ] f'4 es8 [ des8 ] | % 4
        | % 4
        c16 [ des16 r16 es16 ~ ] es2. | % 5
        | % 5
        ges,8. [ ges16 ~ ] ges8 [ bes8 ] des4 c8 [ bes8 ] | % 6
        | % 6
        c16 [ bes16 r16 a16 ~ ] a2. }
    \repeat volta 4 {
        | % 7
        | % 7
        ges4. bes8 des4 c8 [ bes8 ] | % 8
        | % 8
        c16 [ des16 r16 es16 ~ ] es2. | % 9
        | % 9
        ges,4. bes8 des4 c8 [ bes8 ] | \barNumberCheck #10
        | \barNumberCheck #10
        c16 [ bes16 r16 a16 ~ ] a2. }
    \repeat volta 2 {
        | % 11
        | % 11
        r8 f'8 f8 [ f8 ] f8. [ des16 ~ ] des8 [ es8 ] | % 12
        f1 | % 13
        r8 f8 ges8 [ f8 ] es4 des8 [ es8 ] | % 14
        | % 14
        des8. [ c16 ] c2. }
    \repeat volta 2 {
        | % 15
        | % 15
        r8 bes8 ( bes8 [ bes8 ] bes4 c8 [ des8 ] | % 16
        | % 16
        c16 [ bes16 r16 as16 ~ ] as2. -\bendAfter #-4 | % 17
        | % 17
        ges8 ) [ ges8 ( ges8 ) ges8 ] ges4 as8 [ bes8 ] | % 18
        | % 18
        a16 [ ges16 r16 f16 ~ ] f2. }
    \repeat volta 2 {
        | % 19
        | % 19
        <f, a c f>8 -"clarinet trumpet trombone bass" [ r16 <a c f a>16
        -"Solos" ~ ] ~ ~ ~ <a c f a>16 [ r16 <c es a c>8 ] <ges bes des
            ges>8 [ r16 <bes des ges bes>16 ~ ] ~ ~ ~ <bes des ges bes>16
        [ r16 <des f bes des>8 ] | \barNumberCheck #20
        <f, a c f>8 [ r16 <a c f a>16 ~ ] ~ ~ ~ <a c f a>16 [ r16 <c es
            a c>8 ] <es, ges bes es>8 [ r16 <ges bes es ges>16 ~ ] ~ ~ ~
        <ges bes es ges>16 [ r16 <bes des ges bes>8 ] }
    }

PartPOneVoiceOneChords =  \chordmode {
    | % 1
    | % 2
    | % 3
    | % 3
    s1*2 bes8.:m5 | % 4
    | % 4
    s16*13 f16:7 | % 5
    | % 5
    s16*15 es8.:m5 | % 6
    | % 6
    s16*13 f16:7 | % 7
    | % 7
    s16*15 es4.:m5 | % 8
    | % 8
    s8*5 f16:7 | % 9
    | % 9
    s16*15 es4.:m5 | \barNumberCheck #10
    | \barNumberCheck #10
    s8*5 f16:7 | % 11
    | % 11
    s16*15 bes8:m5 | % 12
    | % 13
    | % 14
    | % 14
    s8*23 f8.:7 | % 15
    | % 15
    s16*13 bes8:m5 | % 16
    | % 16
    s8*7 as16:5 | % 17
    | % 17
    s16*15 ges8:5 | % 18
    | % 18
    s8*7 f16:7 | % 19
    | % 19
    | \barNumberCheck #20
    }


% The score definition
\new Staff <<
    \context ChordNames = "PartPOneVoiceOneChords" \PartPOneVoiceOneChords
    \context Staff <<
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

