\version "2.12.3"

\header {
	title = "Roma Drums"
	composer = ""
	tagline = "7/13/10" %date of latest edits
	copyright = \markup {\bold ""} %form
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }

%part: drumsup
drumsup = \drummode {

	\mark "Gelem Gelem"
	\repeat volta 2 {
		\bar "|:" ss4-> \parenthesize ss8 \parenthesize ss 
		ss4-> \parenthesize ss8 \parenthesize ss |
		ss4-> \parenthesize ss8 \parenthesize ss 
		ss4-> \parenthesize ss8 \parenthesize ss |
		}
	\break

	\mark "Na Borusa"
	\repeat volta 2 {
		ss4-> ss8 ss-> r ss ss ss |
		ss4-> ss8 ss-> r ss r ss |
	}
	\break

	\mark "Ederlezi"
	s1
	\repeat volta 2 {
		r4 ss8 ss-> r ss ss4-> |
		ss8 ss-> r ss ss4-> r |
	}
}

%part: drumsdown
drumsdown = \drummode {

	\mark "Gelem Gelem"
	\repeat volta 2 {
		bd4 r8 bd r4 bd | bd4 r8 bd r4 bd | 
		}
	\break


	\mark "Na Borusa"
	\repeat volta 2 {
		bd4 r8 bd r2 | bd4 r4 r4 bd4 |
		}
	\break

	\mark "Ederlezi"
	s2 bd4 bd |
	\repeat volta 2 {
		bd r r bd | r r bd bd |
	}
}

%layout
#(set-default-paper-size "a5" 'landscape)

\book { 
  \header { }
    \score {
        \new DrumStaff \with {
		  \consists "Parenthesis_engraver"
		  }
			<<
			
				\new DrumVoice { \voiceOne \drumsup } 
				\new DrumVoice { \voiceTwo \drumsdown } 
			>>
\layout { indent = #0 line-width = #200 ragged-right = ##t }

		}
    }

