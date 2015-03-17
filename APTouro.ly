\version "2.12.3"

\header {
	title = "AP Touro"
	composer = "Troy \"Trombone Shorty\" Andrews"
	tagline = "" %date of latest edits
	copyright = \markup {\bold ""} %form
	}
%description: Written by <a href="www.tromboneshorty.com">Troy "Trombone Shorty" Andrews</a>, this track appears on <a href="http://www.rebirthbrassband.com">Rebirth Brass Band</a>'s 2011 release <a href="http://www.amazon.com/Rebirth-New-Orleans-Brass-Band/dp/B004PBBQAI">Rebirth of New Oreans</a>. Presumably named for <a href="http://en.wikipedia.org/wiki/A_P_Tureaud">A. P. Tureaud</a>, the famed NAACP attorney who filed the lawsuit that successfully ended the system of Jim Crow segregation in New Orleans.

%part: melody
melody={
	\relative c' { \time 4/4 \key c \minor 
	\set Score.markFormatter = #format-mark-box-letters
	\repeat volta 2 { r1  }
    \alternative {{  r1 } { r2 r8  g' bes16 c r es  | }}
    \break \mark \default
	\repeat volta 4 {
		r c8.~ c2 r16 g f es~  |  
	}
    \alternative {
      { es f  r8 r4.  g8 bes16 c r es  | }
      { es, f  r8 r4 r2  | }
    }

    \break	
	\mark \default 
	\repeat volta 2 {
		c'8 r r16 g8 bes16~ bes2 |  aes4 r16 bes aes g~ g4 g16 f es d |
		c8 r r16 g'8 f16~ f2  | c'4~ c8. b16~ b4 r |
	}

  } 
}

%part: riff
riff={
    \relative c' { \time 4/4 \key c \minor 
    \set Score.markFormatter = #format-mark-box-letters
    \repeat volta 2 {
        r16 <g' es'> r <bes g'>   r <g es'> <f d'> <es c'>      <f d'> <f d'> <es c'>8 r <es c'> | 
    }
    \alternative {
      { r16 <g es'> r <bes g'>   r <g es'> <f d'> <es c'>       <f d'> <f d'> <es c'>8 r <c g'> | }
      { r16 <g' es'> r <bes g'>   r <g es'> <f d'> <es c'>       <f d'> <f d'> <es c'>8 r <c g'> | }
    }      
    \break  
    \mark \default
    \repeat volta 4 {
        r16 <g' es'> r <bes g'>   r <g es'> <f d'> <es c'>      <f d'> <f d'> <es c'>8 r <es c'> |
    }
    \alternative {
      { 
        r16 <g es'> r <bes g'>   r <g es'> <f d'> <es c'>       <f d'> <f d'> <es c'>8 r <c g'> |
      } 
      {
        r16 <g' es'> r <bes g'>   r <g es'> <f d'> <es c'>       <f d'> <f d'> <es c'>8 r <c g'> |
      }
    }
    \break  
    \mark \default
    \repeat volta 2 {
        r16 <g' es'> r <bes g'>   r <g es'> <f d'> <es c'>      <f d'> <f d'> <es c'>8 r <es c'> |

        r16 <g es'> r <bes g'>   r <g es'> <f d'> <es c'>       <f d'> <f d'> <es c'>8 r <c g'> |
        r16 <g' es'> r <bes g'>   r <g es'> <f d'> <es c'>      <f d'> <f d'> <es c'>8 r <es c'> |

        r16 <g es'> r <bes g'>   r <g es'> <f d'> <es c'>       <f d'> <f d'> <es c'>8 r <c g'> |
    }
  } 
}

%part: bass
bass={
    \relative c' { \time 4/4 \key c \minor \clef bass
    \set Score.markFormatter = #format-mark-box-letters 
    \repeat volta 2 {
        c,8. c16 r4  c,8. c16 r4 |
    }
    \alternative {{ c'8. c16 r4  c,8 c c r  | } { c'8. c16 r4  c,8 c c r  | }}
    \break  
    \repeat volta 4 {
        c'8. c16 r4  c,8. c16 r4 |
    }
    \alternative {
      {c'8. c16 r4  c,8 c c r  | } {c'8. c16 r4  c,8 c c r  |} 
    }
    \break  
    \mark \default 
    \repeat volta 2 {
        c'8. c16 r4  bes8. bes16 r4 |
        aes8. aes16 r4 g8. g16 r4  | 
        f8. f16 r4  ees8. ees16 r4 |
        aes8. aes16 r4  g8. g16 r4 |
    }

  } 
}
%part: changes
changes = \chordmode { 

}

%layout
#(set-default-paper-size "a5" 'landscape)
\book { 
 \paper { #(set-paper-size "a4") }
  \header { poet = "Score" }
    \score {
    << \tempo 4 = 90
    \new Staff {
      \melody
    }
    \new Staff { 
       \riff
    }
    \new Staff {
      \bass
    }
    >>
    }
}




\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 70 
        \unfoldRepeats  \new Staff { \set Staff.midiInstrument = #"trumpet"
        \melody
    }
    \unfoldRepeats  \new Staff { \set Staff.midiInstrument = #"alto sax"
       \riff
    }
    \unfoldRepeats  \new Staff { \set Staff.midiInstrument = #"tuba"
        \bass
    }
      >> 
    \midi { }
  } 
}
