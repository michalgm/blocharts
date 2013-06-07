\version "2.12.1"

\header {
	title = "Hop Hop Hop"
	composer = "Goran Bregovich"
	copyright = "4/27/10" %date of latest edits
	}

%description:Balkan/rock hit by controversial Bosnian superstar Goran Bregovic, from the album <i>Tales And Songs From Weddings And Funerals</i>. 

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
  \relative c'' { \key g \minor
  
  \mark \default %A
  \repeat volta 2 {
	r8 d r cis d cis d cis | b b c?4 b8 c c4 |
	r8 c r b c b c a | a bes? bes4 a8 bes bes4 |
	r8 d r cis d cis d cis | \times 2/3 { c?4 c bes } \times 2/3 { a a g } |
	fis4 r d'8 c b a | g1 |
  }

  \mark \default %B
  \repeat volta 2 {
	d'4. d8 d4 bes | c c c2 | c4. c8 c4 d | c bes bes2 |
	bes4. bes8 bes4 g | a a a2 | c8 c c c c4 d | c bes bes2 |
  }

  \alternative {
  	{ \mark \default %C 
	g4. a8 bes4 g~ | g a bes g | a a a r | r1 |
	fis4. g8 a4 fis~ | fis g a fis | g g g r | r1 |
	}

  	{ \mark \default %D
	g2 bes | d c4 bes | a r8 c c4 c | c c ees d | 
	\markdownright \mark "D.C. al Fine"
	}
  }

} 
}

%part: harmony
harmony = {
  \relative c' { \key g \minor

  \mark \default %A
  \repeat volta 2 {
	<d, bes'>4-^ r8 <d bes'>-^ r4 <d bes'>-^ | r4 <d a'>-^  r4 <d a'>-^ |
	<d a'>4-^ r8 <d a'>-^ r4 <d a'>-^ | r4 <d c'>-^  r4 <d c'>-^ |
	<d g>4-^ r8 <d g>-^ r4 <d g>-^ | r4 <c e>-^  r4 <c e>-^ | 
	<d a'> r <fis b>8 <e a> <d g> <c fis> | <b g'>2 <gis' c>->\sfz |
  }

  \mark \default %B
  \repeat volta 2 {
	r2 <g bes>4-^ r | r2 <fis a>4-^ r | r2 <fis a>4-^ r | r2 <g bes>4-^ r | 
	r2 <d g>4-^ r | r2 <d fis>4-^ r | r2 <fis a>4-^ r | r2 <d g>4-^ r |
  }

  \alternative {
  	{ \mark \default %C
	bes'4. c8 d4 bes~ | bes c d bes | c c c r | r1 |
	a4. bes8 c4 a~ | a bes c a | bes bes bes r | r1 | 
	}

  	{ \mark \default %D
	g2 g | bes a4 g | fis r r2 | r fis |
	\markdownright \mark "D.C. al Fine"
	}
  }

}
}

%part: bass
bass = {
  \relative c { \key g \minor

  \mark \default %A
  \repeat volta 2 {
	d4 r d r8 d~ | d4 d d d | d r fis, r8 g~ | g4 a bes c |
	g r b r8 c~ | c4 d ees cis | d r d8 c bes a | g1 |
  }

  \mark \default %B
  \repeat volta 2 {
	g4 r g r8 a~ | a4 bes c d | d r a r8 g~ | g4 d' r d |
	g, r g r8 a~ | a4 bes c d | d r a r8 g~ | g4 d' r d |
  }

  \alternative {
  	{ \mark \default %C
	g,4 r g r8 a~ | a4 bes c d | d r a r | r1 |
	d4 r d r8 d~ | d4 d a d | g, r g r | r1 |
	}

  	{ \mark \default %D
	g4 r g r8 a~ | a4 bes c d | d r r2 | r1 |
	\markdownright \mark "D.C. al Fine"
	}
  }
}
}

% \tempo 2 = 100

%layout
#(set-default-paper-size "a5" 'landscape)

%{
\book { 
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

%{
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
%}


\book { \header { poet = "Score" }
  \paper { #(set-paper-size "letter") }
    \score { 
      << 
%	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { 
		\melody
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
      << \tempo 4 = 100 
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"alto sax"
		\melody
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"tuba"
		\bass
	}
      >> 
    \midi { }
  } 
}
%}
