\version "2.12.1" 
\header {
	title = "De Colores"
	composer = "Traditional"
	copyright = "3/5/10"
	}
	
% music pieces
%part: melody
melody = { 
	\relative c'' { \key f \major \time 3/4
	c2.~ 	 | c2 bes4  | bes a2   | r4 a4 bes | 
	c c4. c8 | c4 bes a | c c4. c8 | c4 bes a  | c bes2 | r2. | 
	bes2.~	 | bes2 a4  | a g2     | r4 g4 a   |
	bes bes4. bes8 | bes4 a g | bes bes4. bes8 | bes4 a g | bes a2 | r2. |
	c2.~ 	 | c2 bes4  | bes a2   | r4 a4 bes | 
	c c4. c8 | c4 bes a | c c4. c8 | c4 d ees | d2. | r4 bes c |
	d d4. d8 | d4 e d | d c4. c8 | c4 d c | c bes4. c8 | 
	d4 c bes | a2. | r4 bes c |	
	d d4. d8 | d4 e d | d c4. c8 | c4 d c | c bes4. c8 | 
	d4 c bes | a2. | r2. |	
	}
}


%part: pahs
pahs = { 
	\relative c' { \key f \major \time 3/4
	r4 <a c> <a c> | r <a c> <a c> | r <a c> <a c> | r <a c> <a c> | 
	r <a c> <a c> | r <a c> <a c> | r <a c> <a c> | r <a c> <a c> | 
	r <g bes> <g bes> | r <g bes> <g bes> | 
	r <g bes> <g bes> | r <g bes> <g bes> | r <g bes> <g bes> | r <g bes> <g bes> | 
	r <g bes> <g bes> | r <g bes> <g bes> | r <g bes> <g bes> | r <g bes> <g bes> | 
	r <a c> <a c> | r <a c> <a c> | 
	r <a c> <a c> | r <a c> <a c> | r <a c> <a c> | r <a c> <a c> | 
	r <a c> <a c> | r <a c> <a c> | r <a c> <a c> | r <a c> <a c> | 
	r <bes d> <bes d> | r <bes d> <bes d> | 
	r <bes d> <bes d> | r <bes d> <bes d> | r <a c> <a c> | r <a c> <a c> | 
	r <g bes> <g bes> | r <g bes> <g bes> | r <a c> <a c> | r <a c> <a c> | 
	r <bes d> <bes d> | r <bes d> <bes d> | r <a c> <a c> | r <a c> <a c> | 
	r <g bes> <g bes> | r <g bes> <g bes> | r <a c> <a c> | r <a c> <a c> | 
	}
}

%part: bass
bass = {
	\relative c { \key f \major \time 3/4
	f,2. | c | f | c | f | c | f | f4 e d | c2. | g' |
	c,2. | g' | c, | g' | c, | g' | c, | c4 d e | f2. | c |
	f2. | c | f | c | f | c | f | f4 g a | bes2. | f4 g a |
	bes2. | bes4 a g | f2. | f4 e d | c2. | c4 d e | f2. | f4 g a |	
	bes2. | bes4 a g | f2. | f4 e d | c2. | c4 d e | f2. | c4 d e |	
	}
}

%part: words
words = \markup { 
	\column { 
	  \line { \bold "Verse 1" }
	  \line { \fontsize #2 { De Colores De Colores se visten los campos en la primavera }}
	  \line { \fontsize #2 { De Colores De Colores son los pajarillos que vienen de_afuera }}
	  \line { \fontsize #2 { De Colores De Colores es el arco iris que vemos lucir }}
	  \line { \fontsize #2 { Y por eso los grandes amores De muchos colores Me Gustan a mi }}
	  \line { \fontsize #2 { Y por eso los grandes amores De muchos colores Me Gustan a mi }}

	\hspace #10
	  \line { \bold "Verse 2" }
	  \line { \fontsize #2 { Canta el gallo Canta el gallo con el quiri quiri quiri quiri quiri }}
	  \line { \fontsize #2 { La gallina La gallina con el cara cara cara cara cara }}
	  \line { \fontsize #2 { Los polluelos Los polluelos con el pio pio pio pio pi }}
	  \line { \fontsize #2 { Y por eso los grandes amores De muchos colores Me Gustan a mi }}
	  \line { \fontsize #2 { Y por eso los grandes amores De muchos colores Me Gustan a mi }}
	}
}

%part: changes
changes = \chordmode { 
        f2. | f | f | f | f | f | f | f | c | c |
        c | c | c | c | c | c | c | c | f | f |
        f | f | f | f | f | f | f | f | bes | bes
        bes | bes | f | f | c | c | f | f | f
}

%layout
#(set-default-paper-size "a5" 'landscape)

%{
\book { 
  \header { poet = "Bass - C" }
    \score {
	<<
	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \clef bass
		\bass
	}
	>>
    }
    \words
}
%}

\book { \header { poet = "Score" }
  \paper { #(set-paper-size "a4") }
    \score { 
      << 
	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { 
		\melody
	}
	\new Staff { 
		\pahs
	}
	\new Staff { \clef bass
		\bass
	}
      >> 
  } 
    \words
}
%}
