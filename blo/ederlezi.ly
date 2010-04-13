\version "2.12.1"

\header {
	title = "Ederlezi"
	composer = "Trad. Roma"
	copyright = "3/10/10"
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
	\relative c' { \key d \minor
	\mark \default %A
	r4 a'8 bes c a~ a g | g a a4 g16 f g8 f4 |
	r4 <f a>8 <g bes> <g bes>4 <g bes>8 <e g> | 
	<f a>4. <g bes>8 <e g>16 <d f> <e g>8 f4 |
	r4 <e a>8 <g bes> <g bes>4 <g bes>8 <e g> | 
	<f a>4. <g bes>8 \times 2/3 { <e g>8 <d f> <e g> } <d f>4
	r4 <f a>8 <e g> <g bes> <g bes> <e g>4 |
	<d f>8 <d f> <d f>2 r4 | \bar "||"

	r4 <f a>8 <g bes> <a c> <g bes> <f a> <e g> |
	<e g> <f a>~ <f a>4 \times 2/3 { <e g>8 <d f> <e g> } <d f>4 |
	r4 <f a>8 <g bes> <g bes>4 <g bes>8 <e g> |
	<f a>4. <g bes>8 <e g>16 <d f> <e g>8 <d f>4 |
	r4 <f a>8 <g bes> <g bes>4 <g bes>8 <e g> |
	<f a>4. <g bes>8 <e g>16 <d f> <e g>8  <d f>4 |
	r4 <f a>8 <e g> <g bes> <g bes> <e g>4 | <d f>8 <d f>~ <d f>2 r4 |
	\bar "||"

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
	  r4 <d f>8 <d e> <cis a'> <cis a'> <cis e>4 | d8 d~ d2 r4_\markup { \italic "fine" }  | 
	  \bar "||" }
	}

	\mark \default %C 
	r1 | r1 | <a' a'>8 <g g'> <g g'> <fis fis'> <fis fis'> <e e'> <e e'> <d d'> | 
	<cis cis'> <d d'> <e e'> r r2 | r1 |
	<a a'>8 <g g'> <g g'> <fis fis'> <fis fis'> <e e'> <e e'> <d d'> | 	
	<cis cis'>1 | r1 | \bar ".|" \markdownright \mark "D.C. al Fine"

}
}
%part: tenor
tenor = {
	\relative c { \key d \minor
	\mark \default %A
	<f a>1~ | <f a> | <f a>~ | <f a> | <f a>~ | <f a> | <f a>~ | <f a> | \bar "||"

	r4 <f a> r <e g> | r <f a> r <f a> | r <g bes> r <g bes> | r <f bes> r <f bes> | 
	r <g bes> r <g bes> | r <f a> r <e g> | r <f a> r <e g> | r <f a> r <f a> |

	\mark \default %B
	\repeat volta 2 {
	r <f a> r <f a> | r <g bes> r <g bes> | 
	r <f a> r <g bes> | r <f a> r <g bes> | r <f a> r <g bes> | }
	\alternative {
	  { r <f bes> r <f bes> | r <g bes> r <g bes> | r <f a> r <e g> | r <f a> r <f a> | }
	  { <f bes>1 | r | r4 <g bes> r <g bes> | r <f a> r <e g> | r <f a> r <f a>_\markup { \italic "fine" } | \bar "||" }
	}
	
	\mark \default %C
	r <f a> r <f a> | <cis cis'>8 <d d'> <e e'>4 r2 | r4 <a d> r <gis d'> | r <a cis> r <a cis> | <cis, cis'>8 <d d'> <e e'>4 r2 | r4 <a d> r <gis d'> | r <a cis> r <a cis> | <f a>1~ | \bar ".|" \markdownright \mark "D.C. al Fine"
	
}
}


%part: bass
bass = {
	\relative c { \key d \minor
	\mark \default %A
	d,1~ | d | d~ | d | d~ | d | d~ | d | \bar "||"
	
	d4 r c r | f r f r | g r g r | bes r bes r | 
	g r g r | d r c r | f r a cis | d r d, r |
	
	\mark \default %B 
	\repeat volta 2 {
	f r f r | g r g r |d r g r | d r g r | d r g r | }
	\alternative {
	  { bes r bes r | g r g r | f r a cis | d r d, r | }
	  { bes'1 | r | g4 r g r | f r a cis | d r d, r_\markup { \italic "fine" } | \bar "||" }
	}

	\mark \default %C
	d r d r | cis8 d e4 r2 | d4 r e r | a r a r | cis,8 d e4 a,8 a a4 |
	d r e r | a r a r | d,1~ | \bar ".|" \markdownright \mark "D.C. al Fine"
}
}

%part: changes
changes = \chordmode {
	%A
	d:m1 | d:m | d:m | d:m | d:m | d:m | d:m | d:m | 

	d:m2 c | f1 | g:m | bes | g:m | d:m2 c | f a:7 | d:m1 |

	%B
	f1 | g:m | d:m2 g:m | d:m g:m | d:m g:m | 
	   bes1 | g:m | f2 a:7 | d:m1 | 
	   bes1 | R | g:m | f2 a:7 | d:m1 | 
	 

	%C	
	r1 | r1 | d2 e:7 | a1 | a1 | d2 e:7 | a1 | d:m |
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
