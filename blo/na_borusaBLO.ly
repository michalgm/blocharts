\version "2.12.1"

\header {
	title = "Na Borusa Sa Sinefa (BLO)"
	composer = "Traditional?"
	copyright = "4/14/10" %date of latest edits
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = { 
  \relative c' { \key c \minor
	  \repeat volta 2 {
        c8. c16~ c8 c c'4 bes8 aes | g16 aes r bes~ bes2. | des,8. des16~ des8 f aes4 g8 f | } 
		\alternative { { g16 f r e~ e2. | } { g16 f r e~ e2. | } } 
		
	  \repeat volta 2 {
        des4. f8 aes4 g8 f | g16 aes r bes~ bes2. | des,4. f8 aes4 g8 f | } 
		\alternative { { g16 f r e~ e2. | } { g16 f r e~ e2. | } } 
		
	  \repeat volta 2 {
        r8 c' c c c8. aes16~ aes8 bes | c1 | r8 c des c bes4 aes8 bes | aes8. g16 g2. |
      }  
		
	  \repeat volta 2 {
        r8 f( f f f4 g8 aes | g16 f r ees~ ees2. -\bendAfter #-4 | 
		des8) des( des des des4 ees8 f | e16 des r c~ c2.) | 
	  }  
	}
}

%part: tersa
tersa = { 
  \relative c' { \key c \minor
	\repeat volta 2 {
        aes8. aes16~ aes8 aes aes'4 g8 f | e16 f r g~ g2. |
        bes,8. bes16~ bes8 des f4 e8 des |
      } 
	  \alternative { { e16 des r c~ c2. | } { e16 des r c~ c2. | } } 
	  
	\repeat volta 2 {
        bes4. des8 f4 e8 des | e16 f r g~ g2. |
        bes,4. des8 f4 e8 des | 
      } 
	  \alternative { { e16 des r c~ c2. | } { e16 des r c~ c2. | } } 
	  
	\repeat volta 2 {
        r8 aes' aes aes aes8. f16~ f8 g | aes1 | r8 aes bes aes g4 f8 g | f8. e16 e2. |
      }  
	  
	\repeat volta 2 {
        r8 aes( aes aes aes4 bes8 c | bes16 aes r g~ g2. -\bendAfter #-4 |
        f8) f( f f f4 g8 aes | g16 f r e~ e2.) |
      }  

	}
}

%part: bass
bass = {
  \relative c { \key c \minor
	\repeat volta 2 {
        f8[  r16 c] r8 f r c f c | c[ r16 g] r8 bes r des c ces |
        bes[ r16 f] r8 aes r bes des bes | 
      } 
	  \alternative { { c[ r16 g] r8 bes r c des e | } { c[ r16 g] r8 bes r des c ces | } } 
	  
	\repeat volta 2 {
        bes[ r16 f] r8 aes r bes des bes | c[ r16 g] r8 bes r des c ces |
        bes[ r16 f] r8 aes r bes des bes | 
      } 
	  \alternative { { c[ r16 g] r8 bes r des c ces | } { c[ r16 g] r8 bes r c des e | } } 
	  
	\repeat volta 2 {
        f[ r16 c] r8 f r c f c | f[ r16 c] r8 f r bes aes g |
        f[ r16 c] r8 f r c f c | c[ r16 g] r8 bes r c des e |
      }  
	  
	\repeat volta 2 {
        f[ r16 c] r8 f r c f c | ees[ r16 bes] r8 ees r f ees d |
        des[ r16 aes] r8 des r aes des8 aes | c[ r16 g] r8 bes r c des e |
      }  

	}
  }

%part: words
words = \markup { }

%part: changes
changes = \chordmode { 
    f1:m | c:7 | bes:m | c:7 | c:7 |
    bes:m | c:7 | bes:m | c:7 | c:7 |
    f:m | f:m | f:m | c:7 | 
	f:m | ees | des | c:7 |

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

