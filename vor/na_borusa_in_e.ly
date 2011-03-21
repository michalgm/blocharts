\version "2.12.1"

\header {
	title = "Na Borusa Sa Sinefa (Concert E)"
	composer = "Traditional?"
	copyright = "4/13/10" %date of latest edits
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = { 
  \transpose c b, { \relative c {
    \repeat volta 2 {
	  f'8. f16~ f8 f f'4 es8 des | c16 des r es~ es2. | ges,8. ges16~ ges8 bes des4 c8 bes | }
	  \alternative { { c16 bes r a~ a2. | } { c16 bes r a~ a2. | } }

	\break
    \repeat volta 2 {
		ges4. bes8 des4 c8 bes | c16 des r es~ es2. | ges,4. bes8 des4 c8 bes | }
		\alternative { { c16 bes r a~ a2. | } { c16 bes r a~ a2. | } }
	  
	\break
    \repeat volta 2 {
       r8 f' f f f8. des16~ des8 es | f1 | r8 f ges f es4 des8 es | des8. c16 c2. |
	  }
	\break
    \repeat volta 2 {
        r8 bes( bes bes bes4 c8 des | c16 bes r aes~ aes2. -\bendAfter #-4 |
        ges8 ) ges( ges ges ges4 as8 bes | a16 ges16 r16 f16 ~ f2. )|
	  }
	}
	}
}

%part: tersa
tersa = { 
  \transpose c b, {
	\relative c {
    \repeat volta 2 {
	  des'8. des16~ des8 des des'4 c8 bes | a16 bes r c~ c2. | ees,8. ees16~ ees8 ges bes4 a8 ges | }
	  \alternative { { a16 ges r f~ f2. | } { a16 ges r f~ f2. | } }
	  
	\break
    \repeat volta 2 {
		ees4. ges8 bes4 a8 ges | a16 bes r c~ c2. | ees,4. ges8 bes4 a8 ges | }
		\alternative { { a16 ges r f~ f2. | } { a16 ges r f~ f2. | } }
	  
	\break
    \repeat volta 2 {
       r8 des' des des des8. bes16~ bes8 c | des1 | r8 des ees des c4 bes8 c | bes8. a16 a2. |
	  }
	\break
    \repeat volta 2 {
        r8 des( des des des4 ees8 f | ees16 des r c~ c2. -\bendAfter #-4 |
        bes8 ) bes( bes bes bes4 c8 des | c16 bes16 r16 a16~ a2. )|
	  }
	}
}
}

%part: bass
bass = {
  \transpose c b, {
  \relative c {
	\repeat volta 2 {
		bes8[ r16 f] r8 bes r16 f[ r f] bes8 f | f[ r16 c] r8 ees r ges f fes |
		ees[ r16 bes] r8 des r16 ees[ r ees] ges8 ees |
	  }
	  \alternative { { f[ r16 c] r8 ees r f ges a | } {  f[ r16 c] r8 ees r ges f fes | } }

	\break
	\repeat volta 2 {
		ees[ r16 bes] r8 des r16 ees[ r ees] ges8 ees | f[ r16 c] r8 ees r ges f fes |
		ees[ r16 bes] r8 des r16 ees[ r ees] ges8 ees |
	  }
	  \alternative { { f[ r16 c] r8 ees r ges f fes | } { f[ r16 c] r8 ees r f ges a | } }
	  
	\break
	\repeat volta 2 {
		bes[ r16 f] r8 bes r16 f[ r f] bes8 f | bes[ r16 f] r8 bes r ees des c |
		bes[ r16 f] r8 bes r16 f[ r f] bes8 f | f[ r16 c] r8 ees r f ges a |
	  }
	\break
	\repeat volta 2 {
		bes[ r16 f] r8 bes r16 f[ r f] bes8 f | aes[ r16 ees] r8 aes r bes aes g |
		ges[ r16 des] r8 ges r16 des[ r des] ges8 des | f[ r16 c] r8 ees r f ges a |
	  }

	}
  }
}
%part: words
words = \markup { }

%part: changes
changes = \chordmode { 
  \transpose c b, {
    bes1:m | f:7 | ees:m | f:7 |
    ees:m | f:7 | ees:m | f:7 | f:7 |
    bes:m | bes:m | bes:m | f:7 | 
	bes:m | aes | ges | f:7 |
  }
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

{
  \displayLilyMusic \transpose f c {
	\new ChordNames { \changes }
  }
}
