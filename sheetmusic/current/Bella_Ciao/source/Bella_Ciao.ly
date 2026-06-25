\version "2.12.1"

\header { 
	tagline = "2/6/2026"
	title = "Bella Ciao"
	composer = "Italian Partisan Song"
	}
%description:A partisan song of the CNL, the Italian resistance to Mussolini during WWII.  Its lyrics were written as a farewell to the female loved ones left behind when partisans went to the Italian hills to fight the guerilla war against fascism.

% music pieces
%part: melody
melody = {
	\relative c' { \key g \minor
	\partial 4. d8 g a | 
	\repeat volta 2 { bes g r4 r8 d g a | bes g r4 r8 d g a |
	bes4 a8 g bes4 a8 g | d'4 d d c8 d | 
	ees ees r4 r8 ees d c | ees d r4 r8 d c bes | a4 d bes a | g2 r8 d g a | }
}
}

%part: bass
bass = {
	\relative c { \key g \minor
	\partial 4. r8 r4 | 
	\repeat volta 2 { g d' g, d' | g, d' g, d' | g, d' g, d' | g, d' g, d' | 
	c g c g | g d' g, d' | d a d a | g d' g, d' | }
}
}

%part: changes
changes = \chordmode { r8 r4 | g1:m | g:m | g:m | g:m | c:m | g:m | d:7 | g:m | } 

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
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Melody" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
			\tempo  4 = 100 
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\melody
		}
		% Group: Bass
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Bass" } {  \set Staff.midiInstrument = #"tuba" \clef bass
			\tempo  4 = 100 
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\bass
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
}