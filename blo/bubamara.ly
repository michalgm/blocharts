\version "2.12.1" 

\header {
	title = "Bubamara"
	composer = "Trad"
	}
	
% music pieces
%part: melody
melody = {
\relative c'' { \key d \minor
    \mark \default
    \repeat volta 2 {
    a4. bes8 a4 gis | bes8 bes4 f8 d2 | r8 d'4 d8 d c bes a | bes2 g |
    r8 bes4 g8 e4 bes' | a8 a4 f8 d4 r | r8 e4 e8 f e dis e | }
    \alternative {
	{ a4 bes a2 | }
	{ r8 a4 bes8 a g f e | \bar "||" }
    }

    \mark \default
    \repeat volta 2 {
    d8 e f g a gis a4 | r8 d4 bes8 g4 r | r8 a4 f8 d4 r | 
    g8 f e d cis d e f | d2. r4 |
    } 
}
}

%part: harmony
harmony = {	% NOT DONE %
\relative c'' { \key d \minor
    \mark \default
    \repeat volta 2 {
    f4. g8 f4 e | bes8 bes4 f8 d2 | r8 f'4 f8 f e d cis | d2 bes |
    r8 d4 bes8 g4 d' | d8 d4 cis8 d4 r | r8 e4 e8 f e dis e | }
    \alternative {
	{ a4 bes a2 | }
	{ r8 a4 bes8 a g f e | \bar "||" }
    }

    \mark \default
    \repeat volta 2 {
    d8 e f g a gis a4 | r8 d4 bes8 g4 r | r8 a4 f8 d4 r | 
    g8 f e d cis d e f | d2. r4 |
    } 
}
}

%part: bass
bass = {
	\relative c { \key d \minor
	\mark \default
	\repeat volta 2 {
	d4 a d a | d a d a | d e f fis | g d g d | 
	g d g d | d a d dis | e b e bes | }
	\alternative {
	    { a e' a, cis | }
	    { a e' a, cis | \bar "||" }
	}

	\mark \default
	\repeat volta 2 {
	d a d a | g' d g d | d a d dis | e e b b | d a d a | }
}
}

%layout
#(set-default-paper-size "a5" 'landscape)

\book { 
 \paper { #(set-paper-size "a4") }
  \header { poet = "Score" }
    \score {
	<<
	\new Staff {
		\melody
	}
	\new Staff { \clef bass
		\bass
	}
	>>
    }
}


