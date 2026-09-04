\version "2.12.3"

\include "form.ily"

performanceForm = "Vamp, Head, Bridge, Hits, Head, Solos, Bridge, Head, Bridge (x2)"

\header {
	title = "J.J.D."
	composer = "Fela Kuti"
	tagline = "2/17/15" %date of latest edits
	copyright = \markup { \bold { "Default Form:" } \performanceForm }
	}
%description: Another song by <a href="http://www.fela.net/">Fela Kuti</a> (see above), released as a 22-minute single in 1977.

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% Reusable melody sections
melodysectionHead = \relative c' {
	\repeat volta 2 {
		ces'16 bes aes bes~ bes2~ bes8 f | aes aes r4 c8 ees c ees |
		c8 bes16 aes f8 ees~ ees4~ ees8 f | aes aes r4 ees8 f aes bes |
	}
}

melodysectionBridge = \relative c'' {
	\repeat volta 2 {
		<<
			{ ees8 [r16 ees] r8 f r2 | c8 [r16 c] r8 ees r2 | bes8 [r16 bes] r8 c r4 aes8 f~ | }
			\\
			{ <f, c'>1 | <g d'> | <aes ees'> | }
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
			r4 r8 <bes' d> |
		}
	}
}

melodysectionHits = \relative c'' {
	\repeat volta 2 {
		<aes c>8 r r2. | r2. r8 <bes d> |
		<aes c>8 r r2. | r2. r8 <bes d> |
	}
}

% The guitar plays the same two-bar riff throughout. Section 2 needs a small
% wrapper so its identical final bar appears under both written endings.
guitarFirstBar = \relative c' { f8. aes16~ aes8 c, ees-. ees-. ees4-. | }
guitarSecondBar = \relative c' { f8. aes16~ aes8 ees f-. f-. f4-. | }
guitarRiff = { \repeat unfold 2 { \guitarFirstBar \guitarSecondBar } }

guitarSection = { \repeat volta 2 { \guitarRiff } }

guitarSectionWithEndings = {
	\repeat volta 2 {
		\guitarFirstBar
		\guitarSecondBar
		\guitarFirstBar
	}
	\alternative {
		{ \guitarSecondBar }
		{ \guitarSecondBar }
	}
}

guitarSoloHead = { \repeat volta 4 { \guitarRiff } }

% Reusable bass sections
bassRiff = \relative c, {
	f8 f f aes r4. ees8 | f f f r c' bes aes bes |
	f8 f f aes r4. ees8 | f f f r ees' d bes aes |
}

bassSection = {
	\repeat volta 2 { \bassRiff }
}

basssectionBridge = \relative c, {
	\repeat volta 2 {
		f1 | g | aes |
	}
	\alternative {
		{ bes | }
		{ bes | }
	}
}

bassSoloHead = { \repeat volta 4 { \bassRiff } }

% Bass drum enters with the full rhythm section at C and continues throughout.
% One bar: dotted eighth, sixteenth, eighth rest, eighth note, half rest.
bassDrumPattern = \drummode { bd8. bd16 r8 bd8 r2 | }

% One bar of steady quarter-note cowbell.
cowbellPattern = \drummode { cb4 cb cb cb | }

cowbellRepeatedSection = \drummode {
	\repeat volta 2 { \repeat unfold 4 { \cowbellPattern } }
}

cowbellsectionBridge = \drummode {
	\repeat volta 2 { \repeat unfold 3 { \cowbellPattern } }
	\alternative {
		{ \cowbellPattern }
		{ \cowbellPattern }
	}
}

cowbellSoloHead = \drummode {
	\repeat volta 4 { \repeat unfold 4 { \cowbellPattern } }
}

% Steady quarter-note side-stick clicks keep time before the bass drum enters.
bassDrumClickPattern = \drummode { ss4 ss ss ss | }

bassDrumClickSection = \drummode {
	\repeat volta 2 { \repeat unfold 4 { \bassDrumClickPattern } }
}

