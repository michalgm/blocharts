\version "2.12.2"

\header {
	title = "BLO Second Line"
	composer = "Josh Sperry"
	}


%pieces
%Part: melody
melody = {
	\relative c'' { \key c \minor
	\mark \default
	\repeat volta 2 {
	r4 g'2 ees4 | f ees8 f~ f4 ees | c r4 r2 | r1 |
	r4 g'2 ees4 | f ees8 f~ f4 bes | g r4 r2 | r1 |
	r4 g2 ees4 | f ees8 f~ f4 ees | c r4 r2 | r1 |
	r4 g'2 ees4 | f ees8 f~ f4 fis | g r4 r2 | r1 |}

	\mark Hits
	\repeat volta 2 {
	<ees, g c>4 r r2 | <ees ges ces>4 r4 r2 | <d f bes>1~ | <d f bes>1 | }
	\alternative {
		{ <ees g c>4 r r2 | <ees ges bes>4 r4 r2 | <d f aes>1~ | <d f aes>1 | }
		{ <ees g c>4 r r2 | <ees ges f'>4 r4 r2 | <d f aes aes'>1~ | <d f aes aes'>1 | }
	}

	\mark Bridge 
	\repeat volta 2 { r1 | r1 }

	\mark \default
	\repeat volta 2 {
	r4 b'8 c d b c d | ees4 d8 ees r2 | r4 b8 c d b c d | aes4 b8 g r2 |
	r4 b8 c d b c d | ees4 d8 ees r c d ees | f d ees f g ees f g | aes1~ }
	aes1_\markup { \center-align D.C. al Coda } | \bar "||" 

  }
}

%Part: tenor
tenor = { 
	\relative c' { \key c \minor
	\mark \default
	\repeat volta 2 {
	  \repeat unfold 8 {
		g'4. g8~ g g g ges | f4. f8~ f f f fis | }
	  }

	\mark Hits
	\repeat volta 2 { 
		g4. g8~ g g g ges | f4. f8~ f f f fis | g4. g8~ g g g ges | f4. f8~ f f f fis | }
	\alternative {
		{ g4. g8~ g g g ges | f4. f8~ f f f fis | g4. g8~ g g g ges | f4. f8~ f f f fis | }
		{ g4. g8~ g g g ges | f4. f8~ f f f fis | g4. g8~ g g g ges | f4. f8~ f f f fis | }
	  }

  
  }
}

%Part: bass
bass = { 
	\relative c { \key c \minor
	\mark \default
	\repeat volta 2 {
	  \repeat unfold 4 {
		c4. g c4 | bes4. f bes4 | c4. g c4 | des4. g, bes4 | }
	  }

	\mark Hits
	\repeat volta 2 {
		c4. g c4 | bes4. f bes4 | c4. g c4 | des4. g, bes4 | }
	\alternative {
	  	{ c4. g c4 | bes4. f bes4 | c4. g c4 | des4. g, bes4 | }
	  	{ c4. g c4 | bes4. f bes4 | c4. g c4 | des4. g, bes4 | }
	  }

	\mark Bridge
	\repeat volta 2 { bes4. f bes4 | b4. fis b4 | }

	\mark \default
	\repeat volta 2 {
	  \repeat unfold 4 {
		bes4. f bes4 | b4. fis b4 | }
	  }
	  b2_\markup { \center-align D.C. al Coda } b4 b | \bar "||" 

  }
}


%layout

#(set-default-paper-size "a5" 'landscape)

\book { 
	\score {
	  <<
		\tempo 4=200
		\new Staff \with {midiInstrument = #"trumpet"} {  
		\melody
		}
		\new Staff \with {midiInstrument = #"trombone"} {  
		\tenor
		}
		\new Staff \with {midiInstrument = #"tuba"} {  
		\bass
		}
	  >>
	  %\midi { }
	}
}
