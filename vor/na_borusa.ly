\version "2.12.1"

\header {
	title = "Na Borusa Sa Sinefa"
	composer = "Traditional?"
	copyright = "4/13/10" %date of latest edits
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = { 
  \set Score.markFormatter = #format-mark-box-letters
  \relative c {
    \repeat volta 2 {
	  f'8. f16~ f8 f f'4 es8 des | c16 des r es~ es2. | ges,8. ges16~ ges8 bes des4 c8 bes | }
	  \alternative { { c16 bes r a~ a2. | } { c16 bes r a~ a2. | } }

	\break
    \repeat volta 2 {
		ges4. bes8 des4 c8 bes | c16 des r es~ es2. | ges,4. bes8 des4 c8 bes | }
		\alternative { { c16 bes r a~ a2. | } { c16 bes r a~ a2. | } }
	  
	\break
    \repeat volta 2 {
       r8 f' f f f8. des16~ des8 es | f1 | r8 f ges f es4 des8 es | 
	  }
    \alternative {
      { des8. c16 c2. | }
      { des8. c16 c2. | }
    }
	\break
    \repeat volta 2 {
        r8 bes( bes bes bes4 c8 des | c16 bes r aes~ aes2. -\bendAfter #-4 |
        ges8 ) ges( ges ges ges4 as8 bes | a16 ges16 r16 f16 ~ f2. )|
	  }
	}
}

%part: tersa
tersa = { 
  \relative c {
    \set Score.markFormatter = #format-mark-box-letters
    
    \mark \default
    \repeat volta 2 {
	  des'8. des16~ des8 des des'4 c8 bes | a16 bes r c~ c2. | ees,8. ees16~ ees8 ges bes4 a8 ges | }
	  \alternative { { a16 ges r f~ f2. | } { a16 ges r f~ f2. | } }
	  
	\break
    \mark \default
    \repeat volta 2 {
		ees4. ges8 bes4 a8 ges | a16 bes r c~ c2. | ees,4. ges8 bes4 a8 ges | }
		\alternative { { a16 ges r f~ f2. | } { a16 ges r f~ f2. | } }
	  
	\break
    \mark \default
    \repeat volta 2 {
       r8 des' des des des8. bes16~ bes8 c | des1 | r8 des ees des c4 bes8 c |
	  }
    \alternative {
      {  bes8. a16 a2. |}
      {  bes8. a16 a2. |}
    }
	\break
    \mark \default
    \repeat volta 2 {
        r8 des( des des des4 ees8 f | ees16 des r c~ c2. -\bendAfter #-4 |
        bes8 ) bes( bes bes bes4 c8 des | c16 bes16 r16 a16~ a2. )|
	  }
	}
}

%part: bass
bass = {
  \relative c {
    \set Score.markFormatter = #format-mark-box-letters
    
    \mark \default
	\repeat volta 2 {
		bes8[ r16 f] r8 bes r16 f[ r f] bes8 f | f[ r16 c] r8 ees r ges f fes |
		ees[ r16 bes] r8 des r16 ees[ r ees] ges8 ees |
	  }
	  \alternative { { f[ r16 c] r8 ees r f ges a | } {  f[ r16 c] r8 ees r ges f fes | } }

	\break
    \mark \default
	\repeat volta 2 {
		ees[ r16 bes] r8 des r16 ees[ r ees] ges8 ees | f[ r16 c] r8 ees r ges f fes |
		ees[ r16 bes] r8 des r16 ees[ r ees] ges8 ees |
	  }
	  \alternative { { f[ r16 c] r8 ees r ges f fes | } { f[ r16 c] r8 ees r f ges a | } }
	  
	\break
    \mark \default
	\repeat volta 2 {
		bes[ r16 f] r8 bes r16 f[ r f] bes8 f | bes[ r16 f] r8 bes r ees des c |
		bes[ r16 f] r8 bes r16 f[ r f] bes8 f |
	  }
    \alternative {
      {  f[ r16 c] r8 ees r f ges a | }
      {  f[ r16 c] r8 ees r f ges a | }
    }
	\break
    \mark \default
	\repeat volta 2 {
		bes[ r16 f] r8 bes r16 f[ r f] bes8 f | aes[ r16 ees] r8 aes r bes aes g |
		ges[ r16 des] r8 ges r16 des[ r des] ges8 des | f[ r16 c] r8 ees r f ges a |
	  }

	}
  }

%part: tenor
tenor = {
  \relative c {
    \set Score.markFormatter = #format-mark-box-letters
    
    \mark \default
    \repeat volta 2 {
        r8 <bes' des f>16 <bes des f> r <bes des f>16 <bes des f> <bes des f> r16 <bes des f> <bes des f>16-- <bes des f> r <bes des f>16 <bes des f> <bes des f>|
        r8 <a c f>16 <a c f> r <a c f> <a c f> <a c f> r8 ges f fes
        r8 <bes ees ges>16 <bes ees ges> r <bes ees ges> <bes ees ges> <bes ees ges> r16 <bes ees ges> <bes ees ges>-- <bes ees ges> r <bes ees ges> <bes ees ges> <bes ees ges>        
      }
    \alternative {
      { r8 <a c f>16 <a c f> r <a c f> <a c f> <a c f> r8 f ges a }
      { r8 <a c f>16 <a c f> r <a c f> <a c f> <a c f> r8 ges f fes }
    }
    \break
    \mark \default
    \repeat volta 2 {
      r8 <bes ees ges>16 <bes ees ges> r <bes ees ges> <bes ees ges> <bes ees ges> r <bes ees ges> <bes ees ges>-- <bes ees ges> r <bes ees ges> <bes ees ges> <bes ees ges> |
      r8 <a c f>16 <a c f> r <a c f> <a c f> <a c f> r8 ges f fes |
      r8 <bes ees ges>16 <bes ees ges> r <bes ees ges> <bes ees ges> <bes ees ges> r <bes ees ges> <bes ees ges>-- <bes ees ges> r <bes ees ges> <bes ees ges> <bes ees ges> |
    }
    \alternative {
      { r8 <a c f>16 <a c f> r <a c f> <a c f> <a c f> r8 ges f fes | }
      { r8 <a c f>16 <a c f> r <a c f> <a c f> <a c f> r16 <f a c> <ges bes des> <a c ees> <bes des f> <c ees ges> <des f a> <ees ges bes>  | }
    }
    \break
    \mark \default
    \repeat volta 2 {
      <des f bes>8 r8 r4 <des f bes>4 <bes des ges>|
      <bes des f>8 <bes des f>16 <bes des f> r <bes des f> <bes des f> <bes des f> r8 ees, des c|
      r8 <bes' des f>16 <bes des f> r <bes des f> <bes des f> <bes des f> r <bes des f> r <bes des f> r <bes des f> <bes des f> <bes des f> |
    }
    \alternative {
      { r8 <a c f>16 <a c f> r <a c f> <a c f> <a c f> r16 <f a c> <ges bes des> <a c ees> <bes des f> <c ees ges> <des f a> <ees ges bes> | }
      { r8 <a, c f>16 <a c f> r <a c f> <a c f> <a c f> r8 f ges a  }
    }
    \break
    \mark \default
    \repeat volta 2 {
      r8 <bes des f>16 <bes des f> r <bes des f> <bes des f> <bes des f> r <bes des f>-- r <bes des f> r <bes des f> <bes des f> <bes des f> |
      r8 <aes c ees>16 <aes c ees> r <aes c ees> <aes c ees> <aes c ees> r8 bes aes g |
      r8 <bes des ges>16 <bes des ges> r <bes des ges> <bes des ges> <bes des ges> r <bes des ges>-- r <bes des ges> r <bes des ges> <bes des ges> <bes des ges> |
      r8 <a c f>16 <a c f> r <a c f> <a c f> <a c f> r8 f ges a
      
    }
  }
}
  
%part: changes
changes = \chordmode { 
    bes1:m | f:7 | ees:m | f:7 | f:7 |
    ees:m | f:7 | ees:m | f:7 | f:7 |
    bes:m | bes:m | bes:m | f:7 | f:7 |
	bes:m | aes | ges | f:7 |

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
}
%}


\book { \header { poet = "Score" }
  \paper { #(set-paper-size "letter") }
    \score { 
      << 
	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { 
		\melody
	}
    \new Staff { \clef treble
      \tenor
    }
    \new Staff { \clef treble 
      \transpose c c''
		\bass
    }
      >> 
  } 
%    \words
}



\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 100 
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trumpet"
		\melody
	}
    \unfoldRepeats  \new Staff { \set Staff.midiInstrument = #"trombone"
      \transpose c c,
      \tenor
    }
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"tuba"
		\bass
	}
      >> 
    \midi { }
  } 
}
