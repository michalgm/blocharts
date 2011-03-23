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
}

%part: tersa
tersa = { 
	\transpose c b, {  \relative c {
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
}

%part: tenor
tenor = {
  \transpose c b, {\relative c {
    \set Score.markFormatter = #format-mark-box-letters
    
    \mark \default %A
    \repeat volta 2 {
        r8 <f bes des>16 <f bes des> r <f bes des>16 <f bes des> <f bes des> r16 <f bes des> <f bes des>16-- <f bes des> r <f bes des>16 <f bes des> <f bes des>|
        r8 <f a c>16 <f a c> r <f a c> <f a c> <f a c> r8 ges f fes
        r8 <ges bes ees>16 <ges bes ees> r <ges bes ees> <ges bes ees> <ges bes ees> r16 <ges bes ees> <ges bes ees>-- <ges bes ees> r <ges bes ees> <ges bes ees> <ges bes ees>        
      }
    \alternative {
      { r8 <f a c>16 <f a c> r <f a c> <f a c> <f a c> r8 f ges a }
      { r8 <f a c>16 <f a c> r <f a c> <f a c> <f a c> r8 ges f fes }
    }
    \break
	
    \mark \default %B
    \repeat volta 2 {
      r8 <ges bes ees>16 <ges bes ees> r <ges bes ees> <ges bes ees> <ges bes ees> r <ges bes ees> <ges bes ees>-- <ges bes ees> r <ges bes ees> <ges bes ees> <ges bes ees> |
      r8 <f a c>16 <f a c> r <f a c> <f a c> <f a c> r8 ges f fes |
      r8 <ges bes ees>16 <ges bes ees> r <ges bes ees> <ges bes ees> <ges bes ees> r <ges bes ees> <ges bes ees>-- <ges bes ees> r <ges bes ees> <ges bes ees> <ges bes ees> |
    }
    \alternative {
      { r8 <f a c>16 <f a c> r <f a c> <f a c> <f a c> r8 ges f fes | }
      { r8 <f a c>16 <f a c> r <f a c> <f a c> <f a c> r16 <des f> <ees ges> <f a> <ges bes> <a c> <bes des> <c ees>  | }
    }
    \break

    \mark \default %C
    \repeat volta 2 {
      <bes des f>8 r8 r4 <bes des f>4 <f bes des>|
      <f bes des>8 <f bes des>16 <f bes des> r <f bes des> <f bes des> <f bes des> r8 ees des c|
      r8 <f bes des>16 <f bes des> r <f bes des> <f bes des> <f bes des> r <f bes des> r <f bes des> r <f bes des> <f bes des> <f bes des> |
    }
    \alternative {
      { r8 <f a c>16 <f a c> r <f a c> <f a c> <f a c> r16 <des f> <ees ges> <f a> <ges bes> <a c> <bes des> <c ees>  | }
      { r8 <f, a c>16 <f a c> r <f a c> <f a c> <f a c> r8 f ges a  }
    }
    \break

    \mark \default %D
    \repeat volta 2 {
      r8 <f bes des>16 <f bes des> r <f bes des> <f bes des> <f bes des> r <f bes des>-- r <f bes des> r <f bes des> <f bes des> <f bes des> |
      r8 <ees aes c>16 <ees aes c> r <ees aes c> <ees aes c> <ees aes c> r8 bes aes g |
      r8 <ges' bes des>16 <ges bes des> r <ges bes des> <ges bes des> <ges bes des> r <ges bes des>-- r <ges bes des> r <ges bes des> <ges bes des> <ges bes des> |
      r8 <f a c>16 <f a c> r <f a c> <f a c> <f a c> r8 f ges a
      
    }
  }}
}


%part: bass
bass = {
  \transpose c b, {\relative c {
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
}
  
%part: changes
changes = \transpose c b, {\chordmode { 
    bes1:m | f:7 | ees:m | f:7 | f:7 |
    ees:m | f:7 | ees:m | f:7 | f:7 |
    bes:m | bes:m | bes:m | f:7 | f:7 |
	bes:m | aes | ges | f:7 |
  }
}

%layout

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
    \new Staff { \clef bass
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


%{
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
%}
