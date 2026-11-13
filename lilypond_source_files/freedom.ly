\version "2.24.4"

\header {
  tagline = "10/7/2025"
  title = "Freedom"
  composer = "Rebirth Brass Band"
  arranger = "Arr. Geoff Lee, Jeff Giaquinto"
  copyright = \markup {\bold { "Default Form:" }  "Vamp, Head, Head, Solo 1, add backing 1, Bridge, Solo 2, add backing 2, Head, Coda"}
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
    \compressEmptyMeasures
    \override MultiMeasureRest.expand-limit = #1


    \section
    \sectionLabel \markup { \bold \box "Vamp" }
    \repeat volta 2 {
      R1*4
    }

    \section
    \sectionLabel \markup { \bold \box "Head" }
    \repeat volta 2 {
      bes1\<~\segno | bes2\! r8. bes16 aes8 bes | des8. bes16 r4 r2 | r1 |
    } % end volta

    \break
    \repeat volta 2 {
      r8 f' r16 f r8 f4 ees16 des bes r |
      r8 f' r16 f r8 f4 ees16 des bes r |
      r8 f' r16 f r8 f4 ees16 des bes r |
      r8 f'^"4x, D.S., last time to Coda" r16 f r8 f4 ees16 des bes r |
    } % end volta

    \break
    \section
    \sectionLabel \markup { \bold \box "Solo 1" }
    \repeat volta 4 {
      R1*4
    } % end volta

    \section
    \sectionLabel \markup { \bold \box "...Solo 1 backing" \italic " (Get up, Stand up!)" }
    \repeat volta 4 {
      aes16 bes r8 c16 des r8 r2 | aes16 bes r des r aes bes r r2 |
      aes16 bes r8 c16 des r8 r2 | f16 r f ees r des bes r r2 |
    } % end volta

    \break
    \section
    \sectionLabel \markup { \bold \box "Bridge" }
    %   r2 r4 r8 aes16 aes16 |
    \repeat volta 2 {
      bes16 bes r f r bes r c r g r8 r c16 c |
      des16 des r bes r des r c r f ees des bes aes f^"4x" ees |
    } % end volta

    \break
    \section
    \sectionLabel \markup { \bold \box "Solo 2" }
    \repeat volta 4 {
      R1*4
    } % end volta

    \section
    \sectionLabel \markup { \bold \box "...Solo 2 backing" \italic " (Which side are you on?)" }
    \repeat volta 2 {
    bes8 bes des16 ees r f~ f4 r |
    f8 f ees16 des r bes~ bes4 r |
    bes8 bes des16 ees r f~ f4 r |
    f8 f ees16 des r bes~ bes4^"D.S." r |
    } % end volta

    \section
    \sectionLabel \markup { \bold \box "Coda" }
      <bes d f bes>4\<~\coda
\fine

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
    \compressEmptyMeasures
    \override MultiMeasureRest.expand-limit = #1

    \section
    \sectionLabel \markup { \bold \box "Vamp" }
    \repeat volta 2 {
      \repeat percent 2 {
        bes8. f bes8 c8. g c8 |
        des8. bes des8 c8. bes8. aes8 |
      }
    }

    \break
    \section
    \sectionLabel \markup { \bold \box "Head" }
    \repeat volta 2 {
      \repeat percent 2 {
        bes8.\segno f bes8 c8. g c8 |
        des8. bes des8 c8. bes8. aes8 |
      } % end percent repeat
    } % end volta repeat

    \repeat volta 2 {
      bes8. f bes8 c8. g c8 |
      des8. bes des8 c8. bes8. aes8 |
      bes8. f bes8 c8. g c8 |
      des8. bes^"4x, D.S., last time to Coda" des8 c8. bes8. aes8 |
    } % end volta repeat

    \break
    \section
    \sectionLabel \markup { \bold \box "Solo 1" }
    \repeat volta 2 {
      \repeat percent 2 {
        bes8. f bes8 c8. g c8 |
        des8. bes des8 c8. bes8. aes8 |
      } % end percent repeat
    } % end volta repeat

    \section
    \sectionLabel \markup { \bold \box "...Solo 1 backing" \italic " (Get up, Stand up!)" }
    \repeat volta 2 {
      \repeat percent 2 {
        bes8. f bes8 c8. g c8 |
        des8. bes des8 c8. bes8. aes8 |
      } % end percent repeat
    } % end volta repeat

    \break
    \section
    \sectionLabel \markup { \bold \box "Bridge" }
    \repeat volta 2 {
      bes8. f bes8 c8. g c8 |
      des8. bes des8 c8. bes8. aes8^"4x" |
    }

    \section
    \sectionLabel \markup { \bold \box "Solo 2" }
    \repeat volta 2 {
      \repeat percent 2 {
        bes8. f bes8 c8. g c8 |
        des8. bes des8 c8. bes8. aes8 |
      } % end percent repeat
    } % end volta repeat

    \section
    \sectionLabel \markup { \bold \box "...Solo 2 backing" \italic " (Which side are you on?)" }
    \repeat volta 2 {
      bes8. f bes8 c8. g c8 |
      des8. bes des8 c8. bes8. aes8 |
      bes8. f bes8 c8. g c8 |
      des8. bes des8 c8. bes8.^"D.S." aes8 |
    } % end volta repeat

    \section
    \sectionLabel \markup { \bold \box "Coda" }
      bes4\coda 
        \fine

    %{
    \alternative {
      { % begin 1st ending
        {
        }
      } % repeat for 1st ending
      { % begin 2nd ending
        {
        }
      } % repeat for 2nd ending
    } % end "alternative" repeat
    %}

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


%{
Source recording timestamps
From "Rebirth Kickin' It LIve!"

0:00 drum roll...
0:13 tuba + bass drum, snare continues roll, vocalizing
0:35 [A] sung
0:53 [B] sung

1:10 [A] (horns)
1:29 [B]

1:47 [A'] <-- Variation on A section that BLO doesn't play

2:06 [SOLO 1] (tenor sax)
3:00 [SOLO backing 1] ("Get Up, Stand Up")

3:19 [SOLO 2] (trombone)

4:13 [BRIDGE]

4:31 [SOLO 3] (trumpet)
5:26 [SOLO backing 3] <-- BLO doesn't play, replaces with "Which Side Are You On?"

5:44 [A]
6:03 [B]

6:21 [A] sung
6:40 [B] sung

6:57 [BRIDGE]
%}

