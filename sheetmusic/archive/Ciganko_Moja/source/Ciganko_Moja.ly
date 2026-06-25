\version "2.12.2"

\header { 
	tagline = "4/26/2015"
  title = "Ciganko Moja"
  copyright = "3/16/15"
  composer="Trad. Roma"
  arranger="arr. Rumen Shopov"
  copyright =  \markup {\bold { "Default Form:" }  "Vamp, Head, Head, Solos/Drum break, Bridge (Miserlou), Vamp"}
}

%description:Literally "My Little Romani Girl", this is the title of many songs from Eastern Europe from the <a href="http://voiceofroma.com/">Romani culture</a>. The song we play is a traditional melody taught to us by <a href="http://www.eefc.org/Shopov.shtml">Rumen “Sali” Shopov</a> and local Balkan musician, <a target='_blank' href="http://www.huzzam.com/">Peter Jaques</a>.

%{ SOLO BACKING (WORK IT IN)
   from "ciganko_solo.ly"
   { d4-. r8 fis-. ees4-. fis-. | r8 c-. ees-. fis-. g4-- fis4-. }
   \\
   {  a4-. r8 d-. c4-. d-. | r8 a-. c-. d-. ees4-- d4-.  }

   from "ciganko_solo_backing.ly" (finale)
   <a d>4 _. r8 <d fis>8 _. <c es>4 _. <d fis>4 _. |
   r8 <a c>8 _. <c es>8 _. <d fis>8 _. <es g>4 _- <d fis>4 _. }
%}

%part: melody
melody =  \relative c'' {
  \break \mark \markup \box \bold {"Vamp" } 
 
  \repeat volta 4 {
    <d, fis a d>^\markup { "4x" \tiny \italic "(layer chord)"} r8 <a d fis a> <c es g c>4 <es g bes es> | r8 <d fis a d> r <a d fis a> <c es g c>4 <es g bes es> |
    <d fis a d> r8 <a d fis a> <c es g c>4 <d fis a d> | <es g bes es>8 <es g bes es> <es g bes es> r <c es g c> <c es g c> <c es g c> r
  }

  \break \mark \markup \box \bold {"Head" }
  \repeat volta 2 {
    g'4 g8 fis es4 es8 d | d2 fis8 g a4 |
    fis8 g g fis es4 es8 d | d4 fis8 g a fis g es |
    g4 g8 fis es4 es8 d | d2 fis8 g a4 |
    fis8 g g fis es4 es8 d | d4. es8 d c d4
  }

  \break 
  \repeat volta 2 {
    r fis8 g a4 a | a a a g |
    c2 bes | a4. g8 fis g a4
  }

  \break
  \repeat volta 2 {
    g4. fis8 es4. d8 | d2 fis8 g a4 |
    g4. fis8 es4. d8 | d4. es8 d c d4
  }
}

%part: bass
bass =  \relative c, {
  \repeat volta 4 {
    d^\markup { "4x" \tiny \italic "(layer chord)"} r8 a c4 es | r8 d r a c4 es |
    d r8 a c4 d | es8 es es r c c c r
  }

  \break \mark \markup \box \bold {"Head" }
  \repeat volta 2 {
    d4 r -"break 1st x only" r2 |
    d4. fis a4 | d,4. fis a4 |
    d, r r2 | d4. fis a4 |
    d,4. fis a4 | c,4. ees g4 |
    d4. fis a4
  }

  \break 
  \repeat volta 2 {
    |
    d,4. fis a4 |
    d,4. fis a4 |
    c,2 cis |
    d4. fis a4
  }

  \break 
  \repeat volta 2 {
    |
    d,4. fis a4 |
    d,4. fis a4 |
    c,4. ees g4 |
    d4. fis a4
  }
  \break \mark \markup \box \bold {"Solo Backing" }
   d,4. fis a4 |
   d,4. fis a4 |
   g4. bes d4 |
   c,4. ees g4 |
}

%part: tenor
tenor =  \relative c'' {
  \repeat volta 4 {
    d,^\markup { "4x" \tiny \italic "(layer chord)"} r8 a c4 es | r8 d r a c4 es |
    d r8 a c4 d | es8 es es r c c c r
  }

  \break \mark \markup \box \bold {"Head" }
  \repeat volta 2 {
    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    <d fis a>4 r r2 |
    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    r4 <c ees g>8 <c ees g> r <c ees g> <c ees g> <c ees g> |
    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a>
  }

  \break 
  \repeat volta 2 {
    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    c2 cis |
    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a>
  }

  \break 
  \repeat volta 2 {
    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
    r4 <c ees g>8 <c ees g> r <c ees g> <c ees g> <c ees g> |
    r4 <d fis a>8 <d fis a> r <d fis a> <d fis a> <d fis a> |
  }

}

%part: words
words = \markup { }

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
			\tempo   4 = 200
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\melody
		}
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"tuba" \clef bass
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\bass
		}
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trombone" \clef treble
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\tenor
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
}