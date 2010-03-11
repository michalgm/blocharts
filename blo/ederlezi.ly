\version "2.12.1"

\header {
	title = "Ederlezi"
	composer = "Trad. Roma"
	copyright = "date of latest edits"
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
	\relative c' { \key d \minor
	\mark \default
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

	\mark \default
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

	\mark \default 
	r1 | r1 | <a' a'>8 <g g'> <g g'> <fis fis'> <fis fis'> <e e'> <e e'> <d d'> | 
	<cis cis'> <d d'> <e e'> r r2 | r1 |
	<a a'>8 <g g'> <g g'> <fis fis'> <fis fis'> <e e'> <e e'> <d d'> | 	
	<cis cis'>1 | r1 | \bar ".|" \markdownright \mark "D.C. al Fine"

}
}

%part: bass
bass = {
	\relative c { \key d \minor
	\mark \default
	d,1~ | d1 | d1~ | d1 | d1~ | d1 | d1~ | d1 | \bar "||"
	
	d4 r c r | f r f r | g r g r | bes r bes r | 
	g r g r | d r c r | f r a cis | d r d, r |
	}
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
