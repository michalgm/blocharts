\version "2.12.3"

\header { 
  tagline = "4/30/2025"
  title = "Do What You Wanna"
  composer = "Rebirth Brass Band"
  arranger = "Arr. Andrew Snyder, Jeff Giaquinto"

  copyright = \markup {\bold { "Default Form:" }  "Intro, A B, A B, Solos, A B, Bridge, A"}

}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
  \relative c'
  {
    \key bes \major
    \time 2/2

    \mark \markup \box \bold "Intro"
    \repeat volta 4 {
      r8 bes'4 aes8 f4 r8 bes8 | r8 bes4 aes8 f4 r4 |
      r8 bes4 aes8 f4 g
    }
    \alternative {
      { as4 g8 f8 r2 }
      { as4 f8 f g bes4 g8 }
    }

\break
    \mark \markup \box \bold "A"
    \repeat volta 2 {
      <f bes>1\segno
      | r4 f8 f g bes4 g8
      <f bes>1
      | r4 f8 f g bes4 g8
      <f bes>1
      
      | r4 f8 f g bes4 g8
      <as c>4 <g des'> <as c> <g des'>  | 
    }
    \alternative {
      { <g bes>8 r f8 f g bes4 g8 }
      { <g bes>8 <as c>4 <g bes>8 r2 }
    }

    \break
    \mark \markup \box \bold "B"
    \repeat volta 2 {
      <bes d>8^\markup { \italic tutti }  <bes d> r4 <as c>8 <as c> r4  |  <g bes>8 <g bes> r4 <f as> <d f>~
      <d f> <f as> <f as> <g bes>  |  <des c'>8 <c bes'> <bes as'>4 r <d f>~
      <d f> <f as> <f as> <g bes>  |  <as des> r <g c> <f bes>  |  r1
    }
    \alternative {
      { r1 }
      { r4 f8^\markup { \tiny "if returning to A" } f \mark \markup { \italic "D.S." } g bes4 g8  }
    }

    \break
    \mark \markup \box \bold "Bridge"
    \repeat volta 2 {
      |  r4^\markup {\italic tutti }   <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      |  <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
            |  r4  <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
      \break
      |  r4  <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
    }
    \alternative {
      {
        r4  <as des>8  <g c>~  <g c>4  <as des>8 <g c>~  |  <g c>4  <c f>8 <bes es>~ <bes es>4  r4  |
      }
      {
        r4 <as c>8 <g bes>~ <g bes>4  <as c>8 <g bes>8~ <g bes>4 f8 f \mark \markup { \italic "D.S." } g bes4 g8 
      }
    }

    \break \mark \markup \box \bold {"Solo Backing"}
    | r2.^\markup { during solos sometimes (groups of 4!) } r8 d8~
    \repeat volta 2 {
      | d f g bes~ bes g8 r4  |
      | r8  <es g>16  [( <f as>)]  <es g>8  r r <es g>16 ([ <f as> ]) <es g>8 d~
    | d f g bes~ bes g8 r4  |
      <as c>4. <g bes>8~  <g bes>4 <g bes>8 d8~ 
    }
  }
}

%part: melodyResponse
melodyResponse = {
  \relative c'
  {
    \key bes \major
    \time 2/2

    \mark \markup \box \bold "Intro"
    \repeat volta 4 {
      r8 d'4^\markup { \tiny "tacit until 3x" } c8 as4 r8 d8 | r8 d4 c8 as4 r4 |
      r8 d4 c8 as4 bes
    }
    \alternative {
      { c4 bes8 as8 r2 }
      { c4 r2. }
    }

    \break
    \mark \markup \box \bold "A"
    \repeat volta 2 {
      | r4\segno f,8 f g bes4 g8
      <f bes>1
      | r4 f8 f g bes4 g8
      <f bes>1
      | r4 f8 f g bes4 g8
      <f bes>1
  
      <as c>4 <g des'> <as c> <g des'>  | 
    }
    \alternative {
      { <g bes>8 <as c>4 <g bes>8 r2 }
      { <g bes>8 <as c>4 <g bes>8 r2 }
    }

    \break
    \mark \markup \box \bold "B"
    \repeat volta 2 {
      <bes d>8^\markup { \italic tutti }  <bes d> r4 <as c>8 <as c> r4  |  <g bes>8 <g bes> r4 <f as> <d f>~
      <d f> <f as> <f as> <g bes>  |  <des c'>8 <c bes'> <bes as'>4 r <d f>~
      <d f> <f as> <f as> <g bes>  |  <as des> r <g c> <f bes>  |  r1
    }
    \alternative {
      { r1 }
      { r1 }
    }

    \break
    \mark \markup \box \bold "Bridge"
    \repeat volta 2 {
      |  r4^\markup {\italic tutti }   <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      |  <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
            |  r4  <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
      \break
      |  r4  <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
    }
    \alternative {
      {
        r4  <as des>8  <g c>~  <g c>4  <as des>8 <g c>~  |  <g c>4  <c f>8 <bes es>~ <bes es>4  r4  |
      }
      {
        r4 <as c>8 <g bes>~ <g bes>4  <as c>8 <g bes>8~ <g bes>4 f8 f g bes4 g8 
      }
    }

    \break \mark \markup \box \bold {"Solo Backing"}
    | r2.^\markup { during solos sometimes (groups of 4!) } r8 d8~
    \repeat volta 2 {
      | d f g bes~ bes g8 r4  |
      | r8  <es g>16  [( <f as>)]  <es g>8  r r <es g>16 ([ <f as> ]) <es g>8 d~
    | d f g bes~ bes g8 r4  |
      <as c>4. <g bes>8~  <g bes>4 <g bes>8 d8~
    }
  }
}

