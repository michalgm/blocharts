\version "2.12.1" 

\header {
	title = "Gimme Some Lovin"
	composer = "Steve Winwood"
	}

% music pieces
%part: melody
melody = {
\relative c'' { 
  \mark \default \break %A
  \repeat volta 2 {
    bes1~ | bes2 \times 2/3 { a4 bes4 a4 } | g1~ | g2 r2 |
  }
  \mark \default \break %B
  r1 \mark \markup { \small "drums (&bass?)" } | r1 | r1 | r1 |

  \mark \default \break %C
  r4 d'4 c4 a8 c8~ | c8 g8 r4 r2 | 
  r4 d'4 c4 a8 c8~ | c8 g8 r4 a8 c a4 |

  \mark \default \break %D
  r2 d8 c c a | c4 a r2 | 
  r2 d8 c c a | c4 a r2 | 
  r2 d8 c c a | c4 a a8 c c4 | 
  c4 r2. | 
}
}

%part: tenor
tenor = {
  \relative c' {  
  \mark \default \break %A
  \repeat volta 2 {
    <d g >1~ | <d g>2 \times 2/3 { <c f >4 <d g >4 <c f >4 } | <bes e >1~ | <bes e>2 r2 |
  }
  \mark \default \break %B
  r1 \mark \markup { \small "drums (&bass?)" } | r1 | r1 | r1 |
  
  \mark \default \break %C
  <c g e >2.~ <c g e>8 <es bes g>8~ |  <es bes g >1 |
  <a f c >2.~ <a f c>8 <as es c>8~ | <as es c >1 |  

  \mark \default \break %D
  r1 | r4 r <f c >8 <f c >8 <f c >4 | <e c >4 <e c >8 r8 r2 | 
  r4 r <f c >8 <f c >8 <f c >4 | <e c >4 <e c >8 r8 r2 | 
  r2 a,8 c c4 |
  c4 r2.
  }
}

%part: bass
bass = { 
	\relative c { 

 \mark \default \break %A
 \repeat volta 2 {
      c'8 c c c c8 r c, r | c'8 c c c c8 r c, r | c'8 c c c c8 r c, r | c'8 c c c c8 r c, r |

   }

     \mark \default \break %B
  c'8 c c c c8 r c, r | c'8 c c c c8 r c, r | c'8 c c c c8 r c, r | c'8 c c c c8 r c, r |

 \mark \default \break %C
  c8 c c c c c c es | es es es es es es es es | f f f f f f f as | as as as as as as as as | 

  \mark \default \break  %D
  c c c c c8 r c, r | c'8 c c c c8 r c, r | c'8 c c c c8 r c, r | c'8 c c c c8 r c, r |
  c'8 c c c c8 r c, r | c'8 c c c c8 r c, r |
  r1
}
}

%layout
#(set-default-paper-size "a5" 'landscape)
\book {
	\score { <<
		\tempo  4 = 144 
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
			\melody
		}
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trombone" \clef treble
			\tenor
		}
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"tuba" \clef bass
			\bass
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
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



