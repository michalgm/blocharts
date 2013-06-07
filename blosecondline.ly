\version "2.12.1"

\header {
	title = "BLO Second Line"
	composer = "Josh Sperry"
	copyright = "3/10/10"
	}
%description:Composed by BLO member Josh Sperry. Combines influences of the New Orleans Second Line and Eastern European street bands, particularly Roma influences.  Others hear some mambo (Tito Rodriguez and Horace Silver) influences as well.

%place before mark to position it at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces

%part: melody
melody = {
	\relative c'' { \key c \minor
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
		{ <ees g c>4 r r2 | <ees ges f'>4 r4 r2 | <d f aes aes'>1~ | <d f aes aes'>1^\markup "To Coda"  | }
	}

	\repeat volta 2 { \textLengthOn r1^\markup { \center-align "Drums (open)" } \textLengthOff | }

	\mark Bridge
	\repeat volta 2 {
	r4 b'8 c d b c d | ees4 d8 ees r2 | r4 b8 c d b c d | aes4 b8 g r2 |
	r4 b8 c d b c d | ees4 d8 ees r c d ees | f d ees f g ees f g | aes1~ }
	aes1 | \bar "||" \markdownright \mark "D.C. al Coda"

	\stopStaff s1 | \startStaff %blank bar

	\mark \markup { \musicglyph #"scripts.coda" } 
	<d,, f aes aes'>1~ | <d f aes aes'>8 r8 <d f aes'>4-^ r8 <des fis bes'>8-^ r4 | <ees g c'>-^ r4 r2 | \bar "||"

  }
}

%part: tenor
tenor = { 
	\relative c { \key c \minor
	\repeat volta 2 {
	  \repeat unfold 8 {
		g'4. g8~ g g g ges | f4. f8~ f f f fis | }
	  }

	\mark Hits
	\repeat volta 2 { 
		g4. g8~ g g g ges | f4. f8~ f f f fis | g4. g8~ g g g ges | f4. f8~ f f f fis | }
	\alternative {
		{ g4. g8~ g g g ges | f4. f8~ f f f fis | g4. g8~ g g g ges | f4. f8~ f f f fis | }
		{ <ees g>4 r r2 | <ees ges>4 r4 r2 | \mark "To Coda" <d f>1~ | <d f>1 | }
	  }

	\mark "Drums (open)"
	\repeat volta 2 { \textLengthOn r1^\markup { \center-align "Drums (open)" } \textLengthOff | }

	\mark Bridge
	\repeat volta 2 {
	  \repeat unfold 4 {
		f4. f8~ f f f f | fis4. fis8~ fis fis fis fis | }
	}
	fis1 | \bar "||" \markdownright \mark "D.C. al Coda"

	\stopStaff s1 | \startStaff %blank bar

	\mark \markup { \musicglyph #"scripts.coda" } 
	<d f>1~ | <d f>8 r8 <d f>4-^ r8 <des fis>8-^ r4 | <ees g>-^ r4 r2 | \bar ".|"
  }
}

%part: bass
bass = { 
	\relative c { \key c \minor
	\repeat volta 2 {
	  \repeat unfold 4 {
		c4. g c4 | bes4. f bes4 | c4. g c4 | des4. g, bes4 | }
	  }

	\mark Hits
	\repeat volta 2 {
		c4. g c4 | bes4. f bes4 | c4. g c4 | des4. g, bes4 | }
	\alternative {
	  	{ c4. g c4 | bes4. f bes4 | c4. g c4 | des4. g, bes4 | }
	  	{ c4. g c4 | bes4. f bes4 | \mark "To Coda" c4. g c4 | des4. g, bes4 | }
	  }

	\mark "Drums (open)"
	\repeat volta 2 { \textLengthOn r1^\markup { \center-align "Drums (open)" } \textLengthOff | }

	\mark Bridge
	\repeat volta 2 {
	  \repeat unfold 4 {
		bes4. f bes4 | b4. fis b4 | }
	  }
	  b2 b4 b | \bar "||" \markdownright \mark "D.C. al Coda"
	
	\stopStaff s1 | \startStaff %blank bar

	\mark \markup { \musicglyph #"scripts.coda" } 
	g1~ | g8 r8 aes4-^ r8 bes8-^ r4 | c-^ r4 r2 | \bar ".|"
  }
}


%layout

#(set-default-paper-size "a5" 'landscape)


\book { 
  \paper { between-system-padding = #2 } %between-system-space = #2 }
  \header { poet = "Melody - C" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff {
		\melody
	}
	>>
    }
%    \words
}
%}


\book { 
  \header { poet = "Bass - C" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \clef bass
		\bass
	}
	>>
    }
%    \words
}


%{
\book { \header { poet = "Score" }
  \paper { #(set-paper-size "a4") }
    \score { 
      << 
%	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { 
		\melody
	}
	\new Staff { \clef bass
		\tenor
	}
	\new Staff { \clef bass
		\bass
	}
      >> 
  } 
%    \words
}


%{
\book { \header { poet = "MIDI" }
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
	  \midi { }
	}
}
%}
