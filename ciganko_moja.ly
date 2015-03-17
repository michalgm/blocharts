\version "2.12.2"

\header {
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


%layout
\book {
  \header { poet = "Score" }
  \score {
    <<
      \new ChordNames { \set chordChanges = ##t \changes }
      \new Staff {
        \tempo  4 = 200
        \melody
      }
      \new Staff {
        \tenor
      }
      \new Staff {
        \clef bass
        \bass
      }
    >>
  }
  %    \words
}

%layout
\book {
  \header { poet = "Melody - Eb" }
  \score {
    <<
      \new ChordNames { \set chordChanges = ##t \changes }
      \new Staff {
        \transpose ees c' {
          \melody
        }
      }
      \new Staff {
        \transpose ees c' {
          \tenor
        }
      }
      \new Staff {
        \transpose ees c' {

          \clef bass
          \bass
        }
      }
    >>
  }
  %    \words
}



\book {
  \header { poet = "MIDI" }
  \score {
    <<
      \tempo 4 = 200
      \unfoldRepeats	\new Staff {
        \set Staff.midiInstrument = #"trumpet"
        \melody
      }
      \unfoldRepeats	\new Staff {
        \set Staff.midiInstrument = #"alto sax"
        \tenor
      }
      \unfoldRepeats	\new Staff {
        \set Staff.midiInstrument = #"tuba" \clef bass
        \bass
      }
    >>
    \midi { }
  }
}
