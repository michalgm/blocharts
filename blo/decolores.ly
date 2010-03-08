\version "2.12.2" 
\header {
	title = "De Colores"
	subtitle =""
	composer = "Traditional"
	}
	

%pieces
%Part: melody
melody = \relative c'' { \key f \major \time 3/4 
	c2.~ 	 | c2 bes4  | bes a2   | r4 a4 bes | c c4. c8 | 		\break 
	c4 bes a | c c4. c8 | c4 bes a | c bes2    | r2.      |			\break 
	bes2.~	 | bes2 a4  | a g2     | r4 g4 a   | bes bes4. bes8 | 	\break 
	bes4 a g | bes bes4. bes8 | bes4 a g | bes a2 | r2.   |			\break 
	c2.~ 	 | c2 bes4  | bes a2   | r4 a4 bes | c c4. c8 |			\break 
	c4 bes a | c c4. c8 | c4 d ees | d2. | r4 bes c |				\break 
	\repeat volta 2 {	
	d d4. d8 | d4 e d | d c4. c8 | c4 d c | c bes4. c8 | 					\break 
	d4 c bes | a2. |}	\alternative {	{r4 bes c |}
										{ r2. |}	} 	
	}

verseone = \new Lyrics \lyricsto "melody" {
	De Co -- lo -- res De Co -- lo -- res se vis -- ten los cam -- pos en la pri -- ma -- ver -- a 
	De Co -- lo -- res De Co -- lo -- res son los pa -- ja -- ri -- llos que vien -- en de_a -- fuer -- a 
	De Co -- lo -- res De Co -- lo -- res es el ar -- co ir -- is que ve -- mos lu -- cir 
	Y por e -- so los gran -- des a -- mo -- res De mu -- chos co -- lo -- res Me Gus -- tan a mi 
	Y por }
		

versetwo = \new Lyrics \lyricsto "melody" {
	Cant -- a_el ga -- llo Cant -- a_el ga -- llo con el qui -- ri qui -- ri qui -- ri qui -- ri qui -- ri 
	La ga -- lli -- na La ga -- lli -- na con el ca -- ra ca -- ra ca -- ra ca -- ra ca -- ra Los poll -- ue -- los Los poll -- ue -- los con el pi -- o pi -- o pi -- o pi -- o pi
		} 

%Part: changes
changes = \new ChordNames { %{\set chordChanges = ##t%} \chordmode {  
	f2. | f | f | f | f | f | f | f | c | c | 
	c | c | c | c | c | c | c | c | f | f | 
	f | f | f | f | f | f | f | f | bes | bes
	bes | bes | f | f | c | c | f | f | f
	}}


%Part: pahs
pahs = \relative c' { \key f \major \time 3/4
	r4 <a c> <a c> | r <a c> <a c> | r <a c> <a c> | r <a c> <a c> | 
	r <a c> <a c> | r <a c> <a c> | r <a c> <a c> | r <a c> <a c> | r <g bes> <g bes> | r <g bes> <g bes> | 
	r <g bes> <g bes> | r <g bes> <g bes> | r <g bes> <g bes> | r <g bes> <g bes> | 
	r <g bes> <g bes> | r <g bes> <g bes> | r <g bes> <g bes> | r <g bes> <g bes> | r <a c> <a c> | r <a c> <a c> | 
	r <a c> <a c> | r <a c> <a c> | r <a c> <a c> | r <a c> <a c> | 
	r <a c> <a c> | r <a c> <a c> | r <a c> <a c> | r <a c> <a c> | r <bes d> <bes d> | r <bes d> <bes d> | 
	r <bes d> <bes d> | r <bes d> <bes d> | r <a c> <a c> | r <a c> <a c> | 
	r <g bes> <g bes> | r <g bes> <g bes> | r <a c> <a c> | r <a c> <a c> | r <a c> <a c>
	}

%Part: bass
bass = \relative c { \key f \major \time 3/4
	f,2. | c | f | c | f | c | f | f4 e d | c2. | g' |
	c,2. | g' | c, | g' | c, | g' | c, | c4 d e | f2. | c |
	f2. | c | f | c | f | c | f | f4 g a | bes2. | f4 g a |
	bes2. | bes4 a g | f2. | f4 e d | c2. | c4 d e | f2. | f4 g a |	c, d e |	
	}

%layout
\score {
  << 
	\tempo 4=180
	\changes
	  \verseone
	  \versetwo
	\new Staff \with {midiInstrument = #"trumpet"} {  
	  \melody
	}	
	\new Staff \with {midiInstrument = #"trombone"} {  
	  \clef bass
	  \pahs
	}	
	\new Staff \with {midiInstrument = #"tuba"} {  
	  \clef bass
	  \bass
	}	
%\pahs
%\bass
  >>
  %\midi { }
}
\header { piece = "Eb" }
