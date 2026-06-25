\version "2.12.3"
\header { 
	tagline = "2/6/2026"
  source = ""
  style = ""
  copyright = "Copyright (C) Sebastian Isler"
  lastupdated = ""
  title = "Monserrat Serrat"
  poet = "Do / C"
  composer = "Sebastian Isler"
  arranger = "via HMB & EE"

}

%part: melody
melody = \relative c'' {
  %\set Staff.midiInstrument = "violin"
  \key f\minor
  \override Staff.TimeSignature   #'style = #'numbered
  \time 4/4
  \repeat volta 2 {
    \mark \default
    c1 ~ |
    c1 ~ |
    c2 bes4 c |
    ees4. c8~ c4 bes |
    c1 ~ |
    c1 ~ |
    c1 |
    bes1 |
    a1 ~ |
    a1 ~ |
    a1 |
    ges1 |
    f1 ~ |
    f1 ~ |
    f1 ~ |
    f1 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
  \break
  \repeat volta 2 {
    \mark \default
    c'8 c r c r c bes4 |
    ees4 des c bes |
    a8 a r a r bes a4 |
    r1 |
    \break
    c8 c r c r bes c des |
    ees4 des c bes |
    a8 a r a r bes a4 |
    r1 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
}

%part: harmony
harmony = \relative c'' {
  %\set Staff.midiInstrument = "violin"
  \key f\minor
  \override Staff.TimeSignature   #'style = #'numbered
  \time 4/4
  
  \mark \default
  << {
    ees1 ~ |
    ees1 ~ |
    ees2 des4 ees |
    g4. ees8~ ees4 des |
    ees1 ~ |
    ees1 ~ |
    ees1 |
    des1 |
    c1 ~ |
    c1 ~ |
    c1 |
    bes1 |
    a1 ~ |
    a1 ~ |
    a1 ~ |
    a1 |
     }
     \\
     {
       \bar "||"
       
       a1 ~ |
       a1 ~ |
       a2 ges4 a |
       c4. a8~ a4 ges |
       a1 ~ |
       a1 ~ |
       a1 |
       ges1 |
       f1 ~ |
       f1 ~ |
       f1 |
       des1 |
       c1 ~ |
       c1 ~ |
       c1 ~ |
       c1 |
  } >>
  \bar "||"
  
  \break
  
  \mark \default
  << {
  ees'8 ees r ees r ees des4 |
  ges4 f ees des |
  c8 c r c r des c4 |
  r1 |
  \break
  ees8 ees r ees r des ees f |
  ges4 f ees des |
  c8 c r c r des c4 |
  r1 |
      \bar "||"

     }
  \\
 { 
  a8 a r a r a ges4 |
  c4 bes a ges |
  f8 f r f r ges f4 |
  r1 |
  \break
  a8 a r a r ges a bes |
  c4 bes a ges |
  f8 f r f r ges f4 |
  r1 |
  
  \bar "||"
 } >>
}

%part: countermelody
countermelody = \relative c' {
  %\set Staff.midiInstrument = "viola"
  \key f\minor
  \override Staff.TimeSignature   #'style = #'numbered
  \time 4/4
  \repeat volta 2 {
    \mark \default
    
    r4 r8 <f c> r <f  c> <f c>4 |
    <ges bes,> <f c> <ges bes,> <f c> |
    r4 r8 <ges bes,> r <f des> <ees c>4 |
    r1 |
    
    r4 r8 <f c> r <f  c> <f c>4 |
    <ges bes,> <f c> <ges ees> <a des,> |
    r4 r8 <bes c,> ~ <bes c,> <des bes,> <c a,>4 |
    r1 |
    
    r4 r8 <f, c> r <f  c> <f c>4 |
    <ges bes,> <f c> <ges bes,> <f c> |
    r4 r8 <ges bes,> r <f des> <ees c>4 |
    r1 |
    
    r4 r8 <f c> r <f  c> <f c>4 |
    <ges bes,> <f c> <ges ees> <a des,> |
    r4 r8 <bes c,> ~ <bes c,> <ges bes,> <f a,>4 |
    r1 |
    
  }
  %\set Score.repeatCommands = #'(end-repeat)
  \break
  \repeat volta 2 {
    \mark \default
    
    c'8 c r c  r c bes4 |
    ees4 des c bes |
    a8 a r a r bes a4 |
    r1 |
    
    c8 c r c r bes c des |
    ees4 des c bes |
    a8 a r a r bes a4 |
    r1 |
    
  }
  %\set Score.repeatCommands = #'(end-repeat)
}

bassHead = \relative c {
  
  \repeat volta 2 {
    \mark \default
    f,4. c'8 ~ c4 f4 |
    ges4. des8 ~ des4 ges,4 |
    f4. c'8 ~ c4 f4 |
    ees2 r2 |
    
    f,4. c'8 ~ c4 f4 |
    ges4. des8 ~ des4 ges,4 |
    f2 ees |
    f2 r2 |
    
    f4. c'8 ~ c4 f4 |
    ges4. des8 ~ des4 ges,4 |
    f4. c'8 ~ c4 f4 |
    ees2 r2 |
    
    f,4. c'8 ~ c4 f4 |
    ges4. des8 ~ des4 ges,4 |
    f2 ees |
    f2 r2 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
}

bassBridge = \relative c {
  
  \repeat volta 2 {
    \mark \default
    
    f,4. c'8 ~ c4 f4 |
    ges4. des8 ~ des4 ges,4 |
    f4. c'8 ~ c4 f4 |
    ees2 r2 |
    
    f,4. c'8 ~ c4 f4 |
    ges4. des8 ~ des4 ges,4 |
    f2 ees |
    f2 r2 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
}

originalBass = \relative c {
  \override Staff.TimeSignature   #'style = #'numbered
  \key f\minor
  
  \repeat volta 2 {
    \mark \default
    f,4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,4. c'8 ~ c4 f4 |
    ees2 r2 |
    
    f,4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,2 ees |
    f2 r2 |
    
    f4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,4. c'8 ~ c4 f4 |
    ees2 r2 |
    
    f,4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,2 ees |
    f2 r2 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
  
  \repeat volta 2 {
    \mark \default
    f4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,4. c'8 ~ c4 f4 |
    ees2 r2 |
    
    f,4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,2 ees |
    f2 r2 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
}

eeBassHead = \relative c {
  
  \repeat volta 2 {
    \mark \default
    f,4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,4. c'8 ~ c4 f4 |
    ees2 r2 |
    
    f,4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,2 ees |
    f2 r2 |
    
    f4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,4. c'8 ~ c4 f4 |
    ees2 r2 |
    
    f,4. c'8 ~ c4 f4 |
    ges4. f8 ~ f4 ees4 |
    f,2 ees |
    f2 r2 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
}

eeBassBridge = \relative c {
  \repeat volta 2 {
    \mark \default
    f,8 f r f r c' c4 |
    f4 f c c |
    f,8 f r f r c' f,4 |
    r1 |
    
    f8 f r f r c' c4 |
    f4 f c c |
    f,8 f r f r c' f,4 |
    r1 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
}
%part: bass
bass = \relative c {
  \key f\minor
  \clef bass
  \bassHead
  \bassBridge
}
%part: altbass
altbass = \relative c {
  \key f\minor
  \clef bass
  \eeBassHead
  \eeBassBridge
}


zeBass = \relative c {
  \override Staff.TimeSignature   #'style = #'numbered
  \key f\minor
  
  \repeat volta 2 {
    \mark \default
    f4. c8 ~ c4 f4 |
    ges4. c,8 ~ c4 ges'4 |
    f4. c8 ~ c4 f4 |
    ees2 r2 |
    
    f4. c8 ~ c4 f4 |
    ges4. c,8 ~ c4 ges'4 |
    f2 ees |
    f2 r2 |
    
    f4. c8 ~ c4 f4 |
    ges4. c,8 ~ c4 ges'4 |
    f4. c8 ~ c4 f4 |
    ees2 r2 |
    
    f4. c8 ~ c4 f4 |
    ges4. c,8 ~ c4 ges'4 |
    f2 ees |
    f2 r2 |
    
  }
  %\set Score.repeatCommands = #'(end-repeat)
  
  \repeat volta 2 {
    \mark \default
    f4. c8 ~ c4 f4 |
    ges4. c,8 ~ c4 ges'4 |
    f4. c8 ~ c4 f4 |
    ees2 r2 |
    
    f4. c8 ~ c4 f4 |
    ges4. c,8 ~ c4 ges'4 |
    f2 ees |
    f2 r2 |
  }
  %\set Score.repeatCommands = #'(end-repeat)
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
			\tempo   4=180
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\melody
		}
		% Group: Harmony
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Harmony" } {  \set Staff.midiInstrument = #"clarinet" \clef treble
			\tempo   4=180
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\harmony
		}
		% Group: Countermelody
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Countermelody" } {  \set Staff.midiInstrument = #"alto sax" \clef treble
			\tempo   4=180
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\countermelody
		}
		% Group: Bass
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Bass" } {  \set Staff.midiInstrument = #"tuba" \clef bass
			\tempo   4=180
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\bass
		}
		% Group: Altbass
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Altbass" } {  \set Staff.midiInstrument = #"alto sax" \clef treble
			\tempo   4=180
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\altbass
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
}