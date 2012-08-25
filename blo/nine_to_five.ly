\version "2.12.1"

\header {
	title = "Nine to Five"
	composer = "Dolly Parton"
	copyright = "$Date:: 2011-04-20 #$" %date of latest edits
	}


% music pieces
%part: melody
melody = {
	\relative c'' { \key g \major 
  	\mark \default
	r1 | r1 | r1 | r1 |
	\break \mark \default
	g8 g g g b4 b | d8 d d d e4 g | c,4 c e e| g8 e g4 a8 g e4 |
	\break
	g4 e g e | e d e d8 d8~ | d4 r r2 | r1 | 
	\break
	g,8 g8 g8 g8 b b b b | d4 d e g | c,4 c4 e4 e4 | g8 e g4 a8 g e4 |
	\break
	b'4 a g e | d4 d b' a | g2 r2 | r2 e4 g |
	\break
	\mark \default
	bes4. a8~ a4 g4~ | g2 e4 g | g e8 g~ g e a4~ | a b e, g | 
	\break
	r4 b4~ b8 a4. | g4 (e) e8 g4. | g4 e8 g8~ g g4. | a4 b e, g |
	\break
	r4 bes4~ bes8 a4. |  g4 (e) e8 g4. | g4 e8 g~ g4 g | a b e, g |
	\break
	a2  a4 a~ | a a (e) r4 | e' b8 d8 ~d4 b | d b r2|
	}
}

%part: harmony
harmony = {
}

%part: tenor
tenor = {
 	\relative c' { \key g \major 
	\mark \default
	r1 | r1 | r1 | r1 |
	\break \mark \default
	g'2 b | d e8 r8 d8 c8 | c,2 e2 | g2 a8 r8 g8 fis8 |
	b2 a2 g2 g4 d8 d~| d4 r r2| r1 |
	g2 b | d e8 r8 d8 c8 | c,2 e2 | g2 a8 r8 g8 fis8 |
	b2 a2 | g4 d b' a| g2 r2| r1 |
	\break
	\mark \default
	<e' g>4. <e g>8~ <e g>4 <e g>4~ | e4 <e g>8  <e g> 8 r4 r4| r4 <e g> r <e g> | r <e g> r <e g> |
	r4 <d b>4~ <d b>8 <d b>4. | <d b>4 <d b>8 <d b> r4 r4 | r4 <d b> r <d b> | r <d b> r <d b> |
	r4 <e g>4~ <e g>8 <e g>4. |  <e g>4  <e g>8  <e g> 8 r4 r4| r4 <e g> r <e g> | r <e g> r <e g> |
	cis2 d2| g,2 a2 | d2 e2 | f2 fis2|

      }
}

%part: bass
bass = {
	\relative c { \key g \major 
  	\break \mark \default
	g4 g g g | g g g g | g g g g | g8. e16 e4 f fis |
	g4 g g g | g g g g (| c,) c c c | c c c c (|
	g') g g g | g g g g (| d) d d d | d d d d (|
	g4) g g g | g g g g (| c,) c c c | c c c c (|
	g') g g g (| d) d d d | g g g g | g2 (g,4) r4 |
	\break \mark \default
	c c' g c | c, c' g c | c, c' g c | c, c' g c | 
	g g' d g | g, g' d g | g, g' d g | g, d' g, g |
	c, c' g c | c, c' g c  |c, c' g c | c, c b bes |
	a a b b | c c cis cis | d d e e | f f fis d' |

  }
}

changes = \chordmode {
	r1 | r1 | r1 | r1
	\mark \default
	g1 | g1 | c1 | c1|
	g1 | g1 | d1 | d1 |
	g1 | g1 | c1 | c1 |
	g1 | d1 | g1 | g1 |
	\mark \default
	c1 | c1 | c1 | c1 |
	g1 | g1 | g1 | g1 |
	c1 | c1 | c1 | c1 |
	a1:7 | a1:7 | d1:7 | d1:7 |
}


%layout
#(set-default-paper-size "a5" 'landscape)
\book { 
 \paper { #(set-paper-size "a4") }
  \header { poet = "Score" }
    \score {
	<< \tempo 4 = 184
	  	\new ChordNames { \set chordChanges = ##t \changes }

    \new Staff {
      \melody
    }
    \new Staff { 
     \tenor
    }
    \new Staff { \transpose c c''
   \bass 
    }
	>>
    }
}




\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 180
        \unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trumpet"
	  \melody
	}
    \unfoldRepeats  \new Staff { \set Staff.midiInstrument = #"clarinet"
       \tenor
    }
    \unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"tuba"
      	\bass
	}
	    \unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"tuba"
	      %\changes
	}
      >> 
    \midi { }
  } 
}
