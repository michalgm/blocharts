\version "2.12.1"

\header {
	title = "St. James Infirmary Blues"
	composer = ""
	copyright = "5/6/10" %date of latest edits
	}

%description:American folksong of unclear origin, made famous by a 1928 recording by <a href="http://en.wikipedia.org/wiki/Louis_Armstrong">Louis Armstrong</a>. (See <a href="http://en.wikipedia.org/wiki/St._James_Infirmary_Blues">wikipedia entry</a>.)

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
  \relative c'' { \key g \minor
  	\partial 4. g8 bes4 |
	\repeat volta 2 {
	  d d8 d c4. d8 | bes g~ g2 bes4 | d4. d8 g4 ees8 d~ | d2 r8 g, bes4 |
	  d4 d8 d c4. d8 | bes g~ g2 r8 g | bes4. g8 bes4 a8 g~ | 
	}
		\alternative {
		  { g2 r8 g bes4 | }
		  { g1 | \bar "|." }
		}
		
	}
}

%part: sax
sax = {
  \relative c' { \key g \minor
	\set countPercentRepeats = ##t 
	\set repeatCountVisibility = #(every-nth-repeat-count-visible 4)

  	\partial 4. r4. |
	\repeat volta 2 {
	  \repeat percent 6 { \repeat unfold 2 { \times 2/3 { d8 ees d } \times 2/3 { ees d ees } } | } 
	  des2 c | 
	}
	
		\alternative {
		  { \repeat unfold 2 { \times 2/3 { d8 ees d } \times 2/3 { ees d ees } } | }
		  { d1 | \bar "|." }
		}
	}
}

%part: lowbrass
lowbrass = {
  \relative c' { \key g \minor
  	\partial 4. r4. |
	\repeat volta 2 {
	  <g bes>2 <fis a> | <g bes> r | <g bes> <fis a> | <g bes> r |
	  <g bes> <g bes> | <g bes> <fis c'> | <g bes> <fis a> 
	}

		\alternative {
		  { <g bes> <fis c'> | }
		  { <g bes>1 | \bar "|." }
		}
	}
}

%part: bass
bass = {
  \relative c { \key g \minor
	\partial 4. r4. |
	\repeat volta 2 {
	  g2^\markup { \italic \small "walk" } d' | g,1 | g2 d' | g,1 |
	  g2 f | ees' d | ees d | 
	}

	  \alternative {
		{ g,2 d' | }
		{ g,1 | \bar "|." }
	  }
  }
}

%part: changes
changes = \chordmode {
s4.
g2:m d:7 | g1:m | g2:m d:7 | g1:m |
g2:m g:m7 | c:m7 d:7 | ees:7 d:7 | g:m d:7 | g:m1 |

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
