\version "2.12.3"

\header {
	title = "Kalabashki Cocek - tenor"
	composer = "?"
	tagline = "2/25/11" %date of latest edits
	copyright = \markup {\bold ""} %form
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces

%part: tenor
tenor = {
  \relative c'' {
        \mark "1"
        \repeat volta 2 {
                d4 d8 d r d d4 | d-. d-. e-- f-. |
        }
        \alternative {
          { d d8 d r d d4 | d8 d d d e4-- f-. | }
          { a,2 gis f d4 r4 | }
        }
      }
 }

 %part: tenortwo 
 tenortwo = {
   \relative c' {
     \mark "1"
     \repeat volta 2 {
       f4 f8 f r f f4 | f-. f-. gis-- a-. |
 
     }
     \alternative {
       { f f8 f r f f4 | f8 f f f gis4-- a-.| }
       { a2 gis a f4 r4| }
     }
   }
 }
 
  shared  = {
    \relative c' {
     \break
     \mark "2"
     \repeat volta 2 {
       r4 a'2 a8 a | r4 gis2 gis8 gis | 
       r4 f2 f8 f | a4 gis <f a> <d f>8 <d f> | 
     }
     
     \break
     \mark "3"
     \repeat volta 2 {
       d4 f gis a8 a | d,4 f gis a8 a | 
       d,4 f gis a8 a | a4 gis <f a> <d f>8 <d f> |
     }
   }
 }
 
 
%part: tenorthree
tenorthree = {
      \relative c' {
        \mark "1"
        \repeat volta 2 {
                a'4 a8 a r a a4 | a-. a-. cis-- d-. |
        }
        \alternative {
          { a a8 a r a a4 | a8 a a a cis4-- d-.| }
          { f,2 gis2 a d 4 r | }
        }
      }
 }
 %part: tenorcombo
tenorcombo = {
  \relative c' {
    \new Voice <<
    { \tenortwo } 
    {\tenor}
     {\tenorthree}
  >>
    \shared
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
        \
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
	\new Staff { \clef treble
            \tenorcombo 
	}

      >> 
  } 
%    \words
}


\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 200 
        \unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trombone"
		    \tenorthree
        }

      >> 
    \midi { }
  } 
}
