\version "2.12.1"

\header {
	title = "Sat"
	composer = "Boban Markovich"
	copyright = "3/22/11" %date of latest edits
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
  \relative c' { \key c \minor 

	\mark "Intro"
    R1*4 \bar "||"

	\mark \default %A
    \repeat volta 2 {
        <d f bes>16 <ees g c>~~~ <ees g c>8~~~ <ees g c>2.~~~ | <ees g c> <d f bes>4 | 
		<d f bes>8 <ees g c>16 <d f bes> <c ees g>2.~~~ | <c ees g>2 r |
        <ees g c>1 | r2 ees'8\f-- des-. des-- c-. | R1*2 | 

        <d, f bes>16 <ees g c>~~~ <ees g c>8~~~ <ees g c>2.~~~ | <ees g c> <d f bes>4 | 
		<d f bes>8 <ees g c>16 <d f bes> <c ees g>2.~~~ | <c ees g>2 r4 r8 bes ( |
        <c ees> <d f> <ees g> <f aes> <ees g> <bes f'> <aes ees'> <bes d> | <g ees'>4 r8 <g ees'> <g' bes> <f aes> <f aes> <ees g> |
        <ees g>1 ) | R1 |
        <g b>8 ( <aes c> <bes d> <aes c> <g b> <f aes> <ees g> <d f> | <f aes>1 ) |
        <g b>8 ( <aes c> <g b> <f aes> <ees g> <bes f'> <aes ees'> <bes d> | <g ees'>1 ) |
        ees'8 ( f g aes bes aes g f | ees d d ees ) <ees ees'>-- <des des'>-. <des des'>-- <c c'>-. |
	  }
	  
	  \alternative { 
	  	{ | <c c'>1~~ | <c c'>2 r \markdownright \mark \markup { \italic \small "Fine" } }
		{ | <c c'>1 | r2. g'8 f16 ees }
	  }

	\mark \default %B
    \repeat volta 2 {
      	ees16 f g8 r4 r g8 f16 ees | ees f g8 r4 r r16 g c d |
        ees8 d16 c d8 c16 bes c8 bes16 aes bes8 aes16 g | aes bes bes aes aes g g f f4 f8 ees16 d |
        d ees f8 r4 r ees8 d16 c | c d ees8 r4 r2 |
        g16 aes8 g16 b8 g16 aes r f g8 f8 ees16 d |
	  }

	  \alternative { 
	  	{ c8 c16 d ees8 ees16 f g8 g16 aes g8 f16 ees | }
        { <c ees g>1 | R1*3 \bar "||" \markdownright \mark "D.S. al Fine" }
      } 
	}
}

