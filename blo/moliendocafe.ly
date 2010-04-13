\version "2.12.1"

\header {
	title = "Moliendo Cafe"
	composer = "Hugo Blanco"
	copyright = "3/11/10"
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
  \relative c' { \key d \minor 
  \partial 4. a8 d e |
  \mark \default
  \repeat volta 2 { 
	f f r f r f r f | r e r e f4 e8 d | f4. d8~ d2~ | d2 r8 a d e |
	f f r f r f r f | r e r e f4 e8 d | g1 | r2 r8 d e f |
	g g r g r g r a | r a r g a4 g8 a | g4. f8~ f2~ | f2 r8 a, d e | 
	f f r f r f r f | r e r e e4 f8 e | d1~ | d2 r |
	g8 g r g r a r g | bes2~ bes8 a g a | g4. f8~ f2~ | f2. r4 |
	g8 g r g r a r g | bes2~ bes8 a c a | g4. f8~ f2~ | f2. r4 |
	e8 e r e e4 e | g8 g r g g4 f8 g | e2. a8 a | a1 | \bar "||"

	\mark \default
	d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 | d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 |
	d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 | d8 r r4 r2 | a1\trill | } 
	
  }
}

%part: harmony
harmony = {
  \relative c' { \key d \minor 
  \partial 4. d8 f g |
  \mark \default
  \repeat volta 2 { 
	a a r a r a r a | r g r g a4 g8 f | a4. f8~ f2~ | f2 r8 d f g |
	a a r a r a r a | r g r g a4 g8 f | bes1 | r2 r8 f g a |
	bes bes r bes r bes r c | r c r bes c4 bes8 c | bes4. a8~ a2~ | a2 r8 d, f g | 
	a a r a r a r a | r g r g g4 a8 g | f1~ | f2 r |
	bes8 bes r bes r c r bes | d2~ d8 c bes c | bes4. a8~ a2~ | a2. r4 |
	bes8 bes r bes r c r bes | d2~ d8 c c c | bes4. a8~ a2~ | a2. r4 |
	g8 g r g g4 g | bes8 bes r bes bes4 a8 bes | g2. cis8 d | cis1 | \bar "||"

	\mark \default
	d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 | d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 |
	d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 | d8 r r4 r2 | a1\trill | } 
	
  }
}

%{ when combining melody and harmony, what order should they be in? 
harmony
melody
%}

%part: bass
bass = {
}

%part: words
words = \markup { }

%part: changes
changes = \chordmode { }

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
  \paper { #(set-paper-size "a4") }
    \score { 
      << 
	\new Staff { 
     \set Staff.printPartCombineTexts = ##f
	  \partcombine  
	  	\melody
		\harmony
	  }
	\new Staff { \clef bass
		\bass
	}
      >> 
  } 
}


%{
\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 184
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