%part: tenor
tenor = {
  \relative c'
  {
    \key bes \major
    \time 2/2

    \mark \markup \box \bold "Intro"
    \repeat volta 4 {
      R1*3
    }
    \alternative {
      { r1 }
      { r1 }
    }

    \break
    \mark \markup \box \bold "A"
    \repeat volta 2 {
      r4.\segno <d f>8~ <d f>2
      <es g>1
      r4.  <d f>8~ <d f>2
      <es g>1
      r4.  <d f>8~ <d f>2
      <es g>1
      | es4 c bes c 
    }
    \alternative {
      { |  bes8 c4 bes8 r2 | }
      { |  bes8 c4 bes8 r2 | }
    }

    \break
    \mark \markup \box \bold "B"
    \repeat volta 2 {
      <bes' d>8^\markup {\italic tutti }  <bes d> r4 <as c>8 <as c> r4  |  <g bes>8 <g bes> r4 <f as> <d f>~
      <d f> <f as> <f as> <g bes>  |  <des c'>8 <c bes'> <bes as'>4 r <d f>~
      <d f> <f as> <f as> <g bes>  |  <as des> r <g c> <f bes>  |  r1
    }
    \alternative {
      { r1 }
      { \mark \markup { \italic "D.S." } r1 }
    }

    \break
    \mark \markup \box \bold "Bridge"
    \repeat volta 2 {
      |  r4^\markup {\italic tutti }   <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      |  <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
            |  r4  <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      <g c>4 <f bes>8 <d as'> <f bes>4 <g c>   |
      \break
      |  r4  <as des>8 <as des>8~ <as des>4  <g c>8 <g c>~  
      <g c>4 <f bes>8 <d as'> <f bes>4 <g c>  |
    }
    \alternative {
      {
        r4  <as des>8  <g c>~  <g c>4  <as des>8 <g c>~  |  <g c>4  <c f>8 <bes es>~ <bes es>4  r4  |
      }
      {
           r4 <as c>8 <g bes>~ <g bes>4  <as c>8 <g bes>8~ <g bes>4 f8 f \mark \markup { \italic "D.S." }  g bes4 g8 
      }
    }

    \break \mark \markup \box \bold {"Solo Backing"}
    | r2.^\markup { during solos sometimes (groups of 4!) } r8 d8~
    \repeat volta 2 {
      | d f g bes~ bes g8 r4  |
      | r8  <es g>16  [( <f as>)]  <es g>8  r r <es g>16 ([ <f as> ]) <es g>8 d~
    | d f g bes~ bes g8 r4  |
      <as c>4. <g bes>8~  <g bes>4 <g bes>8 d8~
    }
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
    \key es \major
    \time 2/2

    \mark \markup \box \bold "Intro"
    \repeat volta 4 {
      R1*3
    }
    \alternative {
      { r1 }
      { r1 }
    }

    \break
    \mark \markup \box \bold "A"
    \repeat volta 2 {
      \repeat percent 3 { bes4.\segno d f4  |  es,4. g bes4
      }
       bes4. d f4  |  
    }
    \alternative {
      { es,4. g bes4 }
      { es,4. g bes4 }
    }
    

    \break
    \mark \markup \box \bold "B"
    \repeat volta 2 {
      \repeat percent 3 { bes4. d f4  |  es,4. g bes4 }
      bes4. d f4
    }
    \alternative {
      { es,4. g bes4 }
      { es,4. g  \mark \markup { \italic "D.S." } bes4 }
    }
    \break
    \mark \markup \box \bold "Bridge"
    \repeat volta 2 {
      \repeat percent 3 { bes4 r2.  |  r4 bes r bes  | }
    }
    \alternative {
      { bes4 r2.  | r4 bes r bes  | }
      { bes4 r4 r4. bes8~  | bes2. \mark \markup { \italic "D.S." }  r4 | }
    }
  }
}

