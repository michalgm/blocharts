\version "2.12.3"

\header {
	title = "Ederlezi"
	composer = "Trad. Roma (bg version)"
	copyright = "3/22/11"
	tagline = \markup {\bold "A-B A-B drums C A-B "} %form
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
	\relative c' { \key d \minor

	\mark \default %A
	\repeat volta 2 {
	  r4 <f a>8 <g bes> <a c> <g bes> <f a> <e g> |
	  <e g> <f a>~ <f a>4 \times 2/3 { <e g>8 <d f> <e g> } <d f>4 |
	  r4 <f a>8 <g bes> <g bes>4 <g bes>8 <e g> |
	  <f a>4. <g bes>8 <e g>16 <d f> <e g>8 <d f>4 |
	  r4 <f a>8 <g bes> <g bes>4 <g bes>8 <e g> |
	  <f a>4. <g bes>8 <e g>16 <d f> <e g>8  <d f>4 |
	  r4 <f a>8 <e g> <g bes> <g bes> <e g>4 | <d f>8 <d f>~ <d f>2 r4 |
	}

	\mark \default %B
	\repeat volta 2 {
	  <f a c>2. <e g bes>16 <f a c> <e g bes> <d f a> | <e g bes>2. r4 |
	  <d f> <f a>8 <f a> <d g> <d f> <d e> <d e> | 
	  <d f>4 <d e>8 <d f> <d a'> <d a'> <d g>4 |
	  <d f>4 <f a>8 <f a> <d g> <d f> <d e> <d e> | }
	  \alternative {
		{ <bes' d>2 <a c>8 <g bes> <f a> <d g> | r4 <a' c>8 <g bes> <f a>4 <d g> |
		r4 <d f>8 <d e> <cis a'> <cis a'> <cis e>4 | d8 d~ d2 r4 | }
		{ <d d'>1 | r4 c'8 bes a4 g | r4 <a c>8 <g bes> <f a>4 <e g> |
		r4 <d f>8 <d e> <cis a'> <cis a'> <cis e>4 | d8 d~ d2 \markdownright \mark \markup { \italic "fine" } r4\mark \markup { "D.C." }  | }
	  }

	\repeat volta 2 { r1 \mark \markup { \italic "Drums" } | r1 | }

	\mark \default %C 
	  r1 | <a' a'>8 <g g'> <g g'> <fis fis'> <fis fis'> <e e'> <e e'> <d d'> | 
	  <cis cis'> <d d'> <e e'> r r2 | r1 |
	  <a a'>8 <g g'> <g g'> <fis fis'> <fis fis'> <e e'> <e e'> <d d'> | 	
	  <cis cis'>1 | \bar ".|" \markdownright \mark "D.C. al Fine"

}
}
%part: tenor
tenor = {
	\relative c { \key d \minor

	\mark \default %A
	\repeat volta 2 {
	  r8 <f a d>16 <f a d>16 <f a d>8 <f a d>8 r <e g c> <e g c>4 | r8 <f a c>16 <f a c>16 <f a c>8 <f a c>8 r <f a c> <f a c>4 | 
	  r8 <g bes d>16 <g bes d>16 <g bes d>8 <g bes d>8 r <g bes d> <g bes d>4 | r8 <f bes d>16 <f bes d>16 <f bes d>8 <f bes d>8 r <f bes d> <f bes d>4 | 
	  r8 <g bes d>16 <g bes d>16 <g bes d>8 <g bes d>8 r <g bes d> <g bes d>4 | r8 <f a d>16 <f a d>16 <f a d>8 <f a d>8 r <e g c> <e g c>4 |
	  r8 <f a c>16 <f a c>16 <f a c>8 <f a c>8 r <e g cis> <e g cis>4 | r8 <f a d>16 <f a d>16 <f a d>8 <f a d>8 r <f a d> <f a d>4 | 
	}

	\mark \default %B
	\repeat volta 2 {
	  r8 <f a c>16 <f a c>16 <f a c>8 <f a c>8 r <f a c> <f a c>4 | 
	  r8 <g bes d>16 <g bes d>16 <g bes d>8 <g bes d>8 r <g bes d> <g bes d>4 | 
	  r8 <f a d>16 <f a d>16 <f a d>8 <f a d>8 r <g bes d> <g bes d>4 | 
	  r8 <f a d>16 <f a d>16 <f a d>8 <f a d>8 r <g bes d> <g bes d>4 | 
	  r8 <f a d>16 <f a d>16 <f a d>8 <f a d>8 r <g bes d> <g bes d>4 | }
	  \alternative {
		{ r8 <f bes d>16 <f bes d>16 <f bes d>8 <f bes d>8 r <f bes d> <f bes d>4 |
	  	r8 <g bes d>16 <g bes d>16 <g bes d>8 <g bes d>8 r <g bes d> <g bes d>4 | 
	  	r8 <f a c>16 <f a c>16 <f a c>8 <f a c>8 r <e g cis> <e g cis>4 | 
	  	r8 <f a d>16 <f a d>16 <f a d>8 <f a d>8 r <f a d> <f a d>4 | }
		{ <f bes d>1 | r2. <g bes d>8 <g bes d> |  
%	  r8 <g bes d>16 <g bes d>16 <g bes d>8 <g bes d>8 r <g bes d> <g bes d>4 | 
		<g bes d>4 r r <g bes d>8 <g bes d> |
	  <f a c>8 <f a c>16 <f a c>16 <f a c>8 <f a c>8 r <e g cis> <e g cis>4 | 
	  	r8 <f a d>16 <f a d>16 <f a d>8 <f a d>8 r <f a d> \markdownright \mark \markup { \italic "fine" } <f a d>4\mark \markup { "D.C." } | }
	  }
	
	\repeat volta 2 { r1 \mark \markup { \italic "Drums" } | r1 | }
	

	\mark \default %C
	  <cis cis'>8 <d d'> <e e'>4 r2 | 
	  	r8 <fis a d>16 <fis a d>16 <fis a d>8 <fis a d>8 r <e gis d'> <e gis d'>4 | 
	  	r8 <e a cis>16 <e a cis>16 <e a cis>8 <e a cis>8 r <e a cis> <e a cis>4 | 
	  <cis cis'>8 <d d'> <e e'>4 r2 | 
	  	r8 <fis a d>16 <fis a d>16 <fis a d>8 <fis a d>8 r <e gis d'> <e gis d'>4 | 
	  	r8 <e a cis>16 <e a cis>16 <e a cis>8 <e a cis>8 r <e a cis> <e a cis>4 | 
	  \bar ".|" \markdownright \mark "D.C. al Fine" 
}
}


