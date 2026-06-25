
\version "2.12.3"

\header {
  tagline = "2/27/2014"
  
  title = "Pineapple Salsa"
  composer = "Breakfast"
  %arranger = \markup {\tiny "Arr: Jeff Giaquinto"}
  
  copyright = \markup {\bold ""} %form
}
  flatadj = \markup { \translate #'(0.2 . 0.2) \fontsize #-1 \flat } 
chExceptionMusic = { 
   <c ees ges bes>1-\markup { "m" \super \concat {"7" \hspace #0.3 \flatadj "5"} }% half-diminished
}

chExceptions = #( append
  ( sequential-music-to-chord-exceptions chExceptionMusic #t)
  ignatzekExceptions)

%Part: melody
melody = \relative c'' {
  \time 4/4  \numericTimeSignature  \key g \minor
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  
  \break \mark \markup \box \bold "1"
  g4 bes8 a~a c~c bes~ | bes d~d c c4 ees8 d| ees d c d~d g~g d~ | d4 r2 d4 |
  c4 d8 ees~ ees g~g ees | fis d a' g~ g4 r4 | d4\ff c8 bes bes a~a d~ | d fis, ~ fis g g4 r4|
 
 \break \mark \markup \box \bold "2"
  \repeat volta 2 {
    g4 bes8 a~a fis~fis g | r1 | g4 bes8 a~a c~c d | r1 |
    \break
    ees4. c8 r2 | d4. bes 8 r2 | a8 r r d r4 g,8 r |  r1 |
  }
  \break
  a8 r r d r4 g,8 r | r1 | a8 r r d r4 fis8-> g-> | r1 |

  \break \mark \markup \box \bold "Solos"
  \bar "|:" a,8 r r d r4 g,8 r | r1 \bar ":|"
  
}

%Part: tenor
tenor = \relative c'' {
  \time 4/4  \numericTimeSignature  \key g \minor
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  
  \break \mark \markup \box \bold "1"
  <bes d g>4. <bes d g>8~<bes d g> <bes d g>4. | <c ees a>4. <c ees a>8~<c ees a> <c ees a>4. | <c ees g>4. <c d fis>8~<c d fis> <c d fis>4. |  <bes d g>4. <bes d g>8~<bes d g> <bes d g>4. |
  \break
  <c ees g>4. <c ees g>8~<c ees g> <c ees g>4. | <c d fis>  << { bes8-\bendAfter #-8 } \\ { <g' d>8 } >> r2 | d4 c8 bes~ bes a~ a d | d fis,~fis g g4 r4 |

  \break \mark \markup \box \bold "2"
  \repeat volta 2 {
    <bes d g>4 <d g bes>8 <c fis a>~<c fis a> <a d fis>~<a d fis> <bes d g> | r1 | <bes d g>4 <d g bes>8 <c ees a> ~ <c ees a> <ees g c>~<ees g c> <fis a d> | r1 |
    \break
    <g c ees>4. <es g c>8 r2 | <g bes d>4. <d g bes>8 r2 | <c ees a>8 r r <fis a d> r4 <bes, d g>8 r | r1 |
  }
  \break
  <c ees a>8 r r <fis a d> r4 <bes, d g>8 r | r1 | <c ees a>8 r r <fis a d> r4 <a c fis>8-> <bes d g>-> | r 1 |

  \break \mark \markup \box \bold "Solos"
  \bar "|:" <c, ees a>8 r r <fis a d> r4 <bes, d g>8 r | r1 |\bar ":|"
}
%part: changes
changes = \chordmode {

  \set chordNameExceptions = #chExceptions
  
    \time 4/4  \numericTimeSignature  \key g \minor
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  
  \break \mark \markup \box \bold "1"
  g:m | a:m7.5- | c2:m d2:7 | g1:m | c:m | d2:7 g2:m | r1 | r | 
  \break \mark \markup \box \bold "2"
  \repeat volta 2 {
    g4.:m d2:7 g8:m | r1 | g4.:m a2:m7.5- d8 | r1 |
    c:m | g:m |  a4.:m7.5- d4.:7 g4:m | r1 | 
  }
}

%Part: bass
bass = \relative c {
  \time 4/4  \numericTimeSignature  \key g \minor
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  
  \break \mark \markup \box \bold "1"
  g4. d'8~d4 g4 | g,4. a8~a4 ees'4 | c4. d8~d4 fis4 | g4. d8~d g,4.-> |
  c4. g'8~g4 ees | d4. g8~g8 bes,4 c8 | d4\ff c8 bes~bes a~a d | d fis,~fis g g4 r4 |

  \break \mark \markup \box \bold "2"
  \repeat volta 2 {
    g4 bes8 a~a fis~fis g | r1 | g4 bes8 a~a c~c d | r1 |
    \break
    ees4. c8 r2 | d4. bes 8 r2 | a8 r r d r4 g,8 r |  r1 |
  }
  \break
  a8 r r d r4 g,8 r | r1 | a8 r r d r4 fis8-> g-> | r1 |
  
  \break \mark \markup \box \bold "Solos"
  \bar "|:" a,8 r r d r4 g,8 r | r1
  
  \break \mark \markup \box \bold "2 - Alternate Bass"
  \bar ":|:"  g4 g8 d'~d d~d g, | r1 | g4 g8 a~a c~c d | r1 |
  c4. g'8 r2 | g,4. d'8 r2 | a8 r r d r4 g,8 r | r1 |  \bar ":|"
  
  
}


%%Generated layout
#(set-default-paper-size "letter")
\book {
  \score { <<
    \set Score.markFormatter = #format-mark-box-numbers
    
    \transpose c c \new ChordNames { \set chordChanges = ##t \changes }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"trumpet" \clef treble
      \tempo    4 = 170
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \melody
    }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"alto sax" \clef treble
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \transpose ees c {    \tenor }
    }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"tuba" \clef bass
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \bass
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } }
           \midi { }
           
  }
}

%Generated layout
#(set-default-paper-size "letter")
\book {
  \score { <<
    \set Score.markFormatter = #format-mark-box-numbers
    
  %  \transpose c c \new ChordNames { \set chordChanges = ##t \changes }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"trumpet" \clef treble
      \tempo    4 = 170
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
     \unfoldRepeats \melody
    }
   % \new Staff \with { \consists "Volta_engraver" } {
%      \set Staff.midiInstrument = #"alto sax" \clef treble
 %     \override Score.RehearsalMark #'self-alignment-X = #LEFT
  %    \tenor
 %   }
   \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"tuba" \clef bass
    \unfoldRepeats \bass
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } }
           \midi { }
           
  }
}