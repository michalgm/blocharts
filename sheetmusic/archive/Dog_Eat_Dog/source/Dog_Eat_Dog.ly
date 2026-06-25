\version "2.12.1" 

\header { 
	tagline = "4/26/2015"
	title = "Dog Eat Dog"
	composer = "Fela Kuti"

	copyright = \markup {\bold { "Default Form:" }  "(Bass Vamp), Head, Bridge, Solos/Drum Breaks, Head (ending 3x)"}

	}
%description:Instrumental by Nigerian superstar <a href="http://www.fela.net/">Fela Kuti</a>, B-side from the 1977 single <i>No Agreement</i>. One of the B.L.O.'s most important political-musical inspirations, Fela was a vocal opponent of Nigerian military rule, where he was jailed, physically attacked, and put under house arrest at various periods of his life for his uncompromising dissent. His mother, feminist <a href="http://en.wikipedia.org/wiki/Funmilayo_Ransome-Kuti">Funmilayo Ransome-Kuti</a>, was murdered by government soldiers when they stormed Fela's compound, which he had declared the independent <a href="http://en.wikipedia.org/wiki/Kalakuta_Republic">Kalakuta Republic</a>. Fela died of complications from AIDS in 1997, and the profits from a 2003 Fela tribute album <a href="http://www.musicdirect.com/products/detail.asp?sku=LDR113075-2"><i>RED HOT + RIOT</i></a> support efforts to fight AIDS and HIV infection in sub-Saharan Africa.

%place before mark to position it at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }

% music pieces

%part: melody
melody = {
\relative c'' { \key g \minor
    \mark \markup \box \bold "Head"
    \repeat volta 2 {
    g16 bes c d f2 g16 f d c | a4 c8. a16 r2 |
    g16 bes c d f2 g16 f d c | a4 c8. a16 r2 |
    g16 bes c d f2 g16 f d c | a4 c8. a16 r4 f'8 g~  |}
    \alternative {
	{ g1~ | g1 \markdownright \mark \markup { \italic "fine"} | }
	{ g1\repeatTie~ | g2. r8 a | \bar "||" } 
    }
    \break \mark \markup \box \bold "Bridge"
    g4. f8 d4 r8 a' | g4. f8 d4 r8 a' | g4. f8 d4 r8 a' | g4. f8 d4 r | \bar "||"
	\markdownright \mark "D.C. al Fine"
}
}

%part: riffOne
riffOne = {
\relative c'' { \key g \minor
    \mark \markup \box \bold "Head"
    \repeat volta 2 {
	\repeat unfold 3 {
	  c16 d c8 bes g c16 d c bes r8 g | d'16 e d8 c a d16 e d c r8 a |
	  }
	}
    \alternative {
	{ c16 d c8 bes g c16 d c bes r8 g | d'16 e d8 c a d16 e d c r8 a \markdownright \mark \markup { \italic "fine"} | }
	{ c16 d c8 bes g c16 d c bes r8 g | d'16 e d8 c a d16 e d c r8 a | \bar "||" }
    }
    \break \mark \markup \box \bold "Bridge"
    r2 r16 bes[ r c] d8 r | r2 r16 bes[ r c] d8 r | r2 r16 bes[ r c] d8 r | r2 r16 bes[ r c] d8 r | \bar "||"
	\markdownright \mark "D.C. al Fine"
}
}

%part: riffTwo
riffTwo = {
\relative c'' { \key g \minor
    \mark \markup \box \bold "Head"
    \repeat volta 2 {
	\repeat unfold 3 {
	  r4 e8 d~ d8. e16 r8 d | r4 f8 e~ e8. f16 r8 e |
	  }
	}
    \alternative {
	{ r4 e8 d~ d8. e16 r8 d | r4 f8 e~ e8. f16 r8 e \markdownright \mark \markup { \italic "fine"} | }
	{ r4 e8 d~ d8. e16 r8 d | r4 f8 e~ e8. f16 r8 e | \bar "||" }
    }
    \break \mark \markup \box \bold"Bridge"
    r2 r16 g,[ r a] bes8 r | r2 r16 g[ r a] bes8 r | r2 r16 g[ r a] bes8 r | r2 r16 g[ r a] bes8 r | \bar "||"
	\markdownright \mark "D.C. al Fine"
}
}

%part: bass
bass = {
\relative c { \key g \minor
    \mark \markup \box \bold "Head"
    \repeat volta 2 {
	\repeat unfold 3 {
	  g4 bes c8. d16~ d4 | d, f a8. c16~ c4 |
	  }
	}
    \alternative {
	{ g4 bes c8. d16~ d4 | d, f a8. c16~ c4 | \markdownright \mark \markup { \italic "fine"} }
	{ g4 bes c8. d16~ d4 | d, f a8. c16~ c4 | \bar "||" }
    }
    \break \mark \markup \box \bold "Bridge"
    g4. d'8 c8. d16 r4 | g,4. d'8 c8. d16 r4 | g,4. d'8 c8. d16 r4 | g,4. d'8 c8. d16 r4 | \bar "||"
	\markdownright \mark "D.C. al Fine"

}
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
			\tempo  4 = 100 
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\melody
		}
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"alto sax" \clef treble
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\riffOne
		}
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"clarinet" \clef treble
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\riffTwo
		}
		\new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"tuba" \clef bass
			\override Score.RehearsalMark #'self-alignment-X = #LEFT
			\bass
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
}