\version "2.12.3"

\header { 
	tagline = "9/2/2026"
	title = "J.J.D."
	composer = "Fela Kuti"

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

%%Generated layout
%------------------Code to 'naturalize' music - get rid of double-sharps, E#, etc.-----------------
#(define (naturalize-pitch p)
  (let ((o (ly:pitch-octave p))
        (a (* 4 (ly:pitch-alteration p)))
        ;; alteration, a, in quarter tone steps,
        ;; for historical reasons
        (n (ly:pitch-notename p)))
    (cond
     ((and (> a 1) (or (eq? n 6) (eq? n 2)))
      (set! a (- a 2))
      (set! n (+ n 1)))
     ((and (< a -1) (or (eq? n 0) (eq? n 3)))
      (set! a (+ a 2))
      (set! n (- n 1))))
    (cond
     ((> a 2) (set! a (- a 4)) (set! n (+ n 1)))
     ((< a -2) (set! a (+ a 4)) (set! n (- n 1))))
    (if (< n 0) (begin (set! o (- o 1)) (set! n (+ n 7))))
    (if (> n 6) (begin (set! o (+ o 1)) (set! n (- n 7))))
    (ly:make-pitch o n (/ a 4))))

#(define (naturalize music)
  (let ((es (ly:music-property music 'elements))
        (e (ly:music-property music 'element))
        (p (ly:music-property music 'pitch)))
    (if (pair? es)
       (ly:music-set-property!
         music 'elements
         (map (lambda (x) (naturalize x)) es)))
    (if (ly:music? e)
       (ly:music-set-property!
         music 'element
         (naturalize e)))
    (if (ly:pitch? p)
       (begin
         (set! p (naturalize-pitch p))
         (ly:music-set-property! music 'pitch p)))
    music))

naturalizeMusic =
#(define-music-function (parser location m)
  (ly:music?)
  (naturalize m))
%-----------------End Naturalization code---------------

#(set-default-paper-size "letter")
\pointAndClickOff

\book {
	\score { <<
			\set Score.rehearsalMarkFormatter = #format-mark-box-numbers

			
		% Group: Melody
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Melody" } { \set Staff.midiInstrument = #"trumpet" \clef treble
			\tempo  4 = 120 
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			<< \roadmap { \melody } >>
		}
		% Group: Guitar
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Guitar" } { \set Staff.midiInstrument = #"alto sax" \clef treble
			\tempo  4 = 120 
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\guitar
		}
		% Group: Bass
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Bass" } { \set Staff.midiInstrument = #"tuba" \clef bass
			\tempo  4 = 120 
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\bass
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
}