%part: bass
bass = {
	\relative c { \key d \minor

	\mark \default %A
	\repeat volta 2 {
	  d4 r c r | f r f r | g r g r | bes r bes r | 
	  g r g r | d r c r | f r a cis | d r d, r |
	}	
	
	\mark \default %B 
	\repeat volta 2 {
	  f r f r | g r g r |d r g r | d r g r | d r g r | }
	  \alternative {
		{ bes r bes r | g r g r | f r a cis | d r d, r | }
		{ bes'1 | r | g4 r g r | f r a cis | d r d, \markdownright \mark \markup { \italic "fine" } r\mark \markup { "D.C." } | }
	  }

	\repeat volta 2 { r1 \mark \markup { \italic "Drums" } | r1 | }

	\mark \default %C
	cis8 d e4 r2 | d4 r e r | a r a r | cis,8 d e4 a,8 a a4 |
	d r e r | a r a r | \bar ".|" \markdownright \mark "D.C. al Fine"
}
}

%part: hardbass
hardbass = {
	\relative c { \key d \minor

	\mark \default %A
	\repeat volta 2 {
	  d8. f16 r8 a c,8. e16 r8 g |
	 f,8. a16 r8 c f,4 fis |
	 g8. bes16 r8 d g,8. bes16 r8 d |
	 bes8. f16 r8 a bes8. f16 r8 a |
	 
	  g8. bes16 r8 d g,8. bes16 r8 d |
	 d8. f16 r8 a c,8. e16 r8 g |
	 f,8. a16 r8 c a4 cis |
	 d8. f16 r8 a d,8. f16 r8 a |
	
	}	
	
	\mark \default %B 
	\repeat volta 2 {
	  f,8. a16 r8 c f,8. a16 r8 c |
	 g8. bes16 r8 d g,8. bes16 r8 d |
	d8. f16 r8 a g,8. bes16 r8 d |
	 d8. f16 r8 a g,8. bes16 r8 d |
	 d8. f16 r8 a g,8. bes16 r8 d |
	 }
	  \alternative {
		{ bes8. f16 r8 a bes8. f16 r8 a |
	 g8. bes16 r8 d g,8. bes16 r8 d |
	 f,8. a16 r8 c a4 cis |
	 d8. f16 r8 a d,8. f16 r8 a |
	 }
		{ bes,8. f16 r8 a bes8. f16 r8 a |
	 g8 r r2. |
	 g8. bes16 r8 d g,8. bes16 r8 d |
	 f,8. a16 r8 c a4 cis |
	 d8. f16 r8 a d,8. f16 \markdownright \mark \markup { \italic "fine" } r8 a \mark \markup { "D.C." } |
	 }
	  }

	\repeat volta 2 { r1 \mark \markup { \italic "Drums" } |
	 r1 |
	 }

	\mark \default %C
	cis,8 d e4 r2 |
	 d8. fis16 r8 a e8. gis16 r8 b |
	 a,8. cis16 r8 e a,8. cis16 r8 e |
	 cis8 d e4 a,8 a a4 |
	
	d8. fis16 r8 a e8. gis16 r8 b |
	 a,8. cis16 r8 e a,8. cis16 r8 e | \bar ".|" \markdownright \mark "D.C. al Fine"
}
}

%part: changes
changes = \chordmode {
	%A
	d2:m c | f1 | g:m | bes | g:m | d2:m c | f a:7 | d1:m |

	%B
	f1 | g:m | d2:m g:m | d:m g:m | d:m g:m | 
	   bes1 | g:m | f2 a:7 | d1:m | 
	   bes1 | R | g:m | f2 a:7 | d1:m | 
	 
	%drums
	R | R |
	%C	
	R | d2 e:7 | a1 | R | d2 e:7 | a1 |
 }

%layout
#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 17)
%{
\book { 
  \header { poet = "Melody - C" }
	\paper { page-count = 1 } 
    \score {

	<<
        \new Staff {
		\melody
	}
	>>
    }
}
\book { 
  \header { poet = "Melody - Bb" }
	\paper { page-count = 1 } 
    \score { \transpose c d
	<<
        \new Staff {
		\melody
	}
	>>
    }
}

\book { 
  \header { poet = "Melody - Eb" }
	\paper { page-count = 1 } 
    \score { \transpose c a,
	<<
        \new Staff {
		\melody
	}
	>>
    }
}


%}
\book { 
  \header { poet = "Tenor - C" }
	\paper { page-count = 1 } 
    \score {
	<<
        \new Staff { \clef bass
		\tenor
	}
	>>
    }
}
%{
\book { 
  \header { poet = "Tenor - Bb" }
	\paper { page-count = 1 } 
    \score { \transpose c d
	<<
        \new Staff {
		\tenor
	}
	>>
    }
}

\book { 
  \header { poet = "Tenor - Eb" }
	\paper { page-count = 1 } 
    \score { \transpose c a
	<<
        \new Staff {
		\tenor
	}
	>>
    }
}

\book { 
  \header { poet = "Bass - C" }
	\paper { page-count = 1 } 
    \score {
	<<
	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \clef bass
		\bass
	}
	>>
    }
}

\book { 
  \header { poet = "Bass - Eb" }
	\paper { page-count = 1 } 
    \score { \transpose c a'
	<<
	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \clef treble
		\bass
	}
	>>
    }
}
%}
%{

\book { 
  \header { poet = "hardbass - C" }
  \paper { #(set-paper-size "a4") }
    \score {
	<<
	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \clef bass
		\hardbass
	}
	>>
    }
}

%}

\book { \header { poet = "Score" }
  \paper { #(set-paper-size "a4") 
  			page-count = "unset" } 
    \score { 
      << 
	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { 
		\melody
	}
	\new Staff { \clef bass
		\tenor
	}
	\new Staff { \clef bass
		\bass
	}
	\new Staff { \clef bass
		\hardbass
	}
      >> 
  } 
}


%{
\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 120 
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"alto sax"
		\melody
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trumpet"
		\tenor
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"tuba"
		\bass
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"tuba"
		\hardbass
	}
      >> 
    \midi { }
  } 
}
%}