bassDrumRepeatedSection = \drummode {
	\repeat volta 2 { \repeat unfold 4 { \bassDrumPattern } }
}

bassDrumsectionBridge = \drummode {
	\repeat volta 2 { \repeat unfold 3 { \bassDrumPattern } }
	\alternative {
		{ \bassDrumPattern }
		{ \bassDrumPattern }
	}
}

bassDrumSoloHead = \drummode {
	\repeat volta 4 { \repeat unfold 4 { \bassDrumPattern } }
}

% Silent counterparts preserve each section's repeat structure when an
% instrument is tacet.
silentRepeatedSection = { \repeat volta 2 { R1*4 } }
silentSectionWithEndings = {
	\repeat volta 2 { R1*3 }
	\alternative {
		{ R1 }
		{ R1 }
	}
}
silentSoloHead = { \repeat volta 4 { R1*4 } }

% Invisible timing for score-wide labels and layout breaks.
formRepeatedSection = { \repeat volta 2 { s1*4 } }
formSectionBridge = {
	\repeat volta 2 { s1*3 }
	\alternative {
		{ s1 }
		{ s1 }
	}
}
formSoloHead = { \repeat volta 4 { s1*4 } }

% Each section owns its description, form timing, and instrument parts.
#(define section-definitions
	`((tenorVamp
		(description . "Tenor only")
		(guide . ,#{ \formRepeatedSection #})
		(melody . ,#{ \silentRepeatedSection #})
		(guitar . ,#{ \guitarSection #})
		(bass . ,#{ \silentRepeatedSection #})
		(bassDrum . ,#{ \bassDrumClickSection #})
		(cowbell . ,#{ \silentRepeatedSection #}))
	  (bassTenorVamp
		(description . "Bass + Tenor")
		(guide . ,#{ \formRepeatedSection #})
		(melody . ,#{ \silentRepeatedSection #})
		(guitar . ,#{ \guitarSection #})
		(bass . ,#{ \bassSection #})
		(bassDrum . ,#{ \bassDrumClickSection #})
		(cowbell . ,#{ \silentRepeatedSection #}))
	  (drumsBassTenorVamp
		(description . "Drums + Bass + Tenor")
		(guide . ,#{ \formRepeatedSection #})
		(melody . ,#{ \silentRepeatedSection #})
		(guitar . ,#{ \guitarSection #})
		(bass . ,#{ \bassSection #})
		(bassDrum . ,#{ \bassDrumRepeatedSection #})
		(cowbell . ,#{ \cowbellRepeatedSection #}))
	  (sectionHead
		(description . "Head")
		(lyre-label . "1")
		(guide . ,#{ \formRepeatedSection #})
		(melody . ,#{ \melodysectionHead #})
		(guitar . ,#{ \guitarSection #})
		(bass . ,#{ \bassSection #})
		(bassDrum . ,#{ \bassDrumRepeatedSection #})
		(cowbell . ,#{ \cowbellRepeatedSection #}))
	  (sectionBridge
		(description . "Bridge")
		(lyre-label . "2")
		(guide . ,#{ \formSectionBridge #})
		(melody . ,#{ \melodysectionBridge #})
		(guitar . ,#{ \guitarSectionWithEndings #})
		(bass . ,#{ \basssectionBridge #})
		(bassDrum . ,#{ \bassDrumsectionBridge #})
		(cowbell . ,#{ \cowbellsectionBridge #}))
	  (sectionHits
		(description . "Hits")
		(lyre-label . "3")
		(guide . ,#{ \formRepeatedSection #})
		(melody . ,#{ \melodysectionHits #})
		(guitar . ,#{ \guitarSection #})
		(bass . ,#{ \bassSection #})
		(bassDrum . ,#{ \bassDrumRepeatedSection #})
		(cowbell . ,#{ \cowbellRepeatedSection #}))
	  (soloHead
		(guide . ,#{ \formSoloHead #})
		(melody . ,#{ \silentSoloHead #})
		(guitar . ,#{ \guitarSoloHead #})
		(bass . ,#{ \bassSoloHead #})
		(bassDrum . ,#{ \bassDrumSoloHead #})
		(cowbell . ,#{ \cowbellSoloHead #}))
	  (soloBridge
		(guide . ,#{ \formSectionBridge #})
		(melody . ,#{ \silentSectionWithEndings #})
		(guitar . ,#{ \guitarSectionWithEndings #})
		(bass . ,#{ \basssectionBridge #})
		(bassDrum . ,#{ \bassDrumsectionBridge #})
		(cowbell . ,#{ \cowbellsectionBridge #}))))

% The arrangement order is authored only here. Occurrence descriptions travel
% with repeated solo sections while their A-N labels are generated by position.
#(define full-form
	`(tenorVamp bassTenorVamp drumsBassTenorVamp
	  sectionHead sectionBridge sectionHits
	  sectionHead sectionBridge
	  (soloHead (description . "Soloist 1 over Head (2x)"))
	  (soloBridge (description . "Soloist 1 over Bridge"))
	  (soloHead (description . "Soloist 2 over Head (2x)"))
	  (soloBridge (description . "Soloist 2 over Bridge"))
	  sectionHead sectionBridge))

