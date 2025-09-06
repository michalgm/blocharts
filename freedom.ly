\version "2.24.4"

\header {
  tagline = "8/27/2025"
  title = "Freedom"
  composer = "Rebirth Brass Band"
  arranger = "Arr. Geoff Lee"
  copyright = \markup {\bold { "Default Form:" }  "Vamp, Head, Solos, Bridge, Head"}
}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark.self-alignment-X = #RIGHT \once \override Score.RehearsalMark.direction = #DOWN }

% music pieces
%part: melody
melody = {
  \relative c''
  {
    \key f \minor
    \time 4/4

    \section
    \sectionLabel \markup { \bold \box "Head" }
    \repeat volta 2 {
      bes1\<~ | bes2\! r8. bes16 aes8 bes | des8. bes16 r4 r2 | r1 |
      \break
      bes1\<~ | bes2\! r8. bes16 aes8 bes | des8. bes16 r4 r2 | r1 |
      \break
      r8 f' r16 f r8 f4 ees16 des bes r |
      r8 f' r16 f r8 f4 ees16 des bes r |
      r8 f' r16 f r8 f4 ees16 des bes r |
      r8 f' r16 f r8 f4 ees16 des bes r |
    }

    \break
    \section
    \sectionLabel \markup { \bold \box "Bridge" }
    r2 r4 r8 aes16 aes16 |
    \repeat volta 2 {
      bes16 bes r f r bes r c r g r8 r c16 c |
      des16 des r bes r des r c r f ees des bes aes f ees |
    }

    \break
    \section
    \sectionLabel \markup { \bold \box "One" \italic " (Get up, Stand up!)" }
    aes16 bes r8 c16 des r8 r2 | aes16 bes r des r aes bes r r2 |
    aes16 bes r8 c16 des r8 r2 | f16 r f ees r des bes r r2 |

    \break
    \section
    \sectionLabel \markup { \bold \box "Two" \italic " (Which side are you on?)" }
    bes8 bes des16 ees r f~ f4 r |
    f8 f ees16 des r bes~ bes4 r |
    bes8 bes des16 ees r f~ f4 r |
    f8 f ees16 des r bes~ bes4 r |
  }
}


%part: words
words = \markup { }

%part: changes
changes = \chordmode { }

%part: bass
bass = {
  \relative c
  {
    \key f \minor
    \time 4/4

    \section
    \sectionLabel \markup { \bold \box "Head" }
    \repeat volta 2 {
      \repeat percent 6 {
        bes8. f bes8 c8. g c8 |
        des8. bes des8 c8. bes8. aes8 |
      }
    }

    \break
    \section
    \sectionLabel \markup { \bold \box "Bridge" }
    r1
    \repeat volta 2 {
      bes8. f bes8 c8. g c8 |
      des8. bes des8 c8. bes8. aes8 |
    }

    \break
    \section
    \sectionLabel \markup { \bold \box "One" \italic " (Get up, Stand up!)" }
    \repeat percent 2 {
      bes8. f bes8 c8. g c8 |
      des8. bes des8 c8. bes8. aes8 |
    }
  

    \break
    \section
    \sectionLabel \markup { \bold \box "Two" \italic " (Which side are you on?)" }
    \repeat percent 2 {
      bes8. f bes8 c8. g c8 |
      des8. bes des8 c8. bes8. aes8 |
    }
  }
}

%\tempo 4=104
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
  \score {
    <<
      \set Score.rehearsalMarkFormatter = #format-mark-box-numbers


      % Group: Melody
      \new Staff \with { \consists "Volta_engraver" instrumentName = "Melody" } {
        \set Staff.midiInstrument = #"trumpet" \clef treble
        \tempo  4=104
        \override Score.RehearsalMark.self-alignment-X = #LEFT
        \melody
      }

      % Group: Bass
      \new Staff \with { \consists "Volta_engraver" instrumentName = "Bass" } {
        \set Staff.midiInstrument = #"tuba" \clef bass
        \tempo  4=104
        \override Score.RehearsalMark.self-alignment-X = #LEFT
        \bass
      }
    >> \layout { \context { \Score \remove "Volta_engraver" } }
  }
}