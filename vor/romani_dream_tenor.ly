\version "2.12.3"

\header {
	title = "Romani Dream - tenor"
	composer = ""
	tagline = "2/25/11" %date of latest edits
	copyright = \markup {\bold ""} %form
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: tenor
tenor = {
	\relative c {
	\repeat volta 2 {
		d4 r8 fis8 r4 a4 | r8 c8 r8 d8 es8  es8  d4 | 
		d,8  d8 d8 fis8  fis8  fis8 a8 a8  | a8  d8 es8 c8  es8  es8  d4 |
	}

	\mark \default %A
	\repeat volta 2 {
		d4 r8 d r4 d | r8 d r d ees4-- d | 
		d4 r8 d r4 d | r8 fis ees d d c d4 | \break 
	}

	\mark \default %B
	\repeat volta 2 {
		d8 r8 r2. | d1 | ees | c2 ees4 d~ |
		d8 r8 r2. | d1 | c | a2 ees'4 d~ | \break 
	}

	\mark \default %C
	\repeat volta 2 {
		r1 | r1 | d1\< | ees4\f r r2 |
		<g, bes>4.^\markup {\tiny "2nd x whole notes" } <g bes>8 r <g bes> <g bes> <g bes> | <fis a>4. <fis a>8 r <fis a> <fis a> <fis a> |
		<ees g>4. <d a'>8 <ees bes'> <d a'> <ees c'> <fis cis'> | <d d'>4 r r2 | \break 
	}

	\mark \default %D
	\repeat volta 2 {
		<g bes>1 | <fis a> |
		<ees g>4. <d a'>8 <ees bes'> <d a'> <ees c'> <fis cis'> | <d d'>4 r r2 | \break 
	}

	\mark "Solos"
	\repeat volta 2 {
		d'4 d8 d c4 c8 c | r ees fis ees d d d d 
	}
	\alternative {
		{ d8 d d d c4 c8 c | r ees fis ees d d d4 | }
		{ d8 d d d c4 c8 c | r ees fis ees d d d  d | \break }
	}

	\mark \default %E
	r1^\markup { \tiny "long tones with hits - we'll get it off the recording" } | \break

	\mark \default %F
	r1^\markup { \tiny "long tones with response lines - we'll get it off the recording" } | \break

	\mark \default %G
	r1^\markup { \tiny "ummm . . .  - we'll get it off the recording" } | \break



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
%}


\book { \header { poet = "Score" }
  \paper { #(set-paper-size "letter") }
    \score { 
      << 
        \tempo 4=120
%	\new ChordNames { \set chordChanges = ##t \changes }
        \transpose c a 
	\new Staff { \clef treble
		\tenor
	}
      >> 
  } 
%    \words
}



\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 160 
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"brass section"
		\tenor
	}
      >> 
    \midi { }
  } 
}