%part: tenorone
tenorone = {
  \relative c' { \key c \minor
	\set countPercentRepeats = ##t 
	\set repeatCountVisibility = #(every-nth-repeat-count-visible 4)

	\mark "Intro"
        R1*2 |
        r8 g-. c-. g-. ees'-. g,-. c-. g-. | r g-. c-. g-. ees'-. g,-. c-. g-. |

	\mark \default %A
    \repeat volta 2 {
		\repeat percent 5 { r g-. c-. g-. ees'-. g,-. c-. g-. | } 
        r2 ees'8\f-- des-. des-- c-. |
		\repeat percent 2 { r g-. c-. g-. ees'-. g,-. c-. g-. | } \bar "||"
		\repeat percent 5 { r g-. c-. g-. ees'-. g,-. c-. g-. | } 
		\repeat percent 2 { r bes, ees bes bes' bes, ees bes | }
        R1 |
		\repeat percent 3 { r8 c f c c' c, f c | }
		\repeat percent 2 { r bes ees bes bes' bes, ees bes | }
        r2 ees'8 des des c |
	}

	  \alternative { 
		{ r8 g c g ees' g, c g | r g c g ees' g, c g \markdownright \mark \markup { \italic \small "Fine" } }
		{ r g c g ees' g, c g | r g c g ees' g, c g | }
	  }  

	\mark \default %B
    \repeat volta 2 {
        r4 c8 c r4 c4 | r4 c8  c r4 c4 | r4 c8 c r4 c4 | r4 c8 c r4 c4 |
        r4 b8 b r4 b4 | r4 c8 c r4 c4 | r4 b8 b r4 b4 |
	}
    
	  \alternative { 
		{ r4 c8 c r4 c }
		{ r8 g c g ees' g, c g | r8 g c  g ees' g, c g | 
		  r g c g ees' g, c g | r g c g ees' g, c g | \bar "||" \markdownright \mark "D.S. al Fine" }
	  }  

  }
}

%part: tenortwo
tenortwo = {
  \relative c' { \key c \minor
	\set countPercentRepeats = ##t 
	\set repeatCountVisibility = #(every-nth-repeat-count-visible 4)

	\mark "Intro"
		R1*4 

	\mark \default %A
    \repeat volta 2 {
		r4 <ees g>8-.^\markup { \italic \small "2nd x only" } <ees g>-. r4 <ees g> |
		\repeat percent 4 { r <ees g>8-. <ees g>-. r4 <ees g> | }
		r2^\markup { \italic \small "both times - - - >" } ees8\f-- des-. des-- c-. |
		\repeat percent 2 { r4 <ees g>8-. <ees g>-. r4 <ees g> | } \bar "||"
		\repeat percent 5 { r4 <ees g>8-. <ees g>-. r4 <ees g> | }
		\repeat percent 2 { r4 <g bes>8 <g bes> r4 <g bes> | }
		R1 |
		\repeat percent 3 { r4 <aes c>8 <aes c> r4 <aes c> | }
		\repeat percent 2 { r4 <g bes>8 <g bes> r4 <g bes> | }
    	r4 <g bes>8 <g bes> ees-- des-. des-- c-.
	}
		
	\alternative { 
	  { r4 <ees g>8 <ees g> r4 <ees g> | r <ees g>8 <ees g> r4 <ees g> \markdownright \mark \markup { \italic \small "Fine" } }
	  { r4 <ees g>8 <ees g> r4 <ees g> | r <ees g>8 <ees g> r4 <ees g> | }
	}
	
	\repeat volta 2 {
		\repeat percent 2 { r4 <ees g>8-. <ees g>-. r4 <ees g> | }
    	r4 <ees g>8 <ees g> r4 <e g> | r4 <f aes>8 <f aes> r4 <f aes> |
    	r4 <d g>8 <d g> r4 <d g> | r4 <ees aes>8 <ees aes> r4 <ees aes> |
    	r4 <d g>8 <d g>8 r4 <d g>4 
	}

	  \alternative { 
		{ r4 <ees g>8 <ees g> r4 <ees g> | }
		{ \repeat percent 4 { r4 <ees g>8-. <ees g>-. r4 <ees g> | } \bar "||" \markdownright \mark "D.S. al Fine" }
	  }
	}
}

%part: bass
bass = {
  \relative c { \key c \minor
	\set countPercentRepeats = ##t 
	\set repeatCountVisibility = #(every-nth-repeat-count-visible 4)

	\mark "Intro"
	\repeat percent 4 { c4 r g r }

	\mark \default %A
	\repeat volta 2 {
		\repeat percent 5 { c r g r }
    	c4 r ees8\f-- des-. des-- c8-. |
		\repeat percent 2 { c4 r g r } \bar "||"
		\repeat percent 5 { c r g r }
		\repeat percent 3 { ees' r bes r }
		\repeat percent 3 { f' r c r }
		\repeat percent 2 { ees r bes r }
    	ees4 r ees8\f-- des-. des-- c8-. |
	  }

		\alternative { 
	  		{ c4 r g r | c r g r \markdownright \mark \markup { \italic \small "Fine" } }
    		{ c r g r | c r g r | }
    	}  

	\mark \default %B
	\repeat volta 2 {
	  c r g r | c r g r | c r ees r | f r c r |
	  g16 g b d g4 d,16 g b d g4 | aes,16 aes c ees aes4 ees,16 aes c ees aes4 |
	  g, r b r 
	}

		\alternative { 
		  { c4 r g r }
		  { \repeat percent 4 { c r g r | } \bar "||" \markdownright \mark "D.S. al Fine" }
    	} 
  }
}
%part: tenorboth
tenorboth = {
  <<

  \tenorone
  \new Staff {
	\tenortwo
	}
	>>
  }
%\tempo 4 = 96
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
		\tenorone
	}
	\new Staff { \clef bass
		\tenortwo
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
