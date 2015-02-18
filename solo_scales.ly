\version "2.12.3"

\layout {
  \context {
    \Score
    autoBeaming = ##f
  }
}


\header {
  title = "BLO Repertoire"
  subtitle = "Suggested Scales For Improvising"
  subsubtitle = \markup {\tiny "Marcato (^) symbols indicates chord tones -- land on these if unsure!" }
  composer = "by Jeff G, Michael Z, & Greg M"
  tagline = "2/10/15" %date of latest edits
  copyright = \markup {\bold ""} %formpoet = ""
  piece = " "
}

cTreble = {

  \relative c' {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \key c \minor
    \break
    \mark
    \markup {
      "AP Touro -- C Minor Blues"
    }
    <c es g c>1
    c4-^ es-^  f ges | g-^ bes  c2-^ |
    c4-^ bes  g-^ ges |  f  es-^  c2-^
  } %% end relative c

  \relative c' {
    \break
    \key g \minor
    \mark
    \markup {
      \column {
        "Ciganko Moja/Miserlou -- D Hijaz" \tiny "like G Harmonic Minor"
      }
    }
    <d fis a d>1
    d4-^ es fis-^ g | a-^ bes  c  d-^ |
    d-^ c bes a-^ |  g fis-^ es d-^ |
  } %% end relative c

  \relative c' {
    \break
    \key g \minor
    \mark
    \markup {
      \column {
        \line { "Dog Eat Dog -- G Minor (Dorian)" }
      }
    }
    <g' bes d g>1
    g4-^ a bes-^ c | d-^ e  f  g-^ |
    g-^  f e  d-^ |  c bes-^ a g-^ |
  } %% end relative c

  \relative c' {
    \break
    \key bes \major
    \mark
    \markup {
      \column {
        "Do What You Wanna -- Bb Major Blues" \tiny "like G Minor Blues"
      }
    }
    <bes d f bes>1
    bes4-^ c des d-^ | f-^ g bes2-^ |
    bes4-^ g f-^ d-^  |  des c bes2-^  |
  } %% end relative c

  \relative c' {
    \break
    \key bes \minor
    \mark
    \markup {
      \column {
        "If You Want Me to Stay -- Bb Minor Blues"
      }
    }
    <bes des f bes>1
    bes4-^ des-^ es e | f-^ as bes2-^ |
    bes4-^ as f-^ e | es des-^ bes2-^ |
  } %% end relative c

  \relative c' {


    \break
    \key f \minor
    \mark
    \markup {
      \column {
        "JJD, Ya Move Ya Lose -- F Minor Blues"
      }
    }
    <f as c f>1
    f4-^ as-^ bes b | c-^ es f2-^ |
    f4-^ es c-^ b | bes as-^ f2-^ |
  } %% end relative c

  \relative c' {
    \break
    \key a \minor
    \mark
    \markup {
      \column {
        "Matador -- A Natural Minor"
      }
    }
    <a c e a>1
    a4-^ b c-^ d | e-^ f g a-^ |
    a-^ g f e-^ | d c-^ b a |
  } %% end relative c

  \relative c' {
    \break
    \key d \minor
    \mark
    \markup {
      \column {
        "Moliendo Cafe -- D Natural Minor"
      }
    }
    <d f a d>1
    d4-^ e f-^ g | a-^ bes c d-^ |
    d-^ c bes a-^ | g f-^ e d-^ |
  } %% end relative c

  \relative c' {
    \break
    \key bes \minor
    \mark
    \markup {
      \column {
        "Monserrat Serrat -- F Hijaz" \tiny "like Bb Harmonic Minor"
      }
    }
    <f a c f>1
    f4-^ ges a-^ bes | c-^ des  es  f-^ |
    f-^ es des c-^ |  bes a-^ ges f-^ |
  } %% end relative c

  %{
    \break
    \key d \minor
    \mark
    \markup { \column { "Murga (de Panama) -- D Harmonic Minor"
    }
    }
    <d f a d>1
    d4-^ e f-^ g | a-^ bes cis d-^ |
    d-^ cis bes a-^ | g f-^ e d-^ |
  %}

  \relative c' {
    \break
    \key f \minor
    \mark
    \markup {
      \column {
        "Naborusa -- C Hijaz"  \tiny "like F Harmonic Minor"
      }
    }
    <c e g c>1
    c4-^ des e-^ f | g-^ as bes c-^ |
    c-^ bes as g-^ | f e-^ des c-^ |
  } %% end relative c

  \relative c' {
    \break
    \key d \minor
    \mark
    \markup {
      \column {
        "National Anthem (Radiohead/EE) -- D Harmonic Minor"
      }
    }
    <d f a d>1
    d4-^ e f-^ g | a-^ bes cis d-^ |
    d-^ cis bes a-^ | g f-^ e d-^ |
  } %% end relative c

  \relative c' {
    \break
    \key g \major
    \mark
    \markup {
      \column {
        "Nine to Five -- F Major"
      }
    }
    <f a c f>1
    f4-^ g a-^ bes | c-^ d e f-^ |
    f-^ e d c-^ | bes a-^ g f-^ |
  } %% end relative c


  \relative c' {
    \break
    \key g \minor
    \mark
    \markup {
      \column {
        "Ghost Town -- G Minor Blues"
      }
    }
    <g' bes d g>1
    g4-^ bes-^ c cis | d-^ f g2-^ |
    g4-^ f d-^ des | c bes-^ g2-^ |
  } %% end relative c

  \relative c' {
    \break
    \key bes \minor
    \mark
    \markup {
      \column {
        "Sweet Dreams -- Bb Natural Minor"
      }
    }
    <bes des f bes>1
    bes4-^ c des-^ es | f-^ ges as bes-^ |
    bes-^ as ges f-^ | es des-^ c bes-^ |
  } %% end relative c

  \relative c' {
    \break
    \key es \major
    \mark
    \markup {
      \column {
        "We Got That Fire -- Eb Minor Blues"
      }
    }
    <es g bes es>1
    es4-^ ges-^ as a | bes-^ des es2-^ |
    es4-^ des bes-^ a | as ges-^ es2-^ |
  }

} % end ctreble

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


