\version "2.16.2"

\header { 
	tagline = "4/26/2015"

  title = "National Anthem"
  composer = "Radiohead (Arr. Environmental Encroachment/Breakfast)"
  copyright = \markup {\bold { "Default Form:" } "Vamp, Head, Bridge, Hits, Solos/Drum break, Cacophonous Group Solo, Hits, Coda"}
}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }

coda = {
  \break \mark \markup \box { \musicglyph #"scripts.coda" } 
  r4\fermata c4 d2~ | d4\fermata r\fermata d2\fermata |
}

%music pieces
%part: melody
melody = {
  \relative c'' {
    %\set Score.markFormatter = #format-mark-box-letters
    %\override Score.RehearsalMark #'self-alignment-X = #LEFT
	\compressFullBarRests
	\override MultiMeasureRest #'expand-limit = #2
    \mark \markup \box \bold "Vamp"
    \repeat volta 2 {
      r1 | r1
    }
    \break \mark \markup \box \bold "Head"
    a1~|a2. fis4| bes1~| bes?2. c4 |
    a1~|a2. fis4| bes1~| bes?2. c4 |
    \break
    d1~|d2. d4 | ees1~ | ees?2. ees4 |
    d1~|d2. d4 | ees1~ | ees?1 |

    \break \mark \markup \box \bold "Bridge"
    R1*8 |
    d16 e d8~ d2.~ | d4. r8 d e~ e d16 e | fis2 c~ | c1 |
    d16 e d8~ d2.~ | d4. r8 d e~ e d16 e | fis2 c~ | c1 |
    \break \mark \markup \box \bold "Hits"
    \repeat volta 2 {
      r8 c c r c16 c r c r4 |
      r8 c c r c16 c r c r4 |
      c8 c r r16 c r c r c r4 |
      r8 c r16 r r c r4 r8 r16 c |
    
    \coda
    
    }
  }
}

%part: tenor
tenor = {
  \relative c' {
    %\key f \major
    \mark \markup \box \bold "Vamp"
    \repeat volta 2 {

      fis8 d d d16 fis~ fis d~ d d~ d d~ d d|
      f?8 d d d16 e~ e d~ d d~ d d~ d d|

    }
    \break \mark \markup \box \bold "Head"
    \repeat percent 8 {
      fis8 d d d16 fis~ fis d~ d d~ d d~ d d|
      f?8 d d d16 e~ e d~ d d~ d d~ d d|
    }
    \break \mark \markup \box \bold "Bridge"
    d16 e d8~ d2.~ | d4. r8 d e~ e d16 e | fis2 c~ | c1 |
    d16 e d8~ d2.~ | d4. r8 d e~ e d16 e | fis2 c~ | c1 |
    d16 e d8~ d2.~ | d4. r8 d e~ e d16 e | fis2 c~ | c1 |
    d16 e d8~ d2.~ | d4. r8 d e~ e d16 e | fis2 c~ | c1 |
    \break \mark \markup \box \bold "Hits"
    \repeat volta 2 {
      c8 c' c r c16 c r c r4 |
      c,8 c' c r c16 c r c r c, c c |
      r4 c16 c c r r4 r16 c c c |
      c8 r c16 c c r r c r c r c r8 |
    }
    \coda
  }
}

%part: bass
bass = {
  \relative c, {
    %\key f \major
    \mark \markup \box \bold "Vamp"
    \repeat volta 2 {

      fis8 d d d16 fis~ fis d~ d d~ d d~ d d|
      f?8 d d d16 e~ e d~ d d~ d d~ d d|

    }
    \break \mark \markup \box \bold "Head"
    \repeat percent 8 {
      fis8 d d d16 fis~ fis d~ d d~ d d~ d d|
      f?8 d d d16 e~ e d~ d d~ d d~ d d|
    }

    \break \mark \markup \box \bold "Bridge"
    r1 |
    f?8 d d d16 e~ e d~ d d~ d d~ d d|
    \repeat percent 7 {
      fis8 d d d16 fis~ fis d~ d d~ d d~ d d|
      f?8 d d d16 e~ e d~ d d~ d d~ d d|
    }

    \break \mark \markup \box \bold "Hits"
    \repeat volta 2 {
      c8 c' c r c16 c r c r4 |
      c,8 c' c r c16 c r c r c, c c |
      r4 c16 c c r r4 r16 c c c |
      c8 r c16 c c r r c r c r c r8 |
    }
    \coda
  }
}

%part: changes
changes = \chordmode {
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
\book {
	\score { <<
			\set Score.markFormatter = #format-mark-box-numbers
			
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
			\tempo   4 = 110
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\melody
		}
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trombone" \clef treble
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\tenor
		}
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"tuba" \clef bass
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\bass
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
}