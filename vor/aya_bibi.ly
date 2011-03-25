\version "2.12.1" 

\header {
  title = "Aya Bibi"
  composer = "?"
}

%music pieces
%part: tenor
tenor = {
  \relative c' {
    \break \mark \default
    \repeat volta 2 {
      r8 <f aes c> <f aes c> r <f aes c> <f aes c> <f aes c> <f aes c> |
      r <f bes des> <f bes des> r <f bes des> <f bes des> <f bes des> <f bes des> |
      r <g c e> <g c e> r <g c e> <g c e> <g c e> <g c e> |
      r <g c e> <g c e> r <g c e> <g c e> <g c e> <g c e> |
      
    }  
    \break
    \repeat volta 2 {
      r <f aes c> <f aes c> r <f aes c> <f aes c> <f aes c> <f aes c> |
      r <g bes ees> <g bes ees> r <g bes ees> <g bes ees> <g bes ees> <g bes ees> |
      r <f aes des> <f aes des> r <f aes des> <f aes des> <f aes des> <f aes des> |
      r <g c e> <g c e> r <g c e> <g c e> <g c e> <g c e> |
      
    }  
    r <f aes c> <f aes c> r <f aes c> <f aes c> <f aes c> <f aes c> |
    r <f aes c> <f aes c> r <f aes c> <f aes c> <f aes c> <f aes c> |
    r <f aes c> <f aes c> r <f aes c> <f aes c> <f aes c> <f aes c> |
    <f aes c>8 r8 r4 r2 |
    \break \mark \default
    \repeat volta 2 {
      r8 <f aes c> <f aes c> r <f aes c> <f aes c> <f aes c> <f aes c> |
      r <f aes c> <f aes c> r <f aes c> <f aes c> <f aes c> <f aes c> |
      r <f aes c> <f aes c> r <f aes c> <f aes c> <f aes c> <f aes c> |
      r <f aes c> <f aes c> r <f aes c> <f aes c> <f aes c> <f aes c> |
      r <f aes ces> <f aes ces> r <f aes ces> <f aes ces> <f aes ces> <f aes ces> |
      r <f aes ces> <f aes ces> r <f aes ces> <f aes ces> <f aes ces> <f aes ces> |
      r <f aes ces> <f aes ces> r <f aes ces> <f aes ces> <f aes ces> <f aes ces> |
      r <f aes ces> <f aes ces> r <f aes ces> <f aes ces> <f aes ces> <f aes ces> |
      
    }
  }
}

%part: bass
bass = {
  \relative c, {
    \break \mark \default
    \repeat volta 2 {
      f8 r4 aes8 r4 c8 r |
      bes, r4 des8 r4 f8 r |
      c r4 e8 r4 g8 r |
      c, r4 e8 r4 g8 r |
      
    }
    \break
    \repeat volta 2 {
      f r4 aes8 r4 c8 r |
      ees, r4 g8 r4 bes8 r |
      des, r4 f8 r4 aes8 r |
      c, r4 e8 r4 g8 r |
    }
    f r4 aes8 r4 c8 r |
    f, r4 aes8 r4 c8 r |
    f, r4 aes8 r4 c8 r |
    f,8 r8 r4 r2 |
    \break  \mark \default 
    \repeat volta 2 {
      f8 r4 aes8 r4 c8 r |
      f, r4 aes8 r4 c8 r |
      f, r4 aes8 r4 c8 r |
      f, r4 aes8 r4 c8 r |
      f, r4 aes8 r4 ces8 r |
      f, r4 aes8 r4 ces8 r |
      f, r4 aes8 r4 ces8 r |
      f, r4 aes8 r4 ces8 r |
    }
  }
}
%part: changes
changes =  \chordmode {
  f1:m | bes:m | c | c |
  f:m | ees | des | c |
  f:m | f:m | f:m | f:m |
  f:m | f:m | f:m | f:m |
  f:dim | f:dim | f:dim | f:dim |
}

%layout
#(set-default-paper-size "letter" 'landscape)
\book { 
  \paper { #(set-paper-size "letter") }
    \header { poet = "Score" }
    \score {
      << \tempo 4 = 184
        \new ChordNames { \set chordChanges = ##t \changes }
        
        \new Staff { 
          \tenor
        }
        \new Staff { \transpose c c''
          \bass
        }
      >>
    }
  }
  
  
  \book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 180 
        \unfoldRepeats  \new Staff { \set Staff.midiInstrument = #"trombone"
          \tenor
        }
        \unfoldRepeats  \new Staff { \set Staff.midiInstrument = #"tuba"
          \bass
        }
      >> 
      \midi { }
    } 
  }
  
  