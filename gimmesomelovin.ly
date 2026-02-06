\version "2.12.1" 

\header {
	title = "Gimme Some Lovin"
	composer = "Steve Winwood"
	}

% music pieces
%part: melody
melody = {
\relative c'' {  
	\mark \default
  r1 | r1 | r1 | r1 |
  \mark \default \break
  \repeat volta 2 {
    bes1~ | bes2 \times 2/3 { a4 bes4 a4 } | g1~ | g2 r2 |
  }
  \mark \default \break

  % 11
  r1 | r2 r4. a8 |
  % 17
  d r8 d4 d8 c c a |
  % 18
  c a c a d r4. |
  % 19
  d4 c8 c4 a8 c a |
  % 20
  c a c a r4. g8 |
  % 21
  d' r8 d4 d8 c c a |
  % 22
  c a c a d s4. |
  % 23
  d4 c8 c4 a8 c a |
  % 24
  d4 c8 c4 a8 c r | 
  \mark \default \break
  r4 d4 d4 c8 c8~ | c8 d8 r4 r2 | 
  r4 d4 d4 c8 c8~ | c8 d8 r4 a8 c c8 r|
  \mark \default \break
  r4. d8 r d c a | r8 d8 r2. | 
  r4. d8 r8 d c a | a8 d r2. | 
  r4. d8 r8 d c a | r8 d r4 a8 c c c |
}
}

%part: tenor
tenor = {
  \relative c' {  
	\mark \default
  r1 | r1 | r1 | r1 |
  \mark \default \break
  \repeat volta 2 {
    <d g >1~ | <d g>2 \times 2/3 { <c f >4 <d g >4 <c f >4 } | <bes e >1~ | <bes e>2 r2 |
  }
  \mark \default \break
  % 15
  e4 r8 <a f>8 r2 | e4 r8 <a f >8 r2 | e4 r8 <a f>8 r2 | e4 r8 <a f>8 r2 | 
  % 19
  e4 r8 <a f>8 r2 | e4 r8 <a f>8 r2 | e4 r8 <a f>8 r2 | e4 r8 <a f>8 r2 | 
  %23
  e4 r8 <a f>8 r2 | e4 r8 <a f>8 r2 |
  
  \mark \default \break
  <c, g e >2.~ <c g e>8 <es bes g>8~ |  <es bes g >1 |
  <a f c >2.~ <a f c>8 <as es c>8~ | <as es c >1 |  
  \mark \default \break
  r1 |  r4 <f c >8 <f c >8 <f c >8 <f c >8 <f c >4 | 
  <e c >4 <e c >8 r8 r2 | r4 <f c >8 <f c >8 <f c >8 <f c >8 <f c >4 | 
  <e c >4 <e c >8 r8 r2 | r2 a,8 c c8 c8 |
  }
}

%part: bass
bass = { 
	\relative c {
    \mark \default
  c'8 c c c c8 r c, r | c'8 c c c c8 r c, r | c'8 c c c c8 r c, r | c'8 c c c c8 r c, r |
 \mark \default \break
 \repeat volta 2 {
      c'8 c c c c8 r c, r | c'8 c c c c8 r c, r | c'8 c c c c8 r c, r | c'8 c c c c8 r c, r |

   }
     \mark \default \break
  c'8 c c c c8 r c, r | c'8 c c c c8 r c, r | c'8 c c c c8 r c, r | c'8 c c c c8 r c, r |
  c'8 c c c c8 r c, r | c'8 c c c c8 r c, r | c'8 c c c c8 r c, r | c'8 c c c c8 r c, r |
  c'8 c c c c8 r c, r | c'8 c c c c8 r c, r |
 \mark \default \break
  c8 c c c c c c es | es es es es es es es es | f f f f f f f as | as as as as as as as as | 
  \mark \default \break 
  c c c c c8 r c, r | c'8 c c c c8 r c, r | c'8 c c c c8 r c, r | c'8 c c c c8 r c, r |
  c'8 c c c c8 r c, r | c'8 c c c c8 r c, r |
}
}

%layout
#(set-default-paper-size "a5" 'landscape)
\book { 
 \paper { #(set-paper-size "a4") }
  \header { poet = "Score" }
    \score {
	<< \tempo 4 = 144
    \new Staff { \transpose as fes \melody }
%    \new Staff { \melodytwo }
    \new Staff { \transpose as fes \tenor }
    \new Staff { \clef bass \transpose as fes'' \bass }
	>>
    }
}




\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 144 
        \unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trumpet"
          \melody
	}
    \unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"alto sax"
%      \melodytwo
	}
    \unfoldRepeats  \new Staff { \set Staff.midiInstrument = #"trombone"
      \tenor
    }
    \unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"tuba"
		\bass
	}
      >> 
    \midi { }
  } 
}



