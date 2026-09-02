\version "2.12.3"

\header {
	title = "J.J.D."
	composer = "Fela Kuti"
	tagline = "2/17/15" %date of latest edits
	copyright = \markup {\bold ""} %form
	}
%description: Another song by <a href="http://www.fela.net/">Fela Kuti</a> (see above), released as a 22-minute single in 1977.

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% Reusable melody sections
melodySectionOne = \relative c' {
	\repeat volta 2 {
		ces'16 bes aes bes~ bes2~ bes8 f | aes aes r4 c8 ees c ees |
		c8 bes16 aes f8 ees~ ees4~ ees8 f | aes aes r4 ees8 f aes bes |
	}
}

melodySectionTwo = \relative c'' {
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

melodySectionThree = \relative c'' {
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

bassSectionTwo = \relative c, {
	\repeat volta 2 {
		f1 | g | aes |
	}
	\alternative {
		{ bes | }
		{ bes | }
	}
}

bassSoloHead = { \repeat volta 4 { \bassRiff } }

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

% Score-wide section labels and layout breaks. Pondscum includes this once in
% the full score and alongside the music in each extracted part.
roadmapRepeatedSection = { \repeat volta 2 { s1*4 } }
roadmapSectionTwo = {
	\repeat volta 2 { s1*3 }
	\alternative {
		{ s1 }
		{ s1 }
	}
}
roadmapSoloHead = { \repeat volta 4 { s1*4 } }

roadmap = {
	\mark \markup { \box \bold "A" \italic "Tenor only" }
	\roadmapRepeatedSection
	\break
	\mark \markup { \box \bold "B" \italic "Bass + Tenor" }
	\roadmapRepeatedSection
	\break
	\mark \markup { \box \bold "C" \italic "Drums + Bass + Tenor" }
	\roadmapRepeatedSection
	\break
	\mark \markup { \box \bold "D" \italic "Head" }
	\roadmapRepeatedSection
	\break
	\mark \markup { \box \bold "E" \italic "Bridge" }
	\roadmapSectionTwo
	\break
	\mark \markup { \box \bold "F" \italic "Hits" }
	\roadmapRepeatedSection
	\break
	\mark \markup { \box \bold "G" \italic "Head" }
	\roadmapRepeatedSection
	\break
	\mark \markup { \box \bold "H" \italic "Bridge" }
	\roadmapSectionTwo
	\break
	\mark \markup { \box \bold "I" \italic "Solo 1 over Head - 16 bars" }
	\roadmapSoloHead
	\break
	\mark \markup { \box \bold "J" \italic "Solo 1 over Bridge" }
	\roadmapSectionTwo
	\break
	\mark \markup { \box \bold "K" \italic "Solo 2 over Head - 16 bars" }
	\roadmapSoloHead
	\break
	\mark \markup { \box \bold "L" \italic "Solo 2 over Bridge" }
	\roadmapSectionTwo
	\break
	\mark \markup { \box \bold "M" \italic "Head" }
	\roadmapRepeatedSection
	\break
	\mark \markup { \box \bold "N" \italic "Bridge" }
	\roadmapSectionTwo
}

lyreRoadmap = {
	\mark \markup \box \bold "1"
	\roadmapRepeatedSection
	\break
	\mark \markup \box \bold "2"
	\roadmapSectionTwo
	\break
	\mark \markup \box \bold "3"
	\roadmapRepeatedSection
}

% The full arrangement and compact lyre chart have independent forms.
#(define full-form
	'(tenorVamp bassTenorVamp drumsBassTenorVamp
	  sectionOne sectionTwo sectionThree
	  sectionOne sectionTwo
	  soloHead soloBridge
	  soloHead soloBridge
	  sectionOne sectionTwo))
#(define lyre-form '(sectionOne sectionTwo sectionThree))

#(define instrument-sections
	`((melody .
		((tenorVamp . ,#{ \silentRepeatedSection #})
		 (bassTenorVamp . ,#{ \silentRepeatedSection #})
		 (drumsBassTenorVamp . ,#{ \silentRepeatedSection #})
		 (sectionOne . ,#{ \melodySectionOne #})
		 (sectionTwo . ,#{ \melodySectionTwo #})
		 (sectionThree . ,#{ \melodySectionThree #})
		 (soloHead . ,#{ \silentSoloHead #})
		 (soloBridge . ,#{ \silentSectionWithEndings #})))
	  (guitar .
		((tenorVamp . ,#{ \guitarSection #})
		 (bassTenorVamp . ,#{ \guitarSection #})
		 (drumsBassTenorVamp . ,#{ \guitarSection #})
		 (sectionOne . ,#{ \guitarSection #})
		 (sectionTwo . ,#{ \guitarSectionWithEndings #})
		 (sectionThree . ,#{ \guitarSection #})
		 (soloHead . ,#{ \guitarSoloHead #})
		 (soloBridge . ,#{ \guitarSectionWithEndings #})))
	  (bass .
		((tenorVamp . ,#{ \silentRepeatedSection #})
		 (bassTenorVamp . ,#{ \bassSection #})
		 (drumsBassTenorVamp . ,#{ \bassSection #})
		 (sectionOne . ,#{ \bassSection #})
		 (sectionTwo . ,#{ \bassSectionTwo #})
		 (sectionThree . ,#{ \bassSection #})
		 (soloHead . ,#{ \bassSoloHead #})
		 (soloBridge . ,#{ \bassSectionTwo #})))))

#(define (instrument-section instrument section)
	(let* ((instrument-entry (assq instrument instrument-sections))
		   (section-entry
			(and instrument-entry (assq section (cdr instrument-entry)))))
		(if section-entry
			(ly:music-deep-copy (cdr section-entry))
			(ly:error "No music for ~a.~a" instrument section))))

#(define (assemble-form instrument form)
	(make-sequential-music
	 (map (lambda (section) (instrument-section instrument section)) form)))

% Named final parts retained for pondscum's %part convention.
%part: melody
melody = { \key f \minor #(assemble-form 'melody full-form) }

%part: guitar
guitar = { \key f \minor #(assemble-form 'guitar full-form) }

%part: bass
bass = { \key f \minor #(assemble-form 'bass full-form) }

melodyLyre = { \key f \minor #(assemble-form 'melody lyre-form) }
guitarLyre = { \key f \minor #(assemble-form 'guitar lyre-form) }
bassLyre = { \key f \minor #(assemble-form 'bass lyre-form) }

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
        \new Staff { << \roadmap { \transpose bes c \melody } >> }
	>>
    }
%    \words
}

\book { 
  \header { poet = "Guitar - Bb" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { << \roadmap { \transpose bes c' \guitar } >> }
	>>
    }
%    \words
}
\book { 
  \header { poet = "Melody - Eb" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { << \roadmap { \transpose ees c \melody } >> }
	>>
    }
%    \words
}

\book { 
  \header { poet = "Guitar - Eb" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { << \roadmap { \transpose ees c \guitar } >> }
	>>
    }
%    \words
}

\book { 
  \header { poet = "Bass - Eb" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { << \roadmap { \clef treble \transpose ees c'' \bass } >> }
	>>
    }
%    \words
}


\book { \header { poet = "Score" }
  \paper { #(set-paper-size "letter") }
    \score { 
      << 
%	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { << \roadmap { \melody } >> }
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
