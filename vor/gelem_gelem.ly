
\version "2.12.2"
% automatically converted from djelemdjelem.xml

\header {
    encodingsoftware = "Finale 2008 for Windows"
    tagline = "Finale 2008 for Windows"
    encodingdate = "2010-03-18"
	title = "Gelem Gelem"
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

%part: one
one =  \relative c' {
    \repeat volta 2 { 
	    \time 3/4 | d4 ^"conducted freely harmony 2nd X" e f | g2. \breathe | 
        f4 e d8 e \breathe  | d2. | cis \breathe | 
		e4 f g | a2. \breathe | g4 f e8 f \breathe |
	  }
    \alternative { 
	  { | e2. | d2. }
      { \time 4/4 | R1 ^"Time" | } 
	} 
	
	R1 | \bar "||"

    \repeat volta 2 { 
	  	r8 d4 e8 f4 g4 | r8 f4 e8 d4 e4 | d4. cis8 cis2 | \clef bass | e,8 ^"bass only" [ d8 ] r8 e8 d4 cis4 | 
        \clef treble | r8 e'4 f8 g4 a4 | r8 g4 f8 e4 f4 | | e4. d8 d2 
	  }
    \alternative { 
	  { \clef "bass" | a,8 ^"bass only" [ g8 ] r8 a8 g4 f4 } {
            | \clef "treble" r8 a'8 bes8 [ cis8 ] d8 [ e8 ] f8 [ g8 ] } } 
			
	\repeat volta 2 {
        | | a1 ~ | a2 g4 a4 | | bes1 | r2 g4 g4 | | 
        g16 [ f16 e16 f16 ] e2. | r8 bes8 cis8 [ d8 ] e8 [ f8 g8 a8 ] | 
        | bes1 ~ | bes2 a4 gis4 | | a4 r4 f4 e4 | 
        | \times 2/3  { f8 [ e8 d8 ] } d2. }
    \alternative { 
	  	{ | r8 a8 bes8 [ cis8 ] d8 [ e8 ] f8 [ g8 ] }
        { | R1 }
    } 
}

%part: changesone
changesone =  \chordmode {
    d1:m | a:7 | a:7 | d:m | 
    d:m | g:m | a:7 | g:m | 
    a:7 | d:m | 
    }

%part: two
two =  \relative d {
    \repeat volta 2 {
        \clef "bass" \key c \major \time 3/4 R2.*8 }
    \alternative { {
            | 
            R2.*2 }
        {
            | 
            \time 4/4  d4 r4 a4 cis4 }
        } | 
    d4 r4 a4 cis4 \bar "||"
    \repeat volta 2 {
        | 
        d4 r4 a4 cis4 | 
        d4 r4 a4 cis4 | 
        a4 r4 e4 e4 | 
        | 
        R1 | 
        a4 ^"bass only" r4 e4 e4 | 
        a4 r4 e4 e4 | 
        d'4 r4 a4 cis4 }
    \alternative { {
            | 
            | 
            R1 }
        {
            | 
            R1 }
        } \repeat volta 2 {
        | 
        d4 ^"bass only" r4 a4 a4 | 
        d4 r4 a4 a4 | 
        g4 r4 d'4 d4 | 
        g,4 r4 d'4 d4 | 
        a4 r4 e4 e4 | 
        | 
        a4 r4 r2 | 
        g4 r4 d'4 d4 | 
        g,4 r4 d'4 d4 | 
        a4 r4 f'4 e4 | 
        d4 r4 a4 a4 }
    \alternative { {
            | 
            d4 r4 r2 }
        {
            | 
            r4 }
        } }

%part: changestwo
changestwo =  \chordmode {
    d:m | d:m | d:m | d:m | 
    a:7 | a:7 | a:7 | d:m | 
    d:m | d:m | g:m | g:m | 
    a:7 | a:7 | g:m | g:m  
    a:7 | d:m | | 
    }


%sdkfasdfe score definition
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
  %   create MIDI output, uncomment the following line:
%    midi {}
    }

