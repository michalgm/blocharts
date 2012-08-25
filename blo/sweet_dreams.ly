\version "2.12.3"

\header {
  title = "Sweet Dreams"
  composer = "Annie Lennox and David A. Stewart"
  arranger =  "based on arrangement by Soul Rebels"
  tagline = "5/18/12" %date of latest edits
  copyright = \markup {\bold ""} %form
}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
  \relative c' {
    \time 4/4 \key bes \minor

    \set Score.markFormatter = #format-mark-box-letters
    \break	\mark "Vamp"
    \repeat volta 2 {
      r4 bes'8 bes r des r bes | r ges aes bes r f aes bes
    }
    {
      \break	\mark \default %A

      | r4 des4 des bes | des8 des r des ( c2) |
      | des8 des bes des~ des4 bes | des8 ees~ ees4 des8 c r bes |
      | des8 des bes des~ des4 bes8 bes | des8 des4 des8 ( c2) |
      | des4 bes8 des~ des bes bes4 | des8 des ees des~ des c4. |
    }
    {
      \break	\mark \default %B

      | <des f>8 <des f> <bes des>4 <des f> <bes des>8 <des f>~ |
      | <des f> <c ees> r4 r2 |
      | <des f>8 <des f> <bes des>4 <des f>8 <des f> <bes des> <des f>~ |
      | <des f> <es ges>~ <es ges>4 <des f>8 <c ees> r4 |
      | <des f>8 <des f> <bes des>4 <des f>8 <des f> <bes des> <des f>~ |
      | <des f> <c ees> r4 r2 |
      | <des f>8 <des f> <bes des>4 <des f>4 <bes des>8 <des f>~ |
      | <des f> <es ges>~ <es ges>4 <des f>8 <c ees> r4 |
    }

    {
      \break \mark \default %C

      | <bes ges'>1~
      | <bes ges'>2 <a f'> | <bes f'>2. <des aes'>4 | <es ges>1 |
      | <es ges>1 | <es f> |
    }


    \break	\mark \default %D
    \repeat volta 2 {
      | f8^\markup {  "Bridge" }
      des des16 des r8 r2 | f8 des des16 des r8 r2 |
      | f8 des des16 des r8 r2 |
    }
    \alternative {
      % \repeat volta 2 
      {
        | f8 des des16 des r8 r2 |
      }

      {
        | f8 des des16 des r8 r bes16 ( c des c bes aes) |
      }

    }


    \break	\mark \default %E
    {
      | bes1 ^\markup {  "(synth solo)" }
      | des4~ des8 ees~ ees f des bes~ | bes1~  |
      | bes2 r8 f aes bes~ | bes1 | r2 fes'8 ees des bes~ | bes1 | r1 |
    }


  }
}

%part: tenor
tenor = {
  \relative c' {
    \time 4/4 \key bes \minor
    \break	\mark "Vamp"
    \repeat volta 2 {
      r4 bes'8 bes des des bes bes | ges ges aes ges f f aes bes |
    }

    {
      \break	\mark \default %A

      \repeat percent 4 { r4 bes8 bes des des bes bes | ges ges aes ges f f aes bes | }

    }

    {
      \break \mark \default %B
      \repeat percent 4 {      r4 bes8 bes des des bes bes | ges ges aes ges f f aes bes |
 }
    }

    {
      \break	\mark \default %C
      | <ges bes>1 | <ges bes>2 <a c>4 <ges bes>8 <a c> 
      | <bes des>2. <aes c>4 | <bes des>1 |
      | <bes des>1 | <a c> |
    }

    \break	\mark \default %D
    \repeat volta 2 {
      | des8 ^\markup {  "Bridge" } r r bes des16 ees r des~ des8 bes |
      | des8 r r bes des16 ees r des~ des8 bes |
      | des8 r r bes des16 ees r des~ des8 bes |
    }
    \alternative {
      { | des8 r r bes des16 ees r des~ des8 bes }
      { | des8 r8 r4 r2 }
    }
    {
      \break \mark \default %E
      \repeat percent 4 {      r4 bes8 bes des des bes bes | ges ges aes ges f f aes bes | }

    }

  }
}

%part: bass
bass = {
  \relative c {
    \time 4/4 \key bes \minor
    \break	\mark "Vamp"
    \repeat volta 2 {
      bes8 bes r4 r8 des bes aes | ges ges r ges f f r4 |
    }

    {
      \break	\mark \default %A

      \repeat percent 4 {bes8 bes r4 r8 des bes aes | ges ges r ges f f r4 | }

    }

    {
      \break \mark \default %B
      \repeat percent 4 {bes8 bes r4 r8 des bes aes | ges ges r ges f f r4 | }
    }

    {
      \break	\mark \default %C
      | ges4. ges8 ges4. ges8 | ges4. ges8 f4. f8 |
      | bes4. bes8 bes4 des | ees1 |
      | ges,4. ges8 ges4. ges8 | f4. f8 f4. f8 |
    }

    \break	\mark \default %D
    \repeat volta 2 {
      | bes8 ^\markup {  "Bridge" }  bes bes16 bes r8 r2 |
      | bes8 bes bes16 bes r8 r2 |
      | bes8 bes bes16 bes r8 r2 |
    }
    \alternative {
      { | bes8 bes bes16 bes r8 r2 | }
      { | bes8 bes bes16 bes r8 r2  }
    }
    {
      \break \mark \default %E
      \repeat percent 4 {bes8 bes r4 r8 des bes aes | ges ges r ges f f r4 | }

    }

  }
}

%part: words
words = \markup { }

%part: changes
changes = \chordmode {
}




%layout
\book {
  \header { poet = "Melody - Eb" }
  \score {
    <<
      \new ChordNames { \set chordChanges = ##t \changes }
      \new Staff {
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




\book {
  \header { poet = "MIDI" }
  \score {
    <<
      \tempo 4 = 120
      \unfoldRepeats	\new Staff {
        \set Staff.midiInstrument = #"trumpet"
        \melody
      }
      \unfoldRepeats	\new Staff {
        \set Staff.midiInstrument = #"trombone"
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

