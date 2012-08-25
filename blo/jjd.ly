\version "2.12.3"

\header {
	title = "J.J.D."
	composer = "Fela Kuti"
	tagline = "4/19/12" %date of latest edits
	copyright = \markup {\bold ""} %form
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
	\relative c' { \key f \minor

	\mark \default
	\repeat volta 2 {
		ces'16 bes aes bes~ bes2~ bes8 f | aes aes r4 c8 ees c ees |
		c8 bes16 aes f8 ees~ ees4~ ees8 f | aes aes r4 ees8 f aes bes | \break
		}

	\mark \default
	\repeat volta 2 {
		<<
		{ ees8 [r16 ees] r8 f r2 | c8 [r16 c] r8 ees r2 | bes8 [r16 bes] r8 c r4 aes8 f~ |  }
		\\
		{ <f, c'>1 | <g d'> | <aes ees'> |  }
		>>
	}
		\alternative {
		 { 
			<< 
			{ f'2 f8 aes bes c | }
			\\
			{ <bes, f'>1 | }
			>>
		}
		 { 
			<< 
			{ f'2 }
			\\
			{ bes,2 }
			>>
		r4 r8 <bes' d>| \break
		}
	}

	\mark \default
	\repeat volta 2 {
		<aes c>8 r r2. | r2. r8 <bes d> |	
		<aes c>8 r r2. | r2. r8 <bes d> |	
	}
		 
	}
}

%part: guitar
guitar = {
	\relative c' { \key f \minor

	\mark \default
	\repeat volta 2 {
		f8. aes16~ aes8 c, ees-. ees-. ees4-.  | f8. aes16~ aes8 ees f-. f-. f4-. |
		f8. aes16~ aes8 c, ees-. ees-. ees4-.  | f8. aes16~ aes8 ees f-. f-. f4-. | \break
		}
	
	\mark \default
	\repeat volta 2 {
		f8. aes16~ aes8 c, ees-. ees-. ees4-.  | f8. aes16~ aes8 ees f-. f-. f4-. |
		f8. aes16~ aes8 c, ees-. ees-. ees4-.  | 
		}
		\alternative {
			{ f8. aes16~ aes8 ees f-. f-. f4-. |}
			{ f8. aes16~ aes8 ees f-. f-. f4-. | \break}
		}	

	\mark \default
	\repeat volta 2 {
		f8. aes16~ aes8 c, ees-. ees-. ees4-.  | f8. aes16~ aes8 ees f-. f-. f4-. |
		f8. aes16~ aes8 c, ees-. ees-. ees4-.  | f8. aes16~ aes8 ees f-. f-. f4-. |
		}	
	}
}

%part: bass
bass = {
	\relative c { \key f \minor

	\mark \default
	\repeat volta 2 {
		f,8 f f aes r4. ees8 | f f f r c' bes aes bes | 
		f8 f f aes r4. ees8 | f f f r ees' d bes aes | \break 
		}

	\mark \default
	\repeat volta 2 {
		f1 | g | aes | 
		}
		\alternative {
			{ bes | }
			{ bes |  \break}
		}

	\mark \default
	\repeat volta 2 {
		f8 f f aes r4. ees8 | f f f r c' bes aes bes | 
		f8 f f aes r4. ees8 | f f f r ees' d bes aes | 
		}

	}
}

%part: words
words = \markup { }

%part: changes
changes = \chordmode { }

%layout
%#(set-default-paper-size "a5" 'landscape)

\book { 
  \header { poet = "Melody - Bb" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \transpose c d
		\melody
	}
	>>
    }
%    \words
}

\book { 
  \header { poet = "Guitar - Bb" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \transpose c d
		\guitar
	}
	>>
    }
%    \words
}
\book { 
  \header { poet = "Melody - Eb" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \transpose c a
		\melody
	}
	>>
    }
%    \words
}

\book { 
  \header { poet = "Guitar - Eb" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \transpose c a
		\guitar
	}
	>>
    }
%    \words
}

\book { 
  \header { poet = "Bass - Eb" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \clef treble \transpose c a'
		\bass
	}
	>>
    }
%    \words
}

%{
\book { \header { poet = "Score" }
  \paper { #(set-paper-size "letter") }
    \score { 
      << 
%	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { 
		\melody
	}
	\new Staff { 
		\guitar
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
      << \tempo 4 = 144 
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trumpet"
		\melody
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"alto sax"
		\guitar
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"tuba"
		\bass
	}
      >> 
    \midi { }
  } 
}
%}
