
\version "2.12.3"

\header { 
	tagline = "4/26/2015"
  title = "La Vida Es Un Carnaval"
  composer = "As sung by Celia Cruz. Arranged by Andrew Snyder"

  copyright = \markup {\bold { "Default Form:" }  "1, 2, 3, 1, Hits, Solos, 1, 2, 3, 1, Hits"}

}


%music pieces
%part: melody
melody = {
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'break-align-symbols = #'(clef)
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \transpose c bes
  {
    \relative c' {
      \set Score.markFormatter = #format-mark-box-letters

      \mark \markup \box \bold "Intro (1)"

      \repeat volta 2 {
        \repeat percent 2 {  e,4 c'8 c c4 e,8 e  |  r c' c c c4 r  }
        \break
        \repeat percent 2 {    f,4 c'8 c c4 f,8 f  |  r c' c c c4 r   }
      }

      \mark "D.S."
      <c e a>4 r2.  |  r1  |

      %VERSE
      \break \mark \markup \box \bold "Verse (2)"
      \repeat volta 2 {
        b4 c c b8 c~  |  c b c c d4 c  |  b c c r  |  c8 c c c d4 c  |
        \break
        b c c a8 b  | c c4 c8 d4 c  |  c b r2  |   e4 d c b  |
      }

      \break \mark \markup \box \bold "Chorus (3)"

      \repeat volta 2 {
        <a c>1~  |  <a c>4  <a c> <b d> <c e>  |  <a c>1~  |  <a c>4  <a c> <b d>8 <c e>4 <a c>8  |   <c e>4 <b d> <a c> r  |
        r  <a c>8 <b d> <c e> <b d> r  <a c> |  <c e>4 <b d> <a c> <b d> |
      }
      \alternative {
        { r4 <gis b> <a c> <b d>  }
        { <b d>2. r4 ^"D.C." }
      }

      \break \mark \markup {  \musicglyph #"scripts.segno"  \box \bold "Break (hits)"  }

      r4
      <gis d' e>8 <gis d' e>8 <gis d' e>4 r  |  <gis d' e>8 <gis d' e>8 <gis d' e>4 <gis d' e>8 <gis d' e>8 r4 |
      <gis d' e>8 <gis d' e>8  r4  <gis d' e>8 <gis d' e>8  r4  |  <gis d' e>8 <gis d' e>8  r4  <gis d' e>8 <gis d' e>8  r4
      \break \mark \markup \box \bold "Solos (Salsa Bridge)"
      \repeat volta 2 {
        c4 d e r  |  r2. a,4  |  gis a b r  |  r1  |  c4 d e r   |  r r8 e, e e e4 |  e' e d4. c8~  |  c2  r2  |
      }
    }
  }
}

%part: backingTrumpet
backingTrumpet = {
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'break-align-symbols = #'(clef)
  \transpose c bes
  {
    \relative c' {
      \set Score.markFormatter = #format-mark-box-letters

      \mark \markup \box \bold "Intro (1)"
      \repeat volta 2 {
        \repeat percent 2 {  e,4 c'8 c c4 e,8 e  |  r c' c c c4 r  }
        \break
        \repeat percent 2 {    f,4 c'8 c c4 f,8 f  |  r c' c c c4 r   }
      }

      \mark "D.S."
      <c e a>4 r2.  |  r1  |

      %VERSE
      \break \mark \markup \box \bold "Verse (2)"

      \repeat volta 2 {
        b4 c c b8 c~  |  c b c c d4 c  |  b c c r  |  c8 c c c d4 c  |
        \break
        b c c a8 b  | c c4 c8 d4 c  |  c b r2  |   e4 d c b  |
      }

      \break \mark \markup \box \bold "Chorus (3)"

      \repeat volta 2 {
        r4 c8 d c e r4  |  c8 d c e  r2  |  r4 a,8 a a4 e8 e  |  r c'4 b8 a4 r  |
        \break
        r2. r8 a  |  b c b r r2  |  <gis e'>1
      }
      \alternative {
        {  |  r1  }
        {  |  r1  ^"         D.C."  }
      }

      \break
      \break \mark \markup {  \musicglyph #"scripts.segno"  \box \bold "Break (hits)"  }
      r4  <gis d' e>8 <gis d' e>8 <gis d' e>4 r  |  <gis d' e>8 <gis d' e>8 <gis d' e>4 <gis d' e>8 <gis d' e>8 r4 |
      <gis d' e>8 <gis d' e>8  r4  <gis d' e>8 <gis d' e>8  r4  |  <gis d' e>8 <gis d' e>8  r4  <gis d' e>8 <gis d' e>8  r4

      \break \mark \markup \box \bold "Solos (Salsa Bridge)"
      \repeat volta 2 {
        c4 d e r  |  r2. a,4  |  gis a b r  |  r1  |  c4 d e r   |  r r8 e, e e e4 |  e' e d4. c8~  |  c2  r2  |
      }

      \break

    }
  }
}

