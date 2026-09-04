\version "2.12.3"

\include "form.ily"

performanceForm = "Vamp, 1&2, Vamp, 1&2, Solos, Bridge, 1&2"

\header { 
	tagline = "9/4/2026" 

  title = "You Move Ya Lose"
  composer = "Rebirth Brass Band"
  copyright = \markup { \bold { "Default Form:" } \performanceForm }
}
%description:<a href="http://en.wikipedia.org/wiki/Second_line_%28parades%29">New Orleans Second Line</a> song by <a href="http://www.rebirthbrassband.com">Rebirth Brass Band</a>, from their 1994 album <a href="http://www.amazon.com/Rollin-ReBirth-Brass-Band/dp/B00000030K">Rollin</a>.

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

tenorBPair = { aes2 aes | g4 ees8 f r4 f | }
tenorBBody = { \repeat unfold 3 { \tenorBPair } \hornBCadence }

% Bass phrases
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

bassEightBars = \relative c {
  \bassABody
  \bassAFirstEnding
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

silentEightBars = { R1*8 }
silentEightBarRepeat = {
  \repeat volta 2 { R1*7 }
  \alternative {
    { R1 }
    { R1 }
  }
}

% Invisible timing for form labels and breaks. Unlike R1, skips do not
% print rests when Pondscum overlays the form on an instrument staff.
eightBarGuide = { s1*8 }
eightBarRepeatGuide = {
  \repeat volta 2 { s1*7 }
  \alternative {
    { s1 }
    { s1 }
  }
}

% Reusable bass-drum phrases and sections
tresillo = \drummode { bd8 r4 bd8 r4 bd4 | }

bassDrumEightBars = \drummode {
  \repeat unfold 8 { \tresillo }
}

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

% Each section owns its label, form timing, and instrument parts.
#(define section-definitions
  `((introBassVamp
      (label . ,#{ \mark \markup \box \bold "Vamp" #})
      (break-after . #f)
      (guide . ,#{ \eightBarGuide #})
      (melody . ,#{ \silentEightBars #})
      (tenor . ,#{ \silentEightBars #})
      (bass . ,#{ \bassEightBars #})
      (bassDrum . ,#{ \silentEightBars #}))
    (introBassAndDrumVamp
      (label . #f)
      (break-after . #f)
      (guide . ,#{ \eightBarGuide #})
      (melody . ,#{ \silentEightBars #})
      (tenor . ,#{ \silentEightBars #})
      (bass . ,#{ \bassEightBars #})
      (bassDrum . ,#{ \bassDrumEightBars #}))
    (vamp
      (label . ,#{ \mark \markup \box \bold "Vamp" #})
      (bar-after . "||")
      (guide . ,#{ \eightBarRepeatGuide #})
      (melody . ,#{ \silentEightBarRepeat #})
      (tenor . ,#{ \tenorSectionOne #})
      (bass . ,#{ \bassSectionOne #})
      (bassDrum . ,#{ \bassDrumSectionOne #}))
    (sectionOne
      (label . ,#{ \mark \markup \box \bold "1" #})
      (guide . ,#{ \eightBarRepeatGuide #})
      (melody . ,#{ \melodySectionOne #})
      (tenor . ,#{ \tenorSectionOne #})
      (bass . ,#{ \bassSectionOne #})
      (bassDrum . ,#{ \bassDrumSectionOne #}))
    (sectionTwo
      (label . ,#{ \mark \markup \box \bold "2" #})
      (bar-after . "||")
      (guide . ,#{ \eightBarRepeatGuide #})
      (melody . ,#{ \melodySectionTwo #})
      (tenor . ,#{ \tenorSectionTwo #})
      (bass . ,#{ \bassSectionTwo #})
      (bassDrum . ,#{ \bassDrumSectionTwo #}))
    (soloSectionOne
      (label . ,#{ \mark \markup \box \bold "Solos 1" #})
      (guide . ,#{ \eightBarRepeatGuide #})
      (melody . ,#{ \silentEightBarRepeat #})
      (tenor . ,#{ \silentEightBarRepeat #})
      (bass . ,#{ \bassSectionOne #})
      (bassDrum . ,#{ \bassDrumSectionOne #}))
    (soloSectionTwo
      (label . ,#{ \mark \markup \box \bold "Solos 2" #})
      (bar-after . "||")
      (guide . ,#{ \eightBarRepeatGuide #})
      (melody . ,#{ \silentEightBarRepeat #})
      (tenor . ,#{ s1*0\p \tenorSectionTwo s1*0\mf #})
      (bass . ,#{ \bassSectionTwo #})
      (bassDrum . ,#{ \bassDrumSectionTwo #}))
    (bridge
      (label . ,#{ \mark \markup \box \bold "Bridge" #})
      (bar-after . "||")
      (guide . ,#{ \silentBridge #})
      (melody . ,#{ \melodyBridge #})
      (tenor . ,#{ \tenorBridge #})
      (bass . ,#{ \bassBridge #})
      (bassDrum . ,#{ \bassDrumBridge #}))))

% The full playing order is authored only here. An occurrence may override its
% section's label, barline, Fine, or line-break defaults when necessary.
#(define full-form
  `(introBassVamp introBassAndDrumVamp
    (vamp (label . #f))
    sectionOne sectionTwo
    vamp
    sectionOne sectionTwo
    soloSectionOne
    (soloSectionOne (label . #f))
    soloSectionTwo
    bridge
    sectionOne
    (sectionTwo (fine-after . #t))))

#(define lyre-form
  '(sectionOne
    sectionTwo
    (bridge (bar-after . "|."))))

% Pondscum discovers these names; both are derived from their respective forms.
form = {
  #(assemble-form-guide section-definitions full-form default-form-label)
}
lyreForm = {
  #(assemble-form-guide section-definitions lyre-form default-form-label)
}

% Named final parts retained for pondscum's %part convention.
%part: melody
melody = {
  \compressEmptyMeasures
  \override MultiMeasureRest.expand-limit = #1
  \key f \minor #(assemble-form section-definitions 'melody full-form)
}

%part: tenor
tenor = {
  \compressEmptyMeasures
  \override MultiMeasureRest.expand-limit = #1
  \key f \minor #(assemble-form section-definitions 'tenor full-form)
}

%part: bass
bass = {
  \compressEmptyMeasures
  \override MultiMeasureRest.expand-limit = #1
  \key f \minor #(assemble-form section-definitions 'bass full-form)
}

%part: bassDrum
% Tresillo in 4/4: attacks on beat 1, the "and" of 2, and beat 4.
bassDrum = \drummode {
  \compressEmptyMeasures
  \override MultiMeasureRest.expand-limit = #1
  #(assemble-form section-definitions 'bassDrum full-form)
}

melodyLyre = {
  \key f \minor #(assemble-form section-definitions 'melody lyre-form)
}

tenorLyre = {
  \key f \minor #(assemble-form section-definitions 'tenor lyre-form)
}

bassLyre = {
  \key f \minor #(assemble-form section-definitions 'bass lyre-form)
}

bassDrumLyre = \drummode {
  #(assemble-form section-definitions 'bassDrum lyre-form)
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

\book {
	\score { <<
			\set Score.rehearsalMarkFormatter = #format-mark-box-numbers

			
		% Group: Melody
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Melody" } { \set Staff.midiInstrument = #"trumpet" \clef treble
			\tempo    4 = 200
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			<< \form { \melody } >>
		}
		% Group: Tenor
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Tenor" } { \set Staff.midiInstrument = #"trombone" \clef treble
			\tempo    4 = 200
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\tenor
		}
		% Group: Bass
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Bass" } { \set Staff.midiInstrument = #"tuba" \clef bass
			\tempo    4 = 200
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\bass
		}
		% Group: BassDrum
		\new DrumStaff \with { \consists "Volta_engraver" instrumentName = "BassDrum" } {
			\tempo    4 = 200
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\bassDrum
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
}