%\tempo 4=180
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
    \override MultiMeasureRest #'expand-limit = #1

    \new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
                                                       \tempo  4=180
                                                       \override Score.RehearsalMark #'self-alignment-X = #LEFT
                                                       \melody
    }
    \new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
                                                       \override Score.RehearsalMark #'self-alignment-X = #LEFT
                                                       \melodyResponse
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



#(set-default-paper-size "letter")
\book {   \bookOutputSuffix "C_melody"
        \header {
          poet = "Melody in C"
        }
  \score { <<
    \set Score.markFormatter = #format-mark-box-numbers

    \new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
                                                       \tempo  4=180
                                                       \override Score.RehearsalMark #'self-alignment-X = #LEFT
                                                       \melody
    }
    \new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
                                                       \override Score.RehearsalMark #'self-alignment-X = #LEFT
                                                       \melodyResponse
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } } }  
}


#(set-default-paper-size "letter")
\book { \bookOutputSuffix "Bb_melody"
        \header {
          poet = "Melody in Bb"
        }
  \score { <<
    \set Score.markFormatter = #format-mark-box-numbers

    \new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
                                                       \tempo  4=180
                                                       \override Score.RehearsalMark #'self-alignment-X = #LEFT
                                                       \transpose c d  %% TRANSPOSES NOTES
                                                       \melody
    }
    \new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
                                                       \override Score.RehearsalMark #'self-alignment-X = #LEFT
                                                       \transpose c d  %% TRANSPOSES NOTES
                                                       \melodyResponse
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } } }  
}


#(set-default-paper-size "letter")
\book {   \bookOutputSuffix "Eb_melody"
        \header {
          poet = "Melody in Eb"
        }
  \score { <<
    \set Score.markFormatter = #format-mark-box-numbers

    \new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
                                                       \tempo  4=180
                                                       \override Score.RehearsalMark #'self-alignment-X = #LEFT
                                                       \transpose c a  %% TRANSPOSES NOTES
                                                       \melody
    }
    \new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
                                                       \override Score.RehearsalMark #'self-alignment-X = #LEFT
                                                       \transpose c a  %% TRANSPOSES NOTES
                                                       \melodyResponse
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } } }  
}




#(set-default-paper-size "letter")
\book { \bookOutputSuffix "C_tenor"
        \header {
          poet = "Tenor backing part in C"
        }
  \score { <<
    \set Score.markFormatter = #format-mark-box-numbers

    \new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
                                                       \tempo  4=180
                                                       \override Score.RehearsalMark #'self-alignment-X = #LEFT
                                                       \tenor
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } } }  
}



#(set-default-paper-size "letter")
\book { \bookOutputSuffix "Bb_tenor"
        \header {
          poet = "Tenor backing part in Bb"
        }
  \score { <<
    \set Score.markFormatter = #format-mark-box-numbers

    \new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
                                                       \tempo  4=180
                                                       \override Score.RehearsalMark #'self-alignment-X = #LEFT
                                                                   \transpose c d  %% TRANSPOSES NOTES
                                                       \tenor
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } } }  
}


#(set-default-paper-size "letter")
\book {   \bookOutputSuffix "Eb_tenor"
        \header {
          poet = "Tenor backing part in Eb"
        }
  \score { <<
    \set Score.markFormatter = #format-mark-box-numbers

    \new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
                                                       \tempo  4=180
                                                       \override Score.RehearsalMark #'self-alignment-X = #LEFT
                                                                   \transpose c a  %% TRANSPOSES NOTES

\tenor
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } } }  
}


#(set-default-paper-size "letter")
\book { \bookOutputSuffix "Tuba"
        \header {
          poet = "Bass"
        }
  \score { <<
    \set Score.markFormatter = #format-mark-box-numbers

    \new Staff \with { \consists "Volta_engraver" } {  \set Staff.midiInstrument = #"trumpet" \clef bass
                                                       \tempo  4=180
                                                       \override Score.RehearsalMark #'self-alignment-X = #LEFT

                                                       \bass
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } } }  
}