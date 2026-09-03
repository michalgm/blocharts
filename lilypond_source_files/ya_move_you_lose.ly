\version "2.12.3"

performanceForm = "Vamp, 1&2, Vamp, 1&2, Solos, Bridge, 1&2"

\header { 
	tagline = "9/1/2026"
  title = "You Move Ya Lose"
  composer = "Rebirth Brass Band"
  copyright = \markup { \bold { "Default Form:" } \performanceForm }
}
%description:<a href="http://en.wikipedia.org/wiki/Second_line_%28parades%29">New Orleans Second Line</a> song by <a href="http://www.rebirthbrassband.com">Rebirth Brass Band</a>, from their 1994 album <a href="http://www.amazon.com/Rollin-ReBirth-Brass-Band/dp/B00000030K">Rollin</a>.

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }

% Reusable horn phrases
hornBCadence = { ees4. e8~ e4 f | }
hornBFirstEnding = { r2. f4 | }
hornBSecondEnding = { r1 | }

hornBridgeBody = {
  <as c ees>8 r4 <as c ees>8 ~ <as c ees>4 <as c ees> | <g bes d>8 r4 <g bes d>8 ~ <g bes d>4 <g bes d> |
  <f as c>8 r4 <f as c>8 ~ <f as c>4 <f as c> | <e g b> \mark \markup \italic "4x" r2. |
}

hornFinalBody = {
  es8 f4 f8 ~ f es4 f8 ~ f4 es as8 r4 as8 |
  r as g f es c4 es8 ~ es4 e f2 |
  r8 f4 as8 ~ as c4 es8 ~ es r4 d8 r c bes c |
  d4. c8 r8 c4. | bes8 r8 r2. |
}

% Reusable melody phrases
melodyABody = {
  r2 c8 bes aes bes~ | bes4 aes f8 f aes4 | bes aes bes aes8 bes~ | bes4 c r2 |
  r2 c8 bes aes bes~ | bes4 aes f8 f aes4 | bes aes c aes8 f~ |
}
melodyAFirstEnding = { f4 r r2 | }
melodyASecondEnding = { f4 r r f | }

melodyBPair = { c'2 c | bes4 aes8 f r4 f | }
melodyBBody = { \repeat unfold 3 { \melodyBPair } \hornBCadence }

% Reusable tenor phrases
tenorABody = {
  r8 ees d4 ees d | ees d ees d | ees d ees8 f r f~ | f4 r r2 |
  r8 ees d4 ees d | ees d ees d | ees d ees8 f r f~ |
}
tenorAFirstEnding = { f4 r r2 | }
tenorASecondEnding = { f4 r r f | }
tenorAFirstPass = \relative c' { \tenorABody \tenorAFirstEnding }

tenorBPair = { aes2 aes | g4 ees8 f r4 f | }
tenorBBody = { \repeat unfold 3 { \tenorBPair } \hornBCadence }

% Reusable bass phrases
bassWalkTwo = {
  f,4 r8 f~ f4 g | aes r8 aes~ aes4 a |
}
bassWalkFour = {
  \bassWalkTwo
  bes r8 bes~ bes4 b | c r8 ees~ ees4 e |
}
bassABody = {
  \bassWalkFour
  \bassWalkTwo
  bes r8 bes~ bes4 b |
}
bassAFirstEnding = { c r8 ees~ ees4 e | }
bassAFirstPass = \relative c { \bassABody \bassAFirstEnding }

bassBBody = {
  \bassWalkFour
  \bassWalkTwo
  ees'4. e8~ e4 f |
}

bassBridgeBody = {
  f,4 r8 f~ f4 g | aes r8 aes~ aes4 a | bes r8 bes~ bes4 b |
  c \mark \markup \italic "4x" r8 ees~ ees4 e |
}

bassFinalBody = {
  \bassWalkTwo
  bes r8 bes~ bes4 b8 ees,8 ~ | ees4 e f c |
  f4 r8 f~ f4 g | aes r8 aes~ aes4 a | d4. c8 r8 c4. | bes8 r4 ees8~ ees4 e |
}

% Complete repeated sections
melodySectionOne = \relative c'' {
  \repeat volta 2 { \melodyABody }
  \alternative {
    { \melodyAFirstEnding }
    { \melodyASecondEnding }
  }
}

melodySectionTwo = \relative c' {
  \repeat volta 2 { \melodyBBody }
  \alternative {
    { \hornBFirstEnding }
    { \hornBSecondEnding }
  }
}

tenorSectionOne = \relative c' {
  \repeat volta 2 { \tenorABody }
  \alternative {
    { \tenorAFirstEnding }
    { \tenorASecondEnding }
  }
}

tenorSectionTwo = \relative c'' {
  \repeat volta 2 { \tenorBBody }
  \alternative {
    { \hornBFirstEnding }
    { \hornBSecondEnding }
  }
}

bassSectionOne = \relative c {
  \repeat volta 2 { \bassABody }
  \alternative {
    { \bassAFirstEnding }
    { \bassAFirstEnding }
  }
}