Bflat = {


  \relative c' {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \clef treble \key c \minor
    \break
    \mark
    \markup {
      "AP Touro -- D Minor Blues"
    }
    <c es g c>1
    c4-^ es-^  f ges | g-^ bes  c2-^ |
    c4-^ bes  g-^ ges |  f  es-^  c2-^

  } %% end relative c

  \relative c' {
    \break
    \key g \minor
    \mark
    \markup {
      \column {
        "Ciganko Moja/Miserlou -- E Hijaz" \tiny "like A Harmonic Minor"
      }
    }
    <d fis a d>1
    d4-^ es fis-^ g | a-^ bes  c  d-^ |
    d-^ c bes a-^ |  g fis-^ es d-^ |
  } %% end relative c

  \relative c' {
    \break
    \key g \minor
    \mark
    \markup {
      \column {
        \line { "Dog Eat Dog -- A Minor (Dorian)" }
      }
    }
    <g' bes d g>1
    g4-^ a bes-^ c | d-^ e  f  g-^ |
    g-^  f e  d-^ |  c bes-^ a g-^ |
  } %% end relative c

  \relative c' {
    \break
    \key bes \major
    \mark
    \markup {
      \column {
        "Do What You Wanna -- C Major Blues" \tiny "like A Minor Blues"
      }
    }
    <bes d f bes>1
    bes4-^ c des d-^ | f-^ g bes2-^ |
    bes4-^ g f-^ d-^  |  des c bes2-^  |
  } %% end relative c

  \relative c' {
    \break
    \key bes \minor
    \mark
    \markup {
      \column {
        "If You Want Me to Stay -- C Minor Blues"
      }
    }
    <bes des f bes>1
    bes4-^ des-^ es e | f-^ as bes2-^ |
    bes4-^ as f-^ e | es des-^ bes2-^ |
  } %% end relative c

  \relative c' {


    \break
    \key f \minor
    \mark
    \markup {
      \column {
        "JJD, Ya Move Ya Lose -- G Minor Blues"
      }
    }
    <f as c f>1
    f4-^ as-^ bes b | c-^ es f2-^ |
    f4-^ es c-^ b | bes as-^ f2-^ |
  } %% end relative c

  \relative c' {
    \break
    \key a \minor
    \mark
    \markup {
      \column {
        "Matador -- G Natural Minor"
      }
    }
    <a c e a>1
    a4-^ b c-^ d | e-^ f g a-^ |
    a-^ g f e-^ | d c-^ b a |
  } %% end relative c

  \relative c' {
    \break
    \key d \minor
    \mark
    \markup {
      \column {
        "Moliendo Cafe -- E Natural Minor"
      }
    }
    <d f a d>1
    d4-^ e f-^ g | a-^ bes c d-^ |
    d-^ c bes a-^ | g f-^ e d-^ |
  } %% end relative c

  \relative c' {
    \break
    \key bes \minor
    \mark
    \markup {
      \column {
        "Monserrat Serrat -- G Hijaz" \tiny "like C Harmonic Minor"
      }
    }
    <f a c f>1
    f4-^ ges a-^ bes | c-^ des  es  f-^ |
    f-^ es des c-^ |  bes a-^ ges f-^ |
  } %% end relative c

  %{
    \break
    \key d \minor
    \mark
    \markup { \column { "Murga (de Panama) -- D Harmonic Minor"
    }
    }
    <d f a d>1
    d4-^ e f-^ g | a-^ bes cis d-^ |
    d-^ cis bes a-^ | g f-^ e d-^ |
  %}

  \relative c' {
    \break
    \key f \minor
    \mark
    \markup {
      \column {
        "Naborusa -- D Hijaz"  \tiny "like G Harmonic Minor"
      }
    }
    <c e g c>1
    c4-^ des e-^ f | g-^ as bes c-^ |
    c-^ bes as g-^ | f e-^ des c-^ |
  } %% end relative c

  \relative c' {
    \break
    \key d \minor
    \mark
    \markup {
      \column {
        "National Anthem (Radiohead/EE) -- E Harmonic Minor"
      }
    }
    <d f a d>1
    d4-^ e f-^ g | a-^ bes cis d-^ |
    d-^ cis bes a-^ | g f-^ e d-^ |
  } %% end relative c

  \relative c' {
    \break
    \key g \major
    \mark
    \markup {
      \column {
        "Nine to Five -- G Major"
      }
    }
    <f a c f>1
    f4-^ g a-^ bes | c-^ d e f-^ |
    f-^ e d c-^ | bes a-^ g f-^ |
  } %% end relative c


  \relative c' {
    \break
    \key g \minor
    \mark
    \markup {
      \column {
        "Ghost Town -- A Minor Blues"
      }
    }
    <g' bes d g>1
    g4-^ bes-^ c cis | d-^ f g2-^ |
    g4-^ f d-^ des | c bes-^ g2-^ |
  } %% end relative c

  \relative c' {
    \break
    \key bes \minor
    \mark
    \markup {
      \column {
        "Sweet Dreams -- C Natural Minor"
      }
    }
    <bes des f bes>1
    bes4-^ c des-^ es | f-^ ges as bes-^ |
    bes-^ as ges f-^ | es des-^ c bes-^ |
  } %% end relative c

  \relative c' {
    \break
    \key es \major
    \mark
    \markup {
      \column {
        "We Got That Fire -- F Minor Blues"
      }
    }
    <es g bes es>1
    es4-^ ges-^ as a | bes-^ des es2-^ |
    es4-^ des bes-^ a | as ges-^ es2-^ |
  }


} %end bFlat



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Eflat = {


  \relative c' {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \clef treble \key c \minor
    \break
    \mark
    \markup {
      "AP Touro -- A Minor Blues"
    }
    <c es g c>1
    c4-^ es-^  f ges | g-^ bes  c2-^ |
    c4-^ bes  g-^ ges |  f  es-^  c2-^

  } %% end relative c

  \relative c' {
    \break
    \key g \minor
    \mark
    \markup {
      \column {
        "Ciganko Moja/Miserlou -- B Hijaz" \tiny "like E Harmonic Minor"
      }
    }
    <d fis a d>1
    d4-^ es fis-^ g | a-^ bes  c  d-^ |
    d-^ c bes a-^ |  g fis-^ es d-^ |
  } %% end relative c

  \relative c {
    \break
    \key g \minor
    \mark
    \markup {
      \column {
        \line { "Dog Eat Dog -- E Minor (Dorian)" }
      }
    }
    <g' bes d g>1
    g4-^ a bes-^ c | d-^ e  f  g-^ |
    g-^  f e  d-^ |  c bes-^ a g-^ |
  } %% end relative c

  \relative c' {
    \break
    \key bes \major
    \mark
    \markup {
      \column {
        "Do What You Wanna -- G Major Blues" \tiny "like E Minor Blues"
      }
    }
    <bes d f bes>1
    bes4-^ c des d-^ | f-^ g bes2-^ |
    bes4-^ g f-^ d-^  |  des c bes2-^  |
  } %% end relative c

  \relative c' {
    \break
    \key bes \minor
    \mark
    \markup {
      \column {
        "If You Want Me to Stay -- G Minor Blues"
      }
    }
    <bes des f bes>1
    bes4-^ des-^ es e | f-^ as bes2-^ |
    bes4-^ as f-^ e | es des-^ bes2-^ |
  } %% end relative c

  \relative c {
    \break
    \key f \minor
    \mark
    \markup {
      \column {
        "JJD, Ya Move Ya Lose -- D Minor Blues"
      }
    }
    <f as c f>1
    f4-^ as-^ bes b | c-^ es f2-^ |
    f4-^ es c-^ b | bes as-^ f2-^ |
  } %% end relative c

  \relative c' {
    \break
    \key a \minor
    \mark
    \markup {
      \column {
        "Matador -- F# Natural Minor"
      }
    }
    <a c e a>1
    a4-^ b c-^ d | e-^ f g a-^ |
    a-^ g f e-^ | d c-^ b a |
  } %% end relative c

  \relative c' {
    \break
    \key d \minor
    \mark
    \markup {
      \column {
        "Moliendo Cafe -- B Natural Minor"
      }
    }
    <d f a d>1
    d4-^ e f-^ g | a-^ bes c d-^ |
    d-^ c bes a-^ | g f-^ e d-^ |
  } %% end relative c

  \relative c {
    \break
    \key bes \minor
    \mark
    \markup {
      \column {
        "Monserrat Serrat -- D Hijaz" \tiny "like G Harmonic Minor"
      }
    }
    <f a c f>1
    f4-^ ges a-^ bes | c-^ des  es  f-^ |
    f-^ es des c-^ |  bes a-^ ges f-^ |
  } %% end relative c

  %{
    \break
    \key d \minor
    \mark
    \markup { \column { "Murga (de Panama) -- D Harmonic Minor"
    }
    }
    <d f a d>1
    d4-^ e f-^ g | a-^ bes cis d-^ |
    d-^ cis bes a-^ | g f-^ e d-^ |
  %}

  \relative c' {
    \break
    \key f \minor
    \mark
    \markup {
      \column {
        "Naborusa -- A Hijaz"  \tiny "like E Harmonic Minor"
      }
    }
    <c e g c>1
    c4-^ des e-^ f | g-^ as bes c-^ |
    c-^ bes as g-^ | f e-^ des c-^ |
  } %% end relative c

  \relative c {
    \break
    \key d \minor
    \mark
    \markup {
      \column {
        "National Anthem (Radiohead/EE) -- B Harmonic Minor"
      }
    }
    <d f a d>1
    d4-^ e f-^ g | a-^ bes cis d-^ |
    d-^ cis bes a-^ | g f-^ e d-^ |
  } %% end relative c

  \relative c {
    \break
    \key g \major
    \mark
    \markup {
      \column {
        "Nine to Five -- D Major"
      }
    }
    <f a c f>1
    f4-^ g a-^ bes | c-^ d e f-^ |
    f-^ e d c-^ | bes a-^ g f-^ |
  } %% end relative c


  \relative c {
    \break
    \key g \minor
    \mark
    \markup {
      \column {
        "Ghost Town -- E Minor Blues"
      }
    }
    <g' bes d g>1
    g4-^ bes-^ c cis | d-^ f g2-^ |
    g4-^ f d-^ des | c bes-^ g2-^ |
  } %% end relative c

  \relative c' {
    \break
    \key bes \minor
    \mark
    \markup {
      \column {
        "Sweet Dreams -- G Natural Minor"
      }
    }
    <bes des f bes>1
    bes4-^ c des-^ es | f-^ ges as bes-^ |
    bes-^ as ges f-^ | es des-^ c bes-^ |
  } %% end relative c

  \relative c {
    \break
    \key es \major
    \mark
    \markup {
      \column {
        "We Got That Fire -- C Minor Blues"
      }
    }
    <es g bes es>1
    es4-^ ges-^ as a | bes-^ des es2-^ |
    es4-^ des bes-^ a | as ges-^ es2-^ |
  }


} %end EFlat