%part: backingReeds
backingReeds = {
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'break-align-symbols = #'(clef)
  \transpose c bes
  {
    \relative c' {
      \set Score.markFormatter = #format-mark-box-letters

      %INTRO
      \mark \markup \box \bold "Intro (1)"

      \repeat volta 2 {
        \repeat percent 4 { r4 <c e>8 <c e>8    r4 <c e>8 <c e>8  }
        \repeat percent 4 { r4 <c f>8 <c f>8    r4 <c f>8 <c f>8  }
        \mark "D.S."
      }
      <c e a>4 r2.  |  r1  |

      \break

      %VERSE
      \break \mark \markup \box \bold "Verse (2)"

      \repeat volta 2 {
        \repeat percent 4 { r4 <c e>8 <c e>8    r4 <c e>8 <c e>8  }
        \repeat percent 2 { r4 <c f>8 <c f>8    r4 <c f>8 <c f>8  }
        r4 <d e>8 <d e> r4 <d e>8 <d e> e4 d c b  |
      }

      \break \mark \markup \box \bold "Chorus (3)"

      \repeat volta 2 {
        <a c>1~  |  <a c>4  <a c> <b d> <c e>  |  <a c>1~  |  <a c>4  <a c> <b d>8 <c e>4 <a c>8  |   <c e>4 <b d> <a c> r  |
        r  <a c>8 <b d> <c e> <b d> r  <a c> |  <c e>4 <b d> <a c> <b d> |
      }
      \alternative {
        { r4 <gis b> <a c> <b d>  }
        { <b d>2. r4 ^"D.C." }
      }
      \break
      \break \mark \markup {  \musicglyph #"scripts.segno"  \box \bold "Break (hits)"  }
      r4  <gis d' e>8 <gis d' e>8 <gis d' e>4 r  |  <gis d' e>8 <gis d' e>8 <gis d' e>4 <gis d' e>8 <gis d' e>8 r4 |
      <gis d' e>8 <gis d' e>8  r4  <gis d' e>8 <gis d' e>8  r4  |  <gis d' e>8 <gis d' e>8  r4  <gis d' e>8 <gis d' e>8  r4

      \break \mark \markup \box \bold "Solos (Salsa Bridge)"
      \repeat volta 2 {
        <c e>4 <e, a>8 <a c> r <c e> r <b d>  |
        r <gis b> r <b d> <c f> <c f> <b e>4 |
        <b e>4 <e, gis>8 <gis b> r <b d> r <a c> | r <e a> r <a c> <b f'> <b f'> <c e>4

        <c e>4 <e, a>8 <a c> r <c e> r <b d>  |
        r <gis b> r <b d> <c f> <c f> <b e>4 |
        <b e>4 <e, gis>8 <gis b> r <b d> r <a c> | r <e a> r <a c> <b f'> <b f'> <c e>4
      }

      \break

    }
  }
}


%part: bass
bass = \relative g, {
  \time 4/4 \key bes \major
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \set Score.markFormatter = #format-mark-box-letters
  \break \mark \markup \box \bold "Intro (1)"

  \repeat volta 2 {
    \repeat percent 4 { g4. bes d4 }
    \repeat percent 4 { es,4. g bes4 }
    \mark "D.S."
  }
  g'4 r2.  |  r1  |

  \break \mark \markup \box \bold "Verse (2)"
  \repeat volta 2 {
    \repeat percent 4 { g,4. bes d4 }
    \repeat percent 2 { es,4. g bes4 }
    d4. fis4. a4  |  d, c bes a  |
  }

  \break \mark \markup \box \bold "Chorus (3)"
  \repeat volta 2 {
    \repeat percent 4 { g4. bes d4 }
    \repeat percent 2 { es,4. g bes4 }
    d,4. fis4. a4
  }
  \alternative {
    {  d,4. fis4. a4 }
    {   d,4. fis4. a4  ^"D.C." }
  }
  \break \mark \markup {  \musicglyph #"scripts.segno"  \box \bold "Break (hits)"  }
  r1  |  r  |  r  |  r  |
  \break \mark \markup \box \bold "Solos (Salsa Bridge)"
  \repeat volta 2 {
    g4. bes d4
    {   \repeat percent 2 {  d,4. fis4. a4 } }
    g4. bes d4

    g,4. bes d4
    {   \repeat percent 2 {  d,4. fis4. a4 } }
    g4. bes d4
  }
}

%part: changes
changes = \chordmode {
  %intro
  g1:m | g1:m |  g1:m | g1:m |
  es es |  es es |
  g1:m | g1:m |

  %verse
  g1:m | g1:m |  g1:m | g1:m |
  es es | d1:7 | d1:7 |
  %chorus
  g1:m | g1:m |  g1:m | g1:m |
  es es | d1:7 | d1:7 |  d1:7 |
  %break
  |  d1:7 | d1:7 | d1:7 | d1:7 |
  % salsa break
  |  g1:m |d1:7 | d1:7 | g1:m |
  |  g1:m |d1:7 | d1:7 | g1:m |


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
			
		\transpose c c \new ChordNames { \set chordChanges = ##t \changes }
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
			\tempo  4 = 100
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\melody
		}
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"alto sax" \clef treble
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\backingTrumpet
		}
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"alto sax" \clef treble
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\backingReeds
		}
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"tuba" \clef bass
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\bass
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
}