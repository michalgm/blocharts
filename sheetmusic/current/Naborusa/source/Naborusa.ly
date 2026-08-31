\version "2.12.3"

\header { 
	tagline = "8/31/2026" 

  title = "Naborusa"
  composer = "Traditional?"
  copyright = "8/30/26" %date of latest edits
}
%description:Song of unclear origin (and many titles and varied spellings) from the <a href="http://voiceofroma.com/">Romani culture</a>. The version we play was taught to us by <a href="http://www.eefc.org/Shopov.shtml">Rumen “Sali” Shopov</a> and local Balkan musician, <a target='_blank' href="http://www.huzzam.com/">Peter Jaques</a>. 

%place a mark at bottom right
% markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
  \relative c' {
    \key f \minor
    \compressEmptyMeasures
    \override MultiMeasureRest.expand-limit = #1
    \section
    \sectionLabel \markup { \bold \box "Vamp"}

    \repeat volta 4 {
      r1^"4x"
    } % end 1st vamp repeat
    \repeat volta 4 {
      r1
    } % end 2nd vamp repeat
    \alternative { { r1 } {  r } }
    
    \mark \default % Section 1
    \repeat volta 2 {
      c8.\segno c16~ c8 c c'4 bes8 aes | g16 aes r bes~ bes2. | des,8. des16~ des8 f aes4 g8 f |
    }
    \alternative { { g16 f r e~ e2. | } { g16 f r e~ e2. | } }

    \break \mark \default  % Section 2
    \repeat volta 2 {
      des4. f8 aes4 g8 f | g16 aes r bes~ bes2. | des,4. f8 aes4 g8 f |
    }
    \alternative { { g16 f r e~ e2. | } { g16 f r e~ e2. | } }

    \break \mark \default % Section 3
    \repeat volta 2 {
      r8 c' c c c8. aes16~ aes8 bes |
      c1 |
      r8 c des c bes4 aes8 bes |
      aes8. g16 g2. |
    }

    \break \mark \default % Section 4
    \repeat volta 2 {
      r8 f( f f f4 g8 aes | g16 f r ees~ ees2. -\bendAfter #-4 |
      des8) des des des des4 ees8 f  |
    }
    \alternative { { e16 des r  c~ c2. } { e16 des r^"D.S., Solos, last x to Coda" c~ c2. } }
    
    \break
    \section
    \sectionLabel \markup { \bold \box "Solos"}
    \repeat volta 4 {
      R1*2^"Open, then D.S. al Coda" 
    } % end solos repeat
    c'1\coda  \fine
  }
}

% part: tersa
tersa = {
  \relative c' {
    \key f \minor
    \compressEmptyMeasures
    \override MultiMeasureRest.expand-limit = #1
    \section
    \sectionLabel \markup { \bold \box "Vamp"}
    \repeat volta 4 {
      r1^"4x"
    } % end 1st vamp repeat
    \repeat volta 4 {
      r1
    } % end 2nd vamp repeat
    \alternative { { r1 } {  r } }


    \mark \default
    \repeat volta 2 {
      aes8.\segno aes16~ aes8 aes aes'4 g8 f | e16 f r g~ g2. |
      bes,8. bes16~ bes8 des f4 e8 des |
    }
    \alternative { { e16 des r c~ c2. | } { e16 des r c~ c2. | } }

    \break \mark \default
    \repeat volta 2 {
      bes4. des8 f4 e8 des | e16 f r g~ g2. |
      bes,4. des8 f4 e8 des |
    }
    \alternative { { e16 des r c~ c2. | } { e16 des r c~ c2. | } }

    \break \mark \default
    \repeat volta 2 {
      r8 aes' aes aes aes8. f16~ f8 g | aes1 | r8 aes bes aes g4 f8 g | f8. e16 e2. |
    }

    \break \mark \default
    \repeat volta 2 {
      r8 aes( aes aes aes4 bes8 c | bes16 aes r g~ g2. -\bendAfter #-4 |
      f8) f f f f4 g8 aes | 
    }
    \alternative { { g16 f r  e~ e2. } {  g16 f r^"D.S., Solos, last x to Coda"  e~ e2. } }

    \break
    \sectionLabel \markup { \bold \box "Solos"}
    \repeat volta 4 {
      R1*2^"Open, then D.S. al Coda" 
    } % end solos repeat
    e'1\coda  \fine

  }
}