#(set-default-paper-size "letter")



\book {
  \bookOutputSuffix "cTreble"
  \header {
    poet = \markup {\bold "C instruments" }
    meter = \markup {\tiny "(flute, piccolo, all bass clef, all non-winds)" }
  }
  \score { <<
    \transpose c c
    \new Staff \with { \consists "Volta_engraver" } {
      \clef treble
      \cTreble
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } }
           \midi { }
  }
}


\book {
  \bookOutputSuffix "cBass"
  \header {
    poet = \markup {\bold "C instruments" }
    meter = \markup {\tiny "(flute, piccolo, all bass clef, all non-winds)" }
  }
  \score { <<
    \transpose c c,,
    \new Staff \with { \consists "Volta_engraver" } {
      \clef bass
      \cTreble
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } }
           \midi { }
  }
}



\book {
  \bookOutputSuffix "Bb"
  \header {
    poet = \markup {\bold "Bb instruments" }
    meter = \markup {\tiny "(clarinet, trumpet, cornet, tenor & soprano sax)" }
  }
  \score { <<
    \transpose c c
    \new Staff \with { \consists "Volta_engraver" } {
      \clef treble
      \transpose c d
      \Bflat
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } }
           \midi { }
  }
}


\book {
  \bookOutputSuffix "Eb"
  \header {
    poet = \markup {\bold "Bb instruments" }
    meter = \markup {\tiny "(alto & bari sax)" }
  }
  \score { <<
    \new Staff \with { \consists "Volta_engraver" } {
      \clef treble
      \transpose c a
      \Eflat
    }
           >> \layout { \context { \Score \remove "Volta_engraver" } }
           \midi { }
  }
}

