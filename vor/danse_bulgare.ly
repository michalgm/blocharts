\version "2.12.3"

\header {
	title = "Danse Bulgare"
	composer = "Gueorgui Kornazov"
	tagline = "" %date of latest edits
	copyright = \markup {\bold "A-A'-B A'-A'-B-B' C(open) D(open) D'"} %form
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
	\relative c' { \time 7/8 \key d \minor \set beatGrouping = #'(2 2 3)

	\mark \default %A

	\repeat volta 2 {
	cis'4 cis8 e d4 cis8 | d cis bes a a4 g8 | }
	\alternative {
		{ cis2~ cis4.~ | cis2~ cis4. | }
		{ a2~ a4.~ | a2~ a4. | \break }
	}

	\mark \markup { \abs-fontsize #15 \bold { A' } } %A'
	\repeat volta 2 {
	<cis e>4 <cis e>8 <e g> <d f>4 <cis e>8 | <d f> <cis e> <bes d> <a cis> <a cis>4 <g bes>8 | 
	}
	\alternative {
		{ <cis e>2~ <cis e>4.~ | <cis e>2~ <cis e>4. | }
		{ <a cis>2~ <a cis>4.~ | <a cis>2~ <a cis>4. | \break }
	}

	\mark \default %B
	\repeat volta 2 {
	r4 <e' g>8 <f a> <f a> <f a> <e g> | <g bes> <f a> <f a> <e g> <d f>4. |
	<cis e>8 <e g> <d f> <cis e> <bes d> <a cis> <g bes> | }
	\alternative {
		{ <a cis>4 <a cis>8 <bes d> <cis e> <d f> <e g> | }
		{ a,2~ a4. | \break }
	}

	\mark \markup { \abs-fontsize #15 \bold { B' } } %B'
	\repeat volta 2 {
	r4 <e' g>8 <f a> <f a> <f a> <e g> | <g bes> <f a> <f a> <e g> <cis e>4. |
	<g bes>2 <bes d>4. | <a cis>2~ <a cis>4. | \break }

	\mark \default %C
	\repeat volta 4 {
	d2~^\markup { \tiny "Open repeat. Bkgds become rhythmic.  Follow Mike."} d4. | b2~ b4. | bes2~ bes4. | a2~ a4. | \break }

	\mark \default %D
	\repeat volta 2 {
	r2 <cis e>4 <d f>8 | <e g>4 <d f>8 <cis e> <bes d>4. | }
	\alternative {
		{ <cis e>8 <e g> <d f> <cis e> <cis e> <d f> <e g> | <e g>4 <d f>8 <cis e> <bes d>4. |}
		{ <cis e>8 <e g> <d f> <cis e> <e g> <d f> <cis e> | <a d>2 <a d>4. | \break }
	}

	\mark \markup { \abs-fontsize #15 \bold { D' } } %D'
	\repeat volta 2 {
	r2 <cis e>4 <d f>8 | <e g>4 <d f>8 <cis e> <bes d>4. | }
	\alternative {
		{ <cis e>8 <e g> <d f> <cis e> <cis e> <d f> <e g> | <e g>4 <d f>8 <cis e> <bes d>4. |}
		{ <cis e>8 <e g> <d f> <cis e> <e g> <d f> <cis e> | <a d>2~ <a d>4. \bar "||" | \break }
	}

	}
}

%part: tenor 
tenor = {
	\relative c' { \time 7/8 \key d \minor \set beatGrouping = #'(2 2 3)

	\mark \default %A 
	\repeat volta 2 {
		a'2~ a4.~ | a2~ a4 e8 |
		}
		\alternative {
			{ cis'2~ cis4.~ | cis2~ cis4.~ | }
			{ a2~ a4.~ | a2~ a4. | \break }
		}

	\mark \markup { \abs-fontsize #15 \bold { A' } } %A'
	\repeat volta 2 {
		r4 a8 a a a a | a4 <a cis> a e8 | 
		}
		\alternative {
			{ a4 a a e8 | a4 a a4. | }
			{ a4 a a e8 | a2~ a4. | \break }
		}

	\mark \default %B 
	\repeat volta 2 {
		a2~ a4. | <g bes>2~ <g bes>4. | <e a>2 <f bes>4. |
		}
		\alternative {
			{ <e cis'>2~ <e cis'>4. }
			{ a2~ a4. | \break }
		}
		
	\mark \markup { \abs-fontsize #15 \bold { B' } } %B'
	\repeat volta 2 {
		a2~ a4. | <g bes>2~ <g bes>4. | d'2~ d4. | <a cis>2~ <a cis>4. | \break
		}

	\mark \default %C 
	\repeat volta 4 {
	<d f>2~^\markup { \tiny "Open repeat. Bkgds become rhythmic.  Follow Mike."} <d f>4. | <b d>2~ <b d>4. | <bes d g>2~ <bes d g>4. | <f a a'>2~ <f a a'>4. | \break }

	\mark \default %D 
		\repeat volta 2 {
		d'4 d8 d d4 d8 | b4 b8 b b4 b8 | 
		}
		\alternative {
			{ bes4 bes8 bes bes4 bes8 | a4 a a8 bes cis | }
			{ bes4 bes8 bes bes4 bes8 | a2~ a4 cis8 | \break }
		}
		
	\mark \markup { \abs-fontsize #15 \bold { A' } } %D'
		\repeat volta 2 {
		cis4 cis8 cis cis4 cis8 | d4 d8 d d4 d8 | 
		}
		\alternative {
			{ cis4 cis8 cis cis4 cis8 | a4 a8 a g4 d'8 | }
			{ cis4 cis8 cis cis4 cis8 | a4 a8 a a4. | \break }
		}
	}
}

%part: words
words = \markup { }

%part: changes
changes = \chordmode { 
%A
a2.. | a | a | a | a | a |
%A'
a | a | a | a | a | a |
%B 
a | g:m | a | a | a |
%B'
a | g:m | g2:m bes4. | a2.. |
%C
bes | g | g:m | d:m |
%D
bes | g | g:m | d:m | g:m | d:m |
%D'
a | bes | a | a | a | a | 


}

%layout


\book { 
  \header { poet = "Melody - C" }
    \score {
	<<
	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff {
		\melody
	}
	>>
    }
%    \words
}


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
	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { 
		\melody
	}
	\new Staff { 
		\tenor
	}
      >> 
  } 
%    \words
}
%}


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
