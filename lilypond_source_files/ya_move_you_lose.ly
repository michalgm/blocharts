\version "2.12.3"

\header {
  title = "You Move Ya Lose"
  composer = "Rebirth Brass Band"
  copyright = "7/1/10" %date of latest edits
}
%description:<a href="http://en.wikipedia.org/wiki/Second_line_%28parades%29">New Orleans Second Line</a> song by <a href="http://www.rebirthbrassband.com">Rebirth Brass Band</a>, from their 1994 album <a href="http://www.amazon.com/Rollin-ReBirth-Brass-Band/dp/B00000030K">Rollin</a>.

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
  \relative c'' {
    \key f \minor
    
    \mark \default %A
    \repeat volta 2 {
      r2 c8 bes aes bes~ | bes4 aes  f8 f aes4 | bes aes bes aes8 bes~ | bes4 c r2 |
      r2 c8 bes aes bes~ | bes4 aes  f8 f aes4 | bes aes c aes8 f~ |
    }
    \alternative {
      { f4 r r2 | }
      { f4 r r f | }
    }
    
    \break \mark \default %B
    \repeat volta 2 {
      c'2 c | bes4 aes8 f r4 f | c'2 c | bes4 aes8 f r4 f |
      c'2 c | bes4 aes8 f r4 f | ees4. e8~ e4 f |
    }
    \alternative {
      { r2. f4 | }
      { r1 | }
    }
    \break \mark \markup \box \bold "Bridge"
    \repeat volta 4 {
      <as c ees>8 r4 <as c ees>8 ~ <as c ees>4 <as c ees> | <g bes d>8 r4 <g bes d>8 ~ <g bes d>4 <g bes d> |
      <f as c>8 r4 <f as c>8 ~ <f as c>4 <f as c> | <e g b>  \mark \markup \italic "4x" r2. |
    }
    \break \repeat volta 2 {
      es8 f4 f8 ~ f es4 f8 ~ f4 es as8 r4 as8 |
      r as g f es c4 es8 ~ es4 e f2 | %5
      r8 f4 as8 ~ as c4 es8 ~ es r4 d8 r c bes c |
      d4. c8 r8 c4.| bes8 r8 r2.  |
    }
  }
}

%part: tenor
tenor = {
  \relative c' {
    \key f \minor
    
    \mark \default %A
    \repeat volta 2 {
      r8 ees d4 ees d | ees d ees d | ees d ees8 f r f~ | f4 r r2 |
      r8 ees d4 ees d | ees d ees d | ees d ees8 f r f~ |
    }
    \alternative {
      { f4 r r2 | }
      { f4 r r f | }
    }
    
    \break \mark \default %B
    \repeat volta 2 {
      aes2 aes | g4 ees8 f r4 f | aes2 aes | g4 ees8 f r4 f |
      aes2 aes | g4 ees8 f r4 f | ees4. e8~ e4 f |
    }
    \alternative {
      { r2. f4 | }
      { r1 | }
    }
    \break \mark \markup \box \bold "Bridge"
    \repeat volta 4 {
      <as c ees>8 r4 <as c ees>8 ~ <as c ees>4 <as c ees> | <g bes d>8 r4 <g bes d>8 ~ <g bes d>4 <g bes d> |
      <f as c>8 r4 <f as c>8 ~ <f as c>4 <f as c> | <e g b>  \mark \markup \italic "4x" r2. |
    }
    \break \repeat volta 2 {
      es8 f4 f8 ~ f es4 f8 ~ f4 es as8 r4 as8 |
      r as g f es c4 es8 ~ es4 e f2 | %5
      r8 f4 as8 ~ as c4 es8 ~ es r4 d8 r c bes c |
      d4. c8 r8 c4. | bes8 r8 r2.  |
    }
    
    
  }
  
}



%part: bass
bass = {
  \relative c {
    \key f \minor
    
    \mark \default %A
    \repeat volta 2 {
      f,4 r8 f~ f4 g | aes r8 aes~ aes4 a | bes r8 bes~ bes4 b | c r8 ees~ ees4 e |
      f,4 r8 f~ f4 g | aes r8 aes~ aes4 a | bes r8 bes~ bes4 b |
    }
    \alternative {
      { c r8 ees~ ees4 e | }
      { c r8 ees~ ees4 e | }
    }
    
    \break \mark \default %B
    \repeat volta 2 {
      f,4 r8 f~ f4 g | aes r8 aes~ aes4 a | bes r8 bes~ bes4 b | c r8 ees~ ees4 e |
      f,4 r8 f~ f4 g | aes r8 aes~ aes4 a | ees'4. e8~ e4 f |
    }
    \alternative {
      { r2. f4 | }
      { r1 | }
    }
    
    \break \mark \markup \box \bold "Bridge"
    \repeat volta 4 {
      f,4 r8 f~ f4 g | aes r8 aes~ aes4 a | bes r8 bes~ bes4 b | c \mark \markup \italic "4x" r8 ees~ ees4 e |
    }
    \repeat volta 2 {
      f,4 r8 f~ f4 g | aes r8 aes~ aes4 a | bes r8 bes~ bes4 b8 ees,8 ~ | ees4 e f c|
      f4 r8 f~ f4 g | aes r8 aes~ aes4 a |d4. c8 r8 c4. | bes8 r4 ees8~ ees4 e |
    }
  }
}

%%Generated layout
#(set-default-paper-size "letter")
\book {
  \score { <<
    \set Score.markFormatter = #format-mark-box-letters
    
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"trumpet" \clef treble
      \tempo  4 = 200
      \transpose ees c { \melody }
    }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"trombone" \clef treble
      \transpose ees c { \tenor }
    }
    \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"tuba" \clef treble
      \transpose ees c'' { \bass }
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } }
  }
}
\book {
  \score { <<
    \set Score.markFormatter = #format-mark-box-numbers
    
    \unfoldRepeats \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"trumpet" \clef treble
      \tempo  4 = 200
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \melody
    }
    \unfoldRepeats \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"trombone" \clef treble
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \tenor
    }
    \unfoldRepeats \new Staff \with { \consists "Volta_engraver" } {
      \set Staff.midiInstrument = #"tuba" \clef bass
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \bass
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } }
           \midi { }
  }
}
