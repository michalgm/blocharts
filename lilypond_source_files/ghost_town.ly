\version "2.18.2"

\header {
	tagline = "4/19/2026"

  title = "Ghost Town"
  composer = "The Specials (Arr. Geoff Lee)"
  copyright = \markup {\bold { "Default Form:" }  "Vamp, Head, 2, Head, 2, Bridge, Solos/Drum break, Head, 2"}
}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }

%music pieces
%part: melody
melody = {
  \relative c' {
    \key g \minor
    \mark \markup \box \bold "Vamp"
    \repeat volta 2 {
      R1*4
    }
    \repeat volta 2 {
      R1*4
    }
    \break \mark \markup \box \bold "Head"
    \repeat volta 2 {
  
      d1 | r4 d8 ees fis g fis ees | d1 | r1 |
      g4 <bes d>8 <a cis>~ <a cis>2~ | cis4. c8~c4 bes4 | g1 | r1 |
      \break
      d1 | r4 d8 ees fis g fis ees | d1 | r1 |
      d'2. c4 | aes2 g | fis dis8 dis r fis | r8 fis r fis b4 dis |
  
      \break \mark \markup \box \bold "2"
      d4 g, r2 | r4 r8 a g a g a | bes4 g r2 | r1 |
      d'2. d8 d | c2 ees | d8 ees d2. | r1 |
      \break
      d4 g, r2 | r4 r8 a g a g a | bes4 g r2 | r1 |
      d'2. c4 | aes2 g | fis dis8 dis r8 fis | r8 fis r fis b4 dis^"Fine" |
    } %%%% END REPEAT BACK TO HEAD

    \break \mark \markup \box \bold "Bridge"
    <bes, cis e g>1 | <b d f aes>1 |
    <c ees fis a>2 <cis e g bes>2 | <d f aes b>2 <ees fis a c> |
    \break \repeat volta 4 {
      des'4 des8 des c4  c8 c | bes4 bes8 c r bes aes4 | bes f2.
    }
    \alternative {
      { r1 }
      { r1 | r2 <a c d fis> }
    }
    \mark \markup \box \bold "Solos"
    \repeat volta 2 {
      R1*4
    }
          \mark \markup { "D.C. al fine" }
  }
}

%part: tenor
tenor = {
  \relative c {
    \key g \minor
    \mark \markup \box \bold "Vamp"
    \repeat volta 2 {
    r4 r8 <bes'' d>8~ <bes d>4. <a cis>8~ | <a cis>2 r8 c4 bes8 |
    g4 r8 <bes d>8~ <bes d>4. <a cis>8~ | <a cis>4. d8 c bes g f |
    }

    \repeat volta 2 {
      g4 r8 <bes d>8~ <bes d>4. <a cis>8~ | <a cis>2 r8 c4 bes8 |
      g4 r8 <bes d>8~ <bes d>4. <a cis>8~ | <a cis>4. d8 c bes g f |
    }
    \break \mark \markup \box \bold "Head"

    \repeat volta 2 {

      \repeat percent 2 {
        g4 r8 <bes d>8~ <bes d>4. <a cis>8~ | <a cis>2 r8 c4 bes8 |
        g4 r8 <bes d>8~ <bes d>4. <a cis>8~ | <a cis>4. d8 c bes g f |
      }
      \break
      g4 r8 <bes d>8~ <bes d>4. <a cis>8~ | <a cis>2 r8 c4 bes8 |
      g4 r8 <bes d>8~ <bes d>4. <a cis>8~ | <a cis>2 r2 |
      <f aes>2. <f aes>4 | <f aes>2 <ees g> |
      <ees ges> ces8 ces r ees | r ees r ees ges r ces r |
      \break \mark \markup \box \bold "2"
      \repeat percent 2 {
        g4 r8 <bes d>8~ <bes d>4. <a cis>8~ | <a cis>2 r8 c4 bes8 |
        g4 r8 <bes d>8~ <bes d>4. <a cis>8~ | <a cis>4. d8 c bes g f |
      }
      \break
      g4 r8 <bes d>8~ <bes d>4. <a cis>8~ | <a cis>2 r8 c4 bes8 |
      g4 r8 <bes d>8~ <bes d>4. <a cis>8~ | <a cis>2 r2 |
      <f aes>2. <f aes>4 | <f aes>2 <ees g> |
      <ees ges> ces8 ces r ees | r ees r ees ges r ces r^"Fine" |
    } %%%% END REPEAT BACK TO HEAD

    \break \mark \markup \box \bold "Bridge"
    <bes cis e g>1 | <b d f aes>1 |
    <c ees fis a>2 <cis e g bes>2 | <d f aes b>2 <ees fis a c> |
    
    \break \repeat volta 4 {
      r4 <ees ges>8 <ees ges> r4 <ees ges>8 <ees ges>8 | 
      r4 <ees ges>8 <ees ges> r4 <ees ges>8 <ees ges>8 | 
      r4 <f aes>8 <f aes>8 r4 <f aes>8 <f aes>8
    }
    \alternative {
      {   r4 <f aes>8 <f aes>8 r4 <f aes>8 <f aes>8 }
      {   r4 <f aes>8 <f aes>8  r4 <f aes>8 <f aes>8
         | r4 <f aes>  <c fis a>2 }
    }
    \mark \markup \box \bold "Solos"
    \repeat volta 2 {
      R1*4
    }
      \mark \markup { "D.C. al fine" }
  }
}

%part: bass
bass = {
  \relative c {
    \key g \minor
    \mark \markup \box \bold "Vamp"
    \repeat volta 2 {
      R1*4
    }
    \repeat volta 2 {
      g4 r8 bes~bes4 r4 | r4 r8 d~ d d4 d8 | g,4 r8 bes8~ bes4 r4 | r4 r8 d,8~ d d4 d8 |
    }
    \break \mark \markup \box \bold "Head"
    \repeat volta 2 {
      \repeat percent 3 {
        g4 r8 bes~bes4 r4 | r4 r8 d~ d d4 d8 | g,4 r8 bes8~ bes4 r4 | r4 r8 d,8~ d d4 d8 |
      }
      f4. f8~ f4 f | r4 f8 f~ f f f4 | fis2 fis8 fis r b | r b r b dis4 fis |
      \break \mark \markup \box \bold "2"
      \repeat percent 3 {
        g,4 r8 bes~bes4 r4 | r4 r8 d~ d d4 d8 | g,4 r8 bes8~ bes4 r4 | r4 r8 d,8~ d d4 d8 |
      }
      f4. f8~ f4 f | r4 f8 f~ f f f4 | fis2 fis8 fis r b | r b r b dis4 fis^"Fine" |
   } %%%% END REPEAT BACK TO HEAD

 
 \break \mark \markup \box \bold "Bridge"
    g,1 | aes1 | a2 cis | d a' |
    \break \repeat volta 4 {
      aes,4. aes8 aes4. aes8 | aes4. aes8~ aes8 aes8~ aes4 |
      des4. des8 des4. des8 |
    }
    \alternative {
      { des4. des8~ des8 des8~ des4 | }
      { des4. des8~ des8 des8~ des4 | des4 r4 d2 }
    }
    \mark \markup \box \bold "Solos"
    \repeat volta 2 {
      R1*4
    }
     \mark \markup { "D.C. al fine" }
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
\pointAndClickOff

\book {
	\score { <<
			\set Score.rehearsalMarkFormatter = #format-mark-box-numbers

			
		% Group: Melody
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Melody" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
			\tempo   4 = 200
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\melody
		}
		% Group: Tenor
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Tenor" } {  \set Staff.midiInstrument = #"trombone" \clef treble
			\tempo   4 = 200
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\tenor
		}
		% Group: Bass
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Bass" } {  \set Staff.midiInstrument = #"tuba" \clef bass
			\tempo   4 = 200
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\bass
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
}