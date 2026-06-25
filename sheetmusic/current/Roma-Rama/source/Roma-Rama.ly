
\version "2.24.0"

\header { 
	tagline = "6/25/2026"
  composer = "Axel Herrera"
  title = "Roma-Rama"

  % copyright = \markup {\bold { "Default Form:" }  ""}

}

%description:An original modal piece (Concert G/Ab) written by former BLO member Axel Herrera.  It was inspired by the music of the Roma people of Eastern Europe and is a tribute to their struggles and culture.

%part: melody
melody =  \relative c'' {
  \key c \minor
  \mark \markup \box \bold "Head"

  \repeat volta 2 {
    g1 |
    b2. aes4 |
    g1 |
    b1 |
    c1 |
    ees2. aes,4 |
    c1 |
    aes1 |
  }
  \break

  \mark \markup \box \bold "1"

  g4 r8 aes8 b8 [ b8 ] r8 aes8 | \barNumberCheck #10
  g4 r8 f8 g8 [ aes8 ] g4 |
  r8 g4 aes8 b8 [ b8 ] r8 aes8 |
  g4 r8 f8 g8 [ aes8 ] g4 |

  aes4. ees4. c'4 ~ |
  c2. r4 |
  aes4. ees4. c4 ~ |
  c2. r4 |
  \break

  b'4 r8 c8 d8 [ d8 ] r8 c8 |
  b4 r8 aes8 b8 [ c8 ] b4 |
  r8 b4 c8 d8 [ d8 ] r8 c8 | \barNumberCheck #20
  b4 r8 aes8 b8 [ c8 ] b4 |

  c4. aes4. ees'4 ~ |
  ees2. r4 |
  c4. aes4. ees4 ~ |
  ees2. r4 |
  \break

  \mark \markup \box \bold "2"

  g4 aes8 [ aes8 ] b8 [ b8 aes8 aes8 ] |
  g4 aes8 [ aes8 ] b8 [ b8 aes8 aes8 ] |
  g4 c8 [ c8 ] b8 [ b8 ees8 ees8 ] |
  d8 [ d8 aes'8 aes8 ] g4 r4 |
  \break
  aes4. ees4. c4 | \barNumberCheck #30
  aes'4. ees4. c4 |
  aes'4. ees4. c4 |
  aes'4 r4 aes4 r4 |
  g2 r2 \bar "|."
}

%part: tenor
tenor =  \relative b {
  \key c \minor
  \mark \markup \box \bold "Head"
  \repeat volta 2 {
    \repeat percent 4 {
      r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] |
    }
    \repeat percent 4 {
      r4 <c ees>8 [ <c ees>8 ] r8 <c ees>8 <c ees>8 [ <c ees>8 ] |
    }
  }

  \break

  \mark \markup \box \bold "1"
  \repeat percent 4 {
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] |
  }
  \repeat percent 4 {
    r4 <c ees>8 [ <c ees>8 ] r8 <c ees>8 <c ees>8 [ <c ees>8 ] |
  }

  \break

  \repeat percent 4 {
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] |
  }
  \repeat percent 4 {
    r4 <c ees>8 [ <c ees>8 ] r8 <c ees>8 <c ees>8 [ <c ees>8 ] |
  }

  \break

  \mark \markup \box \bold "2"
  \repeat percent 4 {
    r4 <b d>8 [ <b d>8 ] r8 <b d>8 <b d>8 [ <b d>8 ] |
  }
  \break
  \repeat percent 4 {
    r4 <c ees>8 [ <c ees>8 ] r8 <c ees>8 <c ees>8 [ <c ees>8 ] |
  }

  <b d>2 -"continue pattern, last time hold" r2 \bar "|."
}

%part: bass
bass =  \relative g, {
  \key c \minor

  \mark \markup \box \bold "Head"
  \repeat volta 2 {
    \repeat percent 4 {
      g4 r8 d'8 r4 g,4 |
    }
    \repeat percent 4 {
      aes4 r8 ees'8 r4 aes,4 |
    }
  }

  \break

  \mark \markup \box \bold "1"
  \repeat percent 4 {
    g4 r8 d'8 r4 g,4 |
  }
  \repeat percent 4 {
    aes4 r8 ees'8 r4 aes,4 |
  }

  \break

  \repeat percent 4 {
    g4 r8 d'8 r4 g,4 |
  }
  \repeat percent 4 {
    aes4 r8 ees'8 r4 aes,4 |
  }

  \break

  \mark \markup \box \bold "2"
  \repeat percent 4 {
    g4 r8 d'8 r4 g,4 |
  }
  \break
  \repeat percent 4 {
    aes4 r8 ees'8 r4 aes,4 |
  }

  g2 -"continue pattern, last time hold" r2 \bar "|."
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
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Melody" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
			\tempo  4 = 200
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\melody
		}
		% Group: Tenor
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Tenor" } {  \set Staff.midiInstrument = #"trombone" \clef treble
			\tempo  4 = 200
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\tenor
		}
		% Group: Bass
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Bass" } {  \set Staff.midiInstrument = #"tuba" \clef bass
			\tempo  4 = 200
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\bass
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
}