%part: tenor
tenor = {
  \relative c'' {
    \key f \minor
    \compressEmptyMeasures
    \override MultiMeasureRest.expand-limit = #1
    \section
    \sectionLabel \markup { \bold \box "Vamp"}
    \repeat volta 4 {
      r1^"4x"
    } % end 1st vamp repeat
    \repeat volta 4 {
      r16 <g c e> r <g c e> r <g c e> <g c e>  <g c e>
      r16 <g c e> r <g c e> r <g c e> <g c e>  <g c e>
    } % end 2nd vamp repeat
    \alternative { { r16 <g c e> r <g c e> r <g c e> <g c e>  <g c e>
                     r16 <g c e> r <g c e> r <g c e> <g c e>  <g c e> } 
                   {  r16 <g c e> r <g c e> r <g c e> <g c e>  <g c e>
                      r16 <g c e> r <g c e> r <g c e> <g c e>  <g c e> } }

    \mark \default % Section 1    
    \repeat volta 2 {
      <f as c f>16^"1st time break"\segno <f as c f> r <f as c f>  r <f as c f> <f as c f> <f as c f>      
      r16 <f as c f> r <f as c f> r <f as c f> <f as c f> <f as c f>
      r16 <g c e> r <g c e> r <g c e> <g c e>  <g c e>
      r8 des' c ces |
      bes16 <f bes des> r <f bes des> r <f bes des> <f bes des> <f bes des>
      r16 <f bes des> r <f bes des>r <f bes des> <f bes des> <f bes des> |
    }
    \alternative {
      {
        r16 <g c e> r <g c e> r <g c e> <g c e>  <g c e>
        r8 c des e |
      }
      {
        r16 <g, c e> r <g c e> r <g c e> <g c e>  <g c e>
        r8 des' c ces |
      }
    }
    \break

    \mark \default % Section 2
    \repeat volta 2 {
      bes16 <f bes des> r <f bes des> r <f bes des> <f bes des> <f bes des>
      r <f bes des> r <f bes des> r <f bes des> <f bes des> <f bes des> ] |
      r16 <g c e> r <g c e> r <g c e> <g c e>  <g c e>
      r8 des' c ces |
      bes16 <f bes des> r <f bes des> r <f bes des> <f bes des> <f bes des>
      r <f bes des> r <f bes des> r <f bes des> <f bes des> <f bes des> |
    }
    \alternative {
      {
        r16 <g c e> r <g c e> r <g c e> <g c e>  <g c e>
        r8 des' c ces |
      }
      {
        r16 <g c e> r <g c e> r <g c e> <g c e>  <g c e>
        r8 c, des e |
      }

    }
    \break

    \mark \default % Section 3
    \repeat volta 2 {
      <f as c>8 r8 r4 <f as c>4 <des f des'>|
      <f as c>2 r8 bes as g|
      f16 <f as c> r <f as c> r <f as c> <f as c> <f as c>
      r16 <f as c> r <f as c> r <f as c> <f as c> <f as c> |
      r16 <g c e> r <g c e> r <g c e> <g c e>  <g c e>
      r8 c, des e |
    }
    \break

    \mark \default % Section 4
    \repeat volta 2 {
      <f as c>1 |
      <g bes es> |
      <f as des> |
    } 
    \alternative { {   <g c e>2 r8 c  des e | } {   <g, c e>1^"D.S., Solos, last x to Coda" } }

    \break
    \section
    \sectionLabel \markup { \bold \box "Solos"}
    \repeat volta 4 {  
      R1*2^"Open, then D.S. al Coda" 
    } % end solos repeat
    <g c e>1\coda \fine
  }
}



%part: bass
bass = {
  \relative c' {
    \key f \minor
    \compressEmptyMeasures
    \override MultiMeasureRest.expand-limit = #1
    \section
    \sectionLabel \markup { \bold \box "Vamp"}
    \repeat volta 4 {
      c,8[ r16 g] r8 bes r16 c r c  g8 bes^"4x" |
    } % end 1st vamp repeat
    \repeat volta 4 {
      c[ r16 g] r8 bes r16 c r c  g8 bes |
    } % end 2nd vamp repeat
    \alternative { {  c[ r16 g] r8 bes r16 c r c  g8 bes | }
                   { c[ r16 g] r8 bes r c, des e | } }

    
    \mark \default % Section 1
    \repeat volta 2 {
      f8\segno^"1st time break"  r16 c   r8 f   r c f c   
      % f8[  r16 c] r8 f r c f c 
      | c'8[ r16 g] r8 bes r des c ces |
      bes[ r16 f] r8 aes r bes des bes |
    }
    \alternative { { c[ r16 g] r8 bes r c, des e | } { c'[ r16 g] r8 bes r des c ces | } }

    \break \mark \default % Section 2
    \repeat volta 2 {
      bes[ r16 f] r8 aes r bes des bes | c[ r16 g] r8 bes r des c ces |
      bes[ r16 f] r8 aes r bes des bes |
    }
    \alternative { { c[ r16 g] r8 bes r des c ces | } { c[ r16 g] r8 bes r c, des e | } }

    \break \mark \default % Section 3
    \repeat volta 2 {
      f8-- r r4 f as| f8[ r16 c] r8 f r bes aes g |
      f[ r16 c] r8 f r c f c | c'[ r16 g] r8 bes r c des e |
    }

    \break \mark \default % Section 4
    \repeat volta 2 {
      f[ r16 c] r8 f r c f c | ees[ r16 bes] r8 ees r f ees d |
      des[ r16 aes] r8 des r aes des8 aes |
    }
    \alternative { {   c[ r16 g] r8 bes r c  des e } {  c[ r16 g]^"D.S., Solos, last x to Coda" r8  bes r16 c r c  g8 bes  } }

    \break
    \section
    \sectionLabel \markup { \bold \box "Solos"}
    \repeat volta 4 {
      c,[^"(Or, easier: play prev bar/Vamp)" r16 e] r8 g   r16 as r g  as g f e 
      c8[ r16^"Open, then D.S. al Coda"  e] r8 g   r16 des r bes  des8 bes16 des
    } % end solos repeat
  
    c1\coda \fine
  }
}

%part: words
words = \markup { }

%part: changes
changes = \chordmode { 
  % VAMP
  c:7  | c:7  | c:7  | c:7  | 

% Section 1
f1:m | c:7 | bes:m | c:7 | c:7 |

% Section 2
bes:m | c:7 | bes:m | c:7 | c:7 |

% Section 3
f:m | f:m | f:m | c:7 | 

% Section 4
f:m | ees | des | c:7 |

% Solos
c:7 | c:7

% Coda
c:7
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
			\tempo   4 = 100 
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\melody
		}
		% Group: Tenor
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Tenor" } {  \set Staff.midiInstrument = #"trombone" \clef treble
			\tempo   4 = 100 
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\tenor
		}
		% Group: Bass
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Bass" } {  \set Staff.midiInstrument = #"tuba" \clef bass
			\tempo   4 = 100 
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\bass
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
}