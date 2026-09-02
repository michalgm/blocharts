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
melodySectionOne = {
	\repeat volta 2 {
		ces'16 bes aes bes~ bes2~ bes8 f | aes aes r4 c8 ees c ees |
		c8 bes16 aes f8 ees~ ees4~ ees8 f | aes aes r4 ees8 f aes bes |
	}
}

melodySectionTwo = {
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

melodySectionThree = {
	\repeat volta 2 {
		<aes c>8 r r2. | r2. r8 <bes d> |
		<aes c>8 r r2. | r2. r8 <bes d> |
	}
}

% Reusable guitar sections
guitarSectionOne = {
	\repeat volta 2 {
		f8. aes16~ aes8 c, ees-. ees-. ees4-. | f8. aes16~ aes8 ees f-. f-. f4-. |
		f8. aes16~ aes8 c, ees-. ees-. ees4-. | f8. aes16~ aes8 ees f-. f-. f4-. |
	}
}

guitarSectionTwo = {
	\repeat volta 2 {
		f8. aes16~ aes8 c, ees-. ees-. ees4-. | f8. aes16~ aes8 ees f-. f-. f4-. |
		f8. aes16~ aes8 c, ees-. ees-. ees4-. |
	}
	\alternative {
		{ f8. aes16~ aes8 ees f-. f-. f4-. | }
		{ f8. aes16~ aes8 ees f-. f-. f4-. | }
	}
}

guitarSectionThree = {
	\repeat volta 2 {
		f8. aes16~ aes8 c, ees-. ees-. ees4-. | f8. aes16~ aes8 ees f-. f-. f4-. |
		f8. aes16~ aes8 c, ees-. ees-. ees4-. | f8. aes16~ aes8 ees f-. f-. f4-. |
	}
}

% Reusable bass sections
bassSectionOne = {
	\repeat volta 2 {
		f8 f f aes r4. ees8 | f f f r c' bes aes bes |
		f8 f f aes r4. ees8 | f f f r ees' d bes aes |
	}
}

bassSectionTwo = {
	\repeat volta 2 {
		f1 | g | aes |
	}
	\alternative {
		{ bes | }
		{ bes | }
	}
}

bassSectionThree = {
	\repeat volta 2 {
		f8 f f aes r4. ees8 | f f f r c' bes aes bes |
		f8 f f aes r4. ees8 | f f f r ees' d bes aes |
	}
}

% Score-wide section labels and layout breaks. Pondscum includes this once in
% the full score and alongside the music in each extracted part.
roadmapSectionOne = { \repeat volta 2 { s1*4 } }
roadmapSectionTwo = {
	\repeat volta 2 { s1*3 }
	\alternative {
		{ s1 }
		{ s1 }
	}
}
roadmapSectionThree = { \repeat volta 2 { s1*4 } }

roadmap = {
	\mark \default
	\roadmapSectionOne
	\break
	\mark \default
	\roadmapSectionTwo
	\break
	\mark \default
	\roadmapSectionThree
}

% Until the performance form is defined, the full chart and compact lyre chart
% both use the three sections currently present in the source.
#(define full-form '(sectionOne sectionTwo sectionThree))
#(define lyre-form '(sectionOne sectionTwo sectionThree))

#(define instrument-sections
	`((melody .
		((sectionOne . ,#{ \melodySectionOne #})
		 (sectionTwo . ,#{ \melodySectionTwo #})
		 (sectionThree . ,#{ \melodySectionThree #})))
	  (guitar .
		((sectionOne . ,#{ \guitarSectionOne #})
		 (sectionTwo . ,#{ \guitarSectionTwo #})
		 (sectionThree . ,#{ \guitarSectionThree #})))
	  (bass .
		((sectionOne . ,#{ \bassSectionOne #})
		 (sectionTwo . ,#{ \bassSectionTwo #})
		 (sectionThree . ,#{ \bassSectionThree #})))))

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
melody = { \relative c' { \key f \minor #(assemble-form 'melody full-form) } }

%part: guitar
guitar = { \relative c' { \key f \minor #(assemble-form 'guitar full-form) } }

%part: bass
bass = { \relative c, { \key f \minor #(assemble-form 'bass full-form) } }

% The compact lyre chart uses the same sections for now. These variables let
% its form diverge from the full arrangement later without duplicating notes.
lyreRoadmap = { \roadmap }

melodyLyre = { \relative c' { \key f \minor #(assemble-form 'melody lyre-form) } }
guitarLyre = { \relative c' { \key f \minor #(assemble-form 'guitar lyre-form) } }
bassLyre = { \relative c, { \key f \minor #(assemble-form 'bass lyre-form) } }

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
