\version "2.12.1"

\header {
	title = "Moliendo Café"
	composer = "Hugo Blanco"
	copyright = "3/11/10"
	}

%description:1961 hit song by <a href="http://en.wikipedia.org/wiki/Hugo_Blanco_%28musician%29">Hugo Blanco</a> of Venezuela about a coffee picker in love with the plantation owner’s daughter. (Also see <a href="http://en.wikipedia.org/wiki/Moliendo_Cafe">wikipedia entry</a>.)

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
  \relative c' { 
    \key d \minor 
  \partial 4. a8 d e |
  \mark \default
	f f r f r f r f | r e r e f4 e8 d | f4. d8~ d2~ | d2 r8 a d e |
	f f r f r f r f | r e r e f4 e8 d | g1 | r2 r8 d e f |
	g g r g r g r a | r a r g a4 g8 a | g4. f8~ f2~ | f2 r8 a, d e | 
	f f r f r f r f | r e r e e4 f8 e | d1~ | d2 r |
        \break \mark \default

	g8 g r g r a r g | bes2~ bes8 a g a | g4. f8~ f2~ | f2. r4 |
	g8 g r g r a r g | bes2~ bes8 a c a | g4. f8~ f2~ | f2. r4 |
	e8 e r e e4 e | g8 g r g g4 f8 g | e2. a8 a | a1 | \bar "||"

	\break \mark \default
	d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 | d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 |
	d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 | d8 r r4 r2 | a1\trill |
  } 
	
}

%part: harmony
harmony = {
  \relative c' { 
    \key d \minor 
  \partial 4. d8 f g |
  \mark \default
	a a r a r a r a | r g r g a4 g8 f | a4. f8~ f2~ | f2 r8 d f g |
	a a r a r a r a | r g r g a4 g8 f | bes1 | r2 r8 f g a |
	bes bes r bes r bes r c | r c r bes c4 bes8 c | bes4. a8~ a2~ | a2 r8 d, f g | 
	a a r a r a r a | r g r g g4 a8 g | f1~ | f2 r |
       \break \mark \default

	bes8 bes r bes r c r bes | d2~ d8 c bes c | bes4. a8~ a2~ | a2. r4 |
	bes8 bes r bes r c r bes | d2~ d8 c c c | bes4. a8~ a2~ | a2. r4 |
	g8 g r g g4 g | bes8 bes r bes bes4 a8 bes | g2. cis8 d | cis1 | \bar "||"

	\break \mark \default
	d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 | d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 |
	d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 | d8 r r4 r2 | a1\trill | 
  } 
	
}

%{ when combining melody and harmony, what order should they be in? 
harmony
melody
%}

%part: bass
bass = {
  \relative c {
    \key d \minor
    \partial 4. r8 r4 |
    \mark \default
    d4. f a4-. | d,4. f a4-. | d,4. f a4-. | d,4. f a4-. |
    d,4. f a4-. | d,4. f a4-. | g4. bes d4-. |  g,4. bes d4-. |
    g,4. bes d4-. |  g,4. bes d4-. | d,4. f a4-. | d,4. f a4-. |
    bes,4. d f4-. | a,4. cis e4-. | d4. f a4-. | d4 r r2 |

    \break \mark \default
    g,4. bes d4-. |  g,4. bes d4-. | d,4. f a4-. | d,4. f a4-. |
    g4. bes d4-. |  g,4. bes d4-. | d,4. f a4-. | d,4. f a4-. |
    e4. g bes4-. |  e,4. g bes4-. | a,4. cis e4-. | a,4 r r2 |

    \break \mark \default
    d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 | d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 |
    d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 | d8 r r4 r2 | a1\trill |
  }
}

%part: words
words = \markup { }

%part: changes
changes = \chordmode { 
s4. | 
    d1:m d:m d:m d:m 
    d:m d:m g:m g:m 
    g:m g:m d:m d:m
    bes a:7 d:m d:m
    %B
    g:m g:m d:m d:m
    g:m g:m d:m d:m
    e:dim e:dim a:7 a:7
    
}

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
      	\new ChordNames { \set chordChanges = ##t \changes }

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
