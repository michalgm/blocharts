\version "2.12.3"

\header { 
	tagline = "2/6/2026"
	title = "We Got That Fire"
	composer = "?"

	copyright = \markup {\bold ""} %form
	}
%description:Traditional <a href="http://en.wikipedia.org/wiki/Second_line_%28parades%29">New Orleans Second Line</a> song.

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: leadsheet
leadsheet = {
	\relative c' {

	\mark \markup { \box "1" \small "4 times" } 
	\repeat volta 4 {
		<ees g>1 | <des f> | <c ees> | <bes d> |
		}
	\break

	\mark \markup { \box "2" \small "4 times" } 
	\repeat volta 4 {
		r4 ees ees ees | ges4. ees8~ ees4 ees8 ees | r ees ees4 ges4. ees8~ | ees2 r |
		}
	\break

	\mark \markup { \box "3" \small "4 times" } 
	\repeat volta 4 {
		r4 <des ees>8 <ees g>~ <ees g>4 <des ees> | r4<des ees>8 <ees g>~ <ees g>4 <des ees> |
		r4 <des ees>8 <ees ges>~ <ees ges> <des ees> <ees ges> <f aes> | 
		<ges bes>4 <f aes>8  <ees ges>~ <ees ges>4 <des ees> | 
		}
	\break

	\mark \markup { \box "bass 1" } 
	\clef bass	
	\repeat volta 4 {
		ees,4. ees8~ ees2 | g4. g8~ g2 | aes4. aes8~ aes2 | bes4 c bes c |
		}
	}
}

%part: bass
bass = {
	\relative c { \key ees \major

	\repeat volta 32 {
		ees,4. ees8~ ees2 | g4. g8~ g2 | aes4. aes8~ aes2 | bes4 c bes c |
		}
	
	}
}

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

			
		% Group: Leadsheet
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Leadsheet" } {  \set Staff.midiInstrument = #"alto sax" \clef treble
			\tempo  4 = 200 
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\leadsheet
		}
		% Group: Bass
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Bass" } {  \set Staff.midiInstrument = #"tuba" \clef bass
			\tempo  4 = 200 
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\bass
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
}