bassSectionTwo = \relative c {
  \repeat volta 2 { \bassBBody }
  \alternative {
    { r2. f4 | }
    { r1 | }
  }
}

silentSectionOne = {
  \repeat volta 2 { R1*7 }
  \alternative {
    { R1 }
    { R1 }
  }
}

% Reusable bass-drum phrases and sections
tresillo = \drummode { bd8 r4 bd8 r4 bd4 | }

bassDrumSectionOne = \drummode {
  \repeat volta 2 { \repeat unfold 7 { \tresillo } }
  \alternative {
    { \tresillo }
    { \tresillo }
  }
}

bassDrumSectionTwo = \drummode {
  \repeat volta 2 { \repeat unfold 7 { \tresillo } }
  \alternative {
    { r2. bd4 | }
    { r1 | }
  }
}

hornBridge = {
  \repeat volta 4 { \hornBridgeBody }
  \repeat volta 2 { \hornFinalBody }
}

melodyBridge = \relative c'' { \hornBridge }
tenorBridge = \relative c'' { \hornBridge }

bassBridge = \relative c {
  \repeat volta 4 { \bassBridgeBody }
  \repeat volta 2 { \bassFinalBody }
}

bassDrumBridge = \drummode {
  \repeat volta 4 { \repeat unfold 4 { \tresillo } }
  \repeat volta 2 { \repeat unfold 8 { \tresillo } }
}

silentBridge = {
  \repeat volta 4 { s1*4 }
  \repeat volta 2 { s1*8 }
}

% Named fragments used by the form assembler.
melodyVampOne = { R1*8 }
melodyVampTwo = { R1*8 }
melodyVampThree = { R1*16 }
melodySoloSectionOne = { \silentSectionOne }
melodySoloSectionTwo = { s1*0\p \melodySectionTwo s1*0\mf }

tenorVampOne = { R1*8 }
tenorVampTwo = { R1*8 }
tenorVampThree = { \repeat unfold 2 { \tenorAFirstPass } }
tenorSoloSectionOne = { \silentSectionOne }
tenorSoloSectionTwo = { s1*0\p \tenorSectionTwo s1*0\mf }

bassVampOne = { \bassAFirstPass }
bassVampTwo = { \bassAFirstPass }
bassVampThree = { \repeat unfold 2 { \bassAFirstPass } }
bassSoloSectionOne = { \bassSectionOne }
bassSoloSectionTwo = { \bassSectionTwo }

bassDrumVampOne = \drummode { \repeat unfold 8 { r1 | } }
bassDrumVampTwo = \drummode { \repeat unfold 8 { \tresillo } }
bassDrumVampThree = \drummode { \repeat unfold 16 { \tresillo } }
bassDrumSoloSectionOne = \drummode { \bassDrumSectionOne }
bassDrumSoloSectionTwo = \drummode { \bassDrumSectionTwo }

% Each section owns its label, roadmap timing, and instrument parts.
#(define section-definitions
  `((vampOne
      (label . ,#{ \mark \markup \box \bold "Vamp" #})
      (guide . ,#{ s1*8 #})
      (melody . ,#{ \melodyVampOne #})
      (tenor . ,#{ \tenorVampOne #})
      (bass . ,#{ \bassVampOne #})
      (bassDrum . ,#{ \bassDrumVampOne #}))
    (vampTwo
      (label . #f)
      (guide . ,#{ s1*8 #})
      (melody . ,#{ \melodyVampTwo #})
      (tenor . ,#{ \tenorVampTwo #})
      (bass . ,#{ \bassVampTwo #})
      (bassDrum . ,#{ \bassDrumVampTwo #}))
    (vampThree
      (label . #f)
      (guide . ,#{ s1*16 #})
      (melody . ,#{ \melodyVampThree #})
      (tenor . ,#{ \tenorVampThree #})
      (bass . ,#{ \bassVampThree #})
      (bassDrum . ,#{ \bassDrumVampThree #}))
    (sectionOne
      (label . ,#{ \mark \markup \box \bold "1" #})
      (guide . ,#{ \silentSectionOne #})
      (melody . ,#{ \melodySectionOne #})
      (tenor . ,#{ \tenorSectionOne #})
      (bass . ,#{ \bassSectionOne #})
      (bassDrum . ,#{ \bassDrumSectionOne #}))
    (sectionTwo
      (label . ,#{ \mark \markup \box \bold "2" #})
      (guide . ,#{ \silentSectionOne #})
      (melody . ,#{ \melodySectionTwo #})
      (tenor . ,#{ \tenorSectionTwo #})
      (bass . ,#{ \bassSectionTwo #})
      (bassDrum . ,#{ \bassDrumSectionTwo #}))
    (soloSectionOne
      (label . ,#{ \mark \markup \box \bold "Solos" #})
      (guide . ,#{ \silentSectionOne #})
      (melody . ,#{ \melodySoloSectionOne #})
      (tenor . ,#{ \tenorSoloSectionOne #})
      (bass . ,#{ \bassSoloSectionOne #})
      (bassDrum . ,#{ \bassDrumSoloSectionOne #}))
    (soloSectionTwo
      (label . ,#{ \mark \markup \box \bold "2" #})
      (guide . ,#{ \silentSectionOne #})
      (melody . ,#{ \melodySoloSectionTwo #})
      (tenor . ,#{ \tenorSoloSectionTwo #})
      (bass . ,#{ \bassSoloSectionTwo #})
      (bassDrum . ,#{ \bassDrumSoloSectionTwo #}))
    (bridge
      (label . ,#{ \mark \markup \box \bold "Bridge" #})
      (guide . ,#{ \silentBridge #})
      (melody . ,#{ \melodyBridge #})
      (tenor . ,#{ \tenorBridge #})
      (bass . ,#{ \bassBridge #})
      (bassDrum . ,#{ \bassDrumBridge #}))))

% The full playing order is authored only here. A form entry may override its
% section's label or whether a line break follows it.
#(define full-form
  `(vampOne vampTwo vampThree
    sectionOne sectionTwo
    (vampThree (label . ,#{ \mark \markup \box \bold "Vamp" #}))
    sectionOne sectionTwo
    (soloSectionOne (break-after . #f))
    (soloSectionOne (label . #f))
    soloSectionTwo
    bridge
    sectionOne sectionTwo))

#(define lyre-form '(sectionOne sectionTwo bridge))

#(define (form-entry-name entry)
  (if (symbol? entry) entry (car entry)))

#(define (form-entry-property entry property default)
  (let ((override (and (pair? entry) (assq property (cdr entry)))))
    (if override (cdr override) default)))

#(define (section-definition section-name)
  (let ((section (assq section-name section-definitions)))
    (if section
        section
        (ly:error "No definition for section ~a" section-name))))

#(define (section-property section-name property)
  (let ((entry (assq property (cdr (section-definition section-name)))))
    (if entry
        (cdr entry)
        (ly:error "No ~a value for section ~a" property section-name))))

#(define (assemble-form instrument form)
  (make-sequential-music
   (map
    (lambda (entry)
      (ly:music-deep-copy
       (section-property (form-entry-name entry) instrument)))
    form)))

#(define section-break #{ \break #})

#(define (roadmap-entry entry last?)
  (let* ((section-name (form-entry-name entry))
         (label
          (form-entry-property
           entry 'label (section-property section-name 'label)))
         (break-after (form-entry-property entry 'break-after #t)))
    (make-sequential-music
     (append
      (if label (list (ly:music-deep-copy label)) '())
      (list (ly:music-deep-copy (section-property section-name 'guide)))
      (if (and break-after (not last?))
          (list (ly:music-deep-copy section-break))
          '())))))

#(define (assemble-roadmap form)
  (make-sequential-music
   (let loop ((entries form))
     (if (null? entries)
         '()
         (cons
          (roadmap-entry (car entries) (null? (cdr entries)))
          (loop (cdr entries)))))))

% Pondscum discovers these names; both are derived from their respective forms.
roadmap = { #(assemble-roadmap full-form) }
lyreRoadmap = { #(assemble-roadmap lyre-form) }

% Named final parts retained for pondscum's %part convention.
%part: melody
melody = { \key f \minor #(assemble-form 'melody full-form) }

%part: tenor
tenor = { \key f \minor #(assemble-form 'tenor full-form) }

%part: bass
bass = { \key f \minor #(assemble-form 'bass full-form) }

%part: bassDrum
% Tresillo in 4/4: attacks on beat 1, the "and" of 2, and beat 4.
bassDrum = \drummode { #(assemble-form 'bassDrum full-form) }

melodyLyre = {
  \key f \minor #(assemble-form 'melody lyre-form)
}

tenorLyre = {
  \key f \minor #(assemble-form 'tenor lyre-form)
}

bassLyre = {
  \key f \minor #(assemble-form 'bass lyre-form)
}

bassDrumLyre = \drummode {
  #(assemble-form 'bassDrum lyre-form)
}

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

% Shared staff assembly for both printed notation and MIDI output
scoreMusic = <<
			\set Score.rehearsalMarkFormatter = #format-mark-box-numbers

			
		% Group: Melody
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Melody" shortInstrumentName = "Mel." } {  \set Staff.midiInstrument = #"trumpet" \clef treble
			\tempo   4 = 200
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\melody
		}
		% Group: Tenor
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Tenor" shortInstrumentName = "Ten." } {  \set Staff.midiInstrument = #"trombone" \clef treble
			\tempo   4 = 200
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\tenor
		}
		% Group: Bass
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Bass" shortInstrumentName = "B." } {  \set Staff.midiInstrument = #"tuba" \clef bass
			\tempo   4 = 200
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\bass
		}
		% Group: Bass Drum
		\new DrumStaff \with {
			\consists "Volta_engraver"
			instrumentName = "Bass Drum"
			shortInstrumentName = "B.D."
		} {
			\bassDrum
		}
	>>

\book {
	% Printed score
	\score {
		\scoreMusic
		\layout { \context { \Score \remove "Volta_engraver" } }
	}
	% MIDI performance with all written repeats and alternatives played
	\score {
		\unfoldRepeats { \scoreMusic }
		\midi { }
	}
}
