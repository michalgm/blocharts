
\version "2.12.2"
% automatically converted from djelemdjelem.xml

\header {
    encodingsoftware = "Finale 2008 for Windows"
    tagline = "Finale 2008 for Windows"
    encodingdate = "2010-03-18"
	title = "Djelem Djelem"
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

	%{ THIS IS THE SOLO BACKINGS!!

melody = {
	\relative c' { 
		\repeat volta 48 {
			r8^\markup { \italic "in Bb" } <f a d>16 <f a d> <f a d>8 <f a d>8 r8 <f a d>16 <f a d> <f a d>8 <f a d>8 |
		}
	}
}

bari = {
	\relative c' {
		\repeat volta 48 {
			d8^\markup { \italic "in Eb" } [ r16 d] r8 d r a b cis |
		}
	}
}
		
bass = {
	\relative c {
		\repeat volta 48 {
			d,8[ r16 f] a8 f a[ r16 f] a8 e |
		}
	}
}
%}

PartPOneVoiceOne =  \relative d' {
    \repeat volta 2 {
        \clef "treble" \key c \major \time 3/4 | % 1
        d4 -"conducted freely harmony 2nd X" e4 f4 | % 2
        g2. \breathe | % 3
        f4 e4 d8 [ e8 \breathe ] | % 4
        d2. | % 5
        cis2. \breathe | % 6
        e4 f4 g4 | % 7
        a2. \breathe | % 8
        g4 f4 e8 [ f8 \breathe ] }
    \alternative { {
            | % 9
            e2. | \barNumberCheck #10
            d2. }
        {
            | % 11
            \time 4/4  | % 11
            R1 }
        } | % 12
    R1 \bar "||"
    \repeat volta 2 {
        | % 13
        | % 13
        r8 -"Time" d4 e8 f4 g4 | % 14
        r8 f4 e8 d4 e4 | % 15
        | % 15
        d4. cis8 cis2 | % 16
        \clef "bass" | % 16
        e,8 ^"bass only" [ d8 ] r8 e8 d4 cis4 | % 17
        \clef "treble" | % 17
        r8 e'4 f8 g4 a4 | % 18
        r8 g4 f8 e4 f4 | % 19
        | % 19
        e4. d8 d2 }
    \alternative { {
            | \barNumberCheck #20
            \clef "bass" | \barNumberCheck #20
            a,8 ^"bass only" [ g8 ] r8 a8 g4 f4 }
        {
            | % 21
            \clef "treble" r8 a'8 bes8 [ cis8 ] d8 [ e8 ] f8 [ g8 ] }
        } \repeat volta 2 {
        | % 22
        | % 22
        a1 ~ | % 23
        a2 g4 a4 | % 24
        | % 24
        bes1 | % 25
        r2 g4 g4 | % 26
        | % 26
        g16 [ f16 e16 f16 ] e2. | % 27
        r8 bes8 cis8 [ d8 ] e8 [ f8 g8 a8 ] | % 28
        | % 28
        bes1 ~ | % 29
        bes2 a4 gis4 | \barNumberCheck #30
        | \barNumberCheck #30
        a4 r4 f4 e4 | % 31
        | % 31
        \times 2/3  {
            f8 [ e8 d8 ] }
        d2. }
    \alternative { {
            | % 32
            r8 a8 bes8 [ cis8 ] d8 [ e8 ] f8 [ g8 ] }
        {
            | % 33
            R1 }
        } }

PartPOneVoiceOneChords =  \chordmode {
    | % 1
    | % 2
    | % 3
    | % 4
    | % 5
    | % 6
    | % 7
    | % 8
    | % 9
    | \barNumberCheck #10
    | % 11
    | % 11
    | % 12
    | % 13
    | % 13
    s2*19 d8:m5 | % 14
    | % 15
    | % 15
    s8*15 a4.:7 | % 16
    | % 16
    | % 17
    | % 17
    s8*13 a8:7 | % 18
    | % 19
    | % 19
    s8*15 d4.:m5 | \barNumberCheck #20
    | \barNumberCheck #20
    | % 21
    | % 22
    | % 22
    s8*21 d1:m5 | % 23
    | % 24
    | % 24
    s1 g1:m5 | % 25
    | % 26
    | % 26
    s1 a16:7 | % 27
    | % 28
    | % 28
    s16*31 g1:m5 | % 29
    | \barNumberCheck #30
    | \barNumberCheck #30
    s1 a4:7 | % 31
    | % 31
    s2. d8*2/3:m5 | % 32
    | % 33
    }

PartPTwoVoiceOne =  \relative d {
    \repeat volta 2 {
        \clef "bass" \key c \major \time 3/4 R2.*8 }
    \alternative { {
            | % 9
            R2.*2 }
        {
            | % 11
            \time 4/4  d4 r4 a4 cis4 }
        } | % 12
    d4 r4 a4 cis4 \bar "||"
    \repeat volta 2 {
        | % 13
        d4 r4 a4 cis4 | % 14
        d4 r4 a4 cis4 | % 15
        a4 r4 e4 e4 | % 16
        | % 16
        R1 | % 17
        a4 ^"bass only" r4 e4 e4 | % 18
        a4 r4 e4 e4 | % 19
        d'4 r4 a4 cis4 }
    \alternative { {
            | \barNumberCheck #20
            | \barNumberCheck #20
            R1 }
        {
            | % 21
            R1 }
        } \repeat volta 2 {
        | % 22
        d4 ^"bass only" r4 a4 a4 | % 23
        d4 r4 a4 a4 | % 24
        g4 r4 d'4 d4 | % 25
        g,4 r4 d'4 d4 | % 26
        a4 r4 e4 e4 | % 27
        | % 27
        a4 r4 r2 | % 28
        g4 r4 d'4 d4 | % 29
        g,4 r4 d'4 d4 | \barNumberCheck #30
        a4 r4 f'4 e4 | % 31
        d4 r4 a4 a4 }
    \alternative { {
            | % 32
            d4 r4 r2 }
        {
            | % 33
            r4 }
        } }

PartPTwoVoiceOneChords =  \chordmode {
    | % 9
    | % 11
    s4*31 d4:m5 | % 12
    s2. d4:m5 | % 13
    s2. d4:m5 | % 14
    s2. d4:m5 | % 15
    s2. a4:7 | % 16
    | % 16
    | % 17
    s4*7 a4:7 | % 18
    s2. a4:7 | % 19
    s2. d4:m5 | \barNumberCheck #20
    | \barNumberCheck #20
    | % 21
    | % 22
    s4*11 d4:m5 | % 23
    s2. d4:m5 | % 24
    s2. g4:m5 | % 25
    s2. g4:m5 | % 26
    s2. a4:7 | % 27
    | % 27
    s2 a4:7 | % 28
    s1 g4:m5 | % 29
    s2. g4:m5 | \barNumberCheck #30
    s2. a4:7 | % 31
    s2. d4:m5 | % 32
    | % 33
    }


% The score definition
\score {
    <<
        \new Staff <<
            \context ChordNames = "PartPOneVoiceOneChords" \PartPOneVoiceOneChords
            \context Staff <<
                \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                >>
            >>
        \new Staff <<
            \context ChordNames = "PartPTwoVoiceOneChords" \PartPTwoVoiceOneChords
            \context Staff <<
                \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