#(define lyre-form '(sectionHead sectionBridge sectionHits))

#(define (alphabetic-form-label definitions entry index)
	(let* ((section-name (form-entry-name entry))
		   (label (string (integer->char (+ (char->integer #\A) index))))
		   (description
			(form-entry-section-property definitions entry 'description)))
		#{ \mark \markup { \box \bold #label \italic #description } #}))

#(define (numeric-form-label definitions entry index)
	(let* ((section-name (form-entry-name entry))
		   (label (section-property definitions section-name 'lyre-label)))
		#{ \mark \markup \box \bold #label #}))

form = {
	#(assemble-form-guide section-definitions full-form alphabetic-form-label)
}

lyreForm = {
	#(assemble-form-guide section-definitions lyre-form numeric-form-label)
}

% Named final parts retained for pondscum's %part convention.
%part: melody
melody = {
	\key f \minor #(assemble-form section-definitions 'melody full-form)
}

%part: guitar
guitar = {
	\key f \minor #(assemble-form section-definitions 'guitar full-form)
}

%part: bass
bass = {
	\key f \minor #(assemble-form section-definitions 'bass full-form)
}

%part: bassDrum
bassDrum = \drummode {
	#(assemble-form section-definitions 'bassDrum full-form)
}

%part: cowbell
cowbell = \drummode {
	#(assemble-form section-definitions 'cowbell full-form)
}

melodyLyre = {
	\key f \minor #(assemble-form section-definitions 'melody lyre-form)
}
guitarLyre = {
	\key f \minor #(assemble-form section-definitions 'guitar lyre-form)
}
bassLyre = {
	\key f \minor #(assemble-form section-definitions 'bass lyre-form)
}
bassDrumLyre = \drummode {
	#(assemble-form section-definitions 'bassDrum lyre-form)
}
cowbellLyre = \drummode {
	#(assemble-form section-definitions 'cowbell lyre-form)
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
        \new Staff { << \form { \transpose bes c \melody } >> }
	>>
    }
%    \words
}

\book { 
  \header { poet = "Guitar - Bb" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { << \form { \transpose bes c' \guitar } >> }
	>>
    }
%    \words
}
\book { 
  \header { poet = "Melody - Eb" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { << \form { \transpose ees c \melody } >> }
	>>
    }
%    \words
}

\book { 
  \header { poet = "Guitar - Eb" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { << \form { \transpose ees c \guitar } >> }
	>>
    }
%    \words
}

\book { 
  \header { poet = "Bass - Eb" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { << \form { \clef treble \transpose ees c'' \bass } >> }
	>>
    }
%    \words
}


\book { \header { poet = "Score" }
  \paper { #(set-paper-size "letter") }
    \score { 
      << 
%	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { << \form { \melody } >> }
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



\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 120 
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
