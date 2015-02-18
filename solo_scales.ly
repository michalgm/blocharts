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
      "AP Touro 1 -- C Minor Blues" \tiny "like Eb Major Blues"
    }
    <c es g c>1
    c4-^ es-^  f ges | g-^ bes  c2-^ |
    c4-^ bes  g-^ ges |  f  es-^  c2-^
  } %% end relative c

  \relative c' {
    \break
    \key c \minor
    \mark
    \markup {
      \column {
      "AP Touro 2 -- C Harmonic Minor"      }
    }
    <c es g c>1
    c4-^ d es-^ f | g-^ as b  c-^ |
    c-^ b as g-^ |  f es-^ d c-^ |
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
    \key bes \major
    \mark
    \markup {
      \column {
        "Do What You Wanna 1 -- Bb Major Blues" \tiny "like G Minor Blues"
      }
    }
    \break
    <bes' d f bes>1
    bes4-^ c des d-^ | f-^ g bes2-^ |
    bes4-^ g f-^ d-^  |  des c bes2-^  |
  } %% end relative c



  \relative c' {
    \break
    \key g \minor
    \mark
    \markup {
      \column {
        \line { "Dog Eat Dog 1, Ghost Town 2 -- G Minor (Dorian)" \tiny "like F Major" }
      }
    }
    <g' bes d g>1
    g4-^ a bes-^ c | d-^ e  f  g-^ |
    g-^  f e  d-^ |  c bes-^ a g-^ |
  } %% end relative c



  \relative c' {
    \key g \minor
    \mark
    \markup {
      \column {
        "Ghost Town 2, Dog Eat Dog 1 -- G Minor Blues" \tiny "like Bb Major Blues"
      }
    }
    \break
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
        "If You Want Me to Stay, Do What You Wanna 2, Sweet Dreams 2" "-- Bb Minor Blues" \tiny "like Db Major Blues"
      }
    }
    <bes' des f bes>1
    bes4-^ des-^ es e | f-^ as bes2-^ |
    bes4-^ as f-^ e | es des-^ bes2-^ |
  } %% end relative c

  \relative c' {


    \break
    \key f \minor
    \mark
    \markup {
      \column {
        "JJD 1, Ya Move Ya Lose 2 -- F Minor (Dorian)"
      }
    }
    <f as c f>1
    f4-^ g as-^ bes | c-^ d es f-^ |
    f4-^ es d c-^ | bes as-^ g f-^ |
  } %% end relative c


  \relative c' {
    \break
    \key a \minor
    \mark
    \markup {
        "Matador -- A Natural Minor" \tiny "like C Major"
    }
    <a' c e a>1
    a4-^ b c-^ d | e-^ f g a-^ |
    a-^ g f e-^ | d c-^ b a |
  } %% end relative c

  \relative c' {
    \break
    \key d \minor
    \mark
    \markup {
      \column {
        "Moliendo Cafe -- D Natural Minor" \tiny "like F Major"
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
        "National Anthem (Radiohead/EE) 1 -- D Harmonic Minor"
      }
    }
    <d f a d>1
    d4-^ e f-^ g | a-^ bes cis d-^ |
    d-^ cis bes a-^ | g f-^ e d-^ |
  } %% end relative c



  \relative c' {

    \key a \minor
    \mark
    \markup {
      \column {
        "National Anthem (Radiohead/EE) 2 -- Chromatic Scale"
      }
    }
    \break
    <d f a d>1
    d4-^ dis e f-^ | fis-^ g gis a-^ | ais b c cis |
    d1-^ | des4 c b bes | a-^ as g fis-^ | f-^ e es  d-^ |
  } %% end relative c


  \relative c' {
    \key a \minor
    \mark
    \markup {
      \column {
        "National Anthem (Radiohead/EE) 3 -- Whole Tone Scale"
      }
    }
    \break
    <d f a d>1
    d4-^ e fis-^ gis | bes c d2-^ |
    d4-^ c bes as | ges e d2-^ |
  } %% end relative c



  \relative c' {
    \key f \major
    \mark
    \markup {
      \column {
        "Nine to Five 1 -- F Major Blues" \tiny "like D Minor Blues"
      }
    }
    \break
    <f a c f>1
    f4-^ g as a-^ | c-^ d f2-^ |
    f4-^ d c-^ a-^ | as g f2-^ |
  } %% end relative c



  \relative c' {
    \key f \major
    \mark
    \markup {
      \column {
        "Nine to Five 2 -- F Major" \tiny "like D Natural Minor"
      }
    }
    \break
    <f a c f>1
    f4-^ g a-^ bes | c-^ d e f-^ |
    f-^ e d c-^ | bes a-^ g f-^ |
  } %% end relative c




  \relative c' {
    \break
    \key bes \minor
    \mark
    \markup {
      \column {
        "Sweet Dreams 1 -- Bb Natural Minor" \tiny "like Db Major"
      }
    }
    <bes' des f bes>1
    bes4-^ c des-^ es | f-^ ges as bes-^ |
    bes-^ as ges f-^ | es des-^ c bes-^ |
  } %% end relative c


  \relative c' {
    \break
    \key es \major
    \mark
    \markup {
      \column {
        "We Got That Fire -- Eb Major Blues" \tiny "like C Minor Blues"
      }
    }
    <es g bes es>1
    es4-^ f ges g-^  | bes-^ c es2-^ |
    es4-^ c bes-^ g-^ | ges f es2-^ |
  }


  \relative c' {
    \break
    \key es \major
    \mark
    \markup {
      \column {
        "We Got That Fire -- Eb Minor Blues" \tiny "like Gb Major Blues"
      }
    }
    <es ges bes es>1
    es4-^ ges-^ as a | bes-^ des es2-^ |
    es4-^ des bes-^ a | as ges-^ es2-^ |
  }


  \relative c' {
    \break
    \key f \minor
    \mark
    \markup {
      \column {
        "Ya Move Ya Lose 1, JJD 2 -- F Minor Blues" \tiny "like Ab Major Blues"
      }
    }
    <f as c f>1
    f4-^ as-^ bes b | c-^ es f2-^ |
    f4-^ es c-^ b | bes as-^ f2-^ |
  } %% end relative c




} % end ctreble

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




cBass = {


  \relative c'' {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \key c \minor
    \break
    \mark
    \markup {
      "AP Touro 1 -- C Minor Blues" \tiny "like Eb Major Blues"
    }
    <c es g c>1
    c4-^ es-^  f ges | g-^ bes  c2-^ |
    c4-^ bes  g-^ ges |  f  es-^  c2-^
  } %% end relative c

  \relative c'' {
    \break
    \key c \minor
    \mark
    \markup {
      \column {
      "AP Touro 2 -- C Harmonic Minor"      }
    }
    <c es g c>1
    c4-^ d es-^ f | g-^ as b  c-^ |
    c-^ b as g-^ |  f es-^ d c-^ |
  } %% end relative c

  \relative c'' {
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
    \key bes \major
    \mark
    \markup {
      \column {
        "Do What You Wanna 1 -- Bb Major Blues" \tiny "like G Minor Blues"
      }
    }
    \break
    <bes' d f bes>1
    bes4-^ c des d-^ | f-^ g bes2-^ |
    bes4-^ g f-^ d-^  |  des c bes2-^  |
  } %% end relative c



  \relative c' {
    \break
    \key g \minor
    \mark
    \markup {
      \column {
        \line { "Dog Eat Dog 1, Ghost Town 2 -- G Minor (Dorian)" \tiny "like F Major" }
      }
    }
    <g' bes d g>1
    g4-^ a bes-^ c | d-^ e  f  g-^ |
    g-^  f e  d-^ |  c bes-^ a g-^ |
  } %% end relative c



  \relative c' {
    \key g \minor
    \mark
    \markup {
      \column {
        "Ghost Town 2, Dog Eat Dog 1 -- G Minor Blues" \tiny "like Bb Major Blues"
      }
    }
    \break
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
        "If You Want Me to Stay, Do What You Wanna 2, Sweet Dreams 2" "-- Bb Minor Blues" \tiny "like Db Major Blues"
      }
    }
    <bes' des f bes>1
    bes4-^ des-^ es e | f-^ as bes2-^ |
    bes4-^ as f-^ e | es des-^ bes2-^ |
  } %% end relative c

  \relative c' {


    \break
    \key f \minor
    \mark
    \markup {
      \column {
        "JJD 1, Ya Move Ya Lose 2 -- F Minor (Dorian)"
      }
    }
    <f as c f>1
    f4-^ g as-^ bes | c-^ d es f-^ |
    f4-^ es d c-^ | bes as-^ g f-^ |
  } %% end relative c


  \relative c' {
    \break
    \key a \minor
    \mark
    \markup {
        "Matador -- A Natural Minor" \tiny "like C Major"
    }
    <a' c e a>1
    a4-^ b c-^ d | e-^ f g a-^ |
    a-^ g f e-^ | d c-^ b a |
  } %% end relative c

  \relative c'' {
    \break
    \key d \minor
    \mark
    \markup {
      \column {
        "Moliendo Cafe -- D Natural Minor" \tiny "like F Major"
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

  \relative c'' {
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

  \relative c'' {
    \break
    \key d \minor
    \mark
    \markup {
      \column {
        "National Anthem (Radiohead/EE) 1 -- D Harmonic Minor"
      }
    }
    <d f a d>1
    d4-^ e f-^ g | a-^ bes cis d-^ |
    d-^ cis bes a-^ | g f-^ e d-^ |
  } %% end relative c



  \relative c'' {

    \key a \minor
    \mark
    \markup {
      \column {
        "National Anthem (Radiohead/EE) 2 -- Chromatic Scale"
      }
    }
    \break
    <d f a d>1
    d4-^ dis e f-^ | fis-^ g gis a-^ | ais b c cis |
    d1-^ | des4 c b bes | a-^ as g fis-^ | f-^ e es  d-^ |
  } %% end relative c


  \relative c'' {
    \key a \minor
    \mark
    \markup {
      \column {
        "National Anthem (Radiohead/EE) 3 -- Whole Tone Scale"
      }
    }
    \break
    <d f a d>1
    d4-^ e fis-^ gis | bes c d2-^ |
    d4-^ c bes as | ges e d2-^ |
  } %% end relative c



  \relative c' {
    \key f \major
    \mark
    \markup {
      \column {
        "Nine to Five 1 -- F Major Blues" \tiny "like D Minor Blues"
      }
    }
    \break
    <f a c f>1
    f4-^ g as a-^ | c-^ d f2-^ |
    f4-^ d c-^ a-^ | as g f2-^ |
  } %% end relative c



  \relative c' {
    \key f \major
    \mark
    \markup {
      \column {
        "Nine to Five 2 -- F Major" \tiny "like D Natural Minor"
      }
    }
    \break
    <f a c f>1
    f4-^ g a-^ bes | c-^ d e f-^ |
    f-^ e d c-^ | bes a-^ g f-^ |
  } %% end relative c




  \relative c' {
    \break
    \key bes \minor
    \mark
    \markup {
      \column {
        "Sweet Dreams 1 -- Bb Natural Minor" \tiny "like Db Major"
      }
    }
    <bes' des f bes>1
    bes4-^ c des-^ es | f-^ ges as bes-^ |
    bes-^ as ges f-^ | es des-^ c bes-^ |
  } %% end relative c


  \relative c'' {
    \break
    \key es \major
    \mark
    \markup {
      \column {
        "We Got That Fire -- Eb Major Blues" \tiny "like C Minor Blues"
      }
    }
    <es g bes es>1
    es4-^ f ges g-^  | bes-^ c es2-^ |
    es4-^ c bes-^ g-^ | ges f es2-^ |
  }


  \relative c'' {
    \break
    \key es \major
    \mark
    \markup {
      \column {
        "We Got That Fire -- Eb Minor Blues" \tiny "like Gb Major Blues"
      }
    }
    <es ges bes es>1
    es4-^ ges-^ as a | bes-^ des es2-^ |
    es4-^ des bes-^ a | as ges-^ es2-^ |
  }


  \relative c' {
    \break
    \key f \minor
    \mark
    \markup {
      \column {
        "Ya Move Ya Lose 1, JJD 2 -- F Minor Blues" \tiny "like Ab Major Blues"
      }
    }
    <f as c f>1
    f4-^ as-^ bes b | c-^ es f2-^ |
    f4-^ es c-^ b | bes as-^ f2-^ |
  } %% end relative c

} % end cbass







Bflat = {

  \relative c' {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \key c \minor
    \break
    \mark
    \markup {
      "AP Touro 1 -- D Minor Blues" \tiny "like F Major Blues"
    }
    <c es g c>1
    c4-^ es-^  f ges | g-^ bes  c2-^ |
    c4-^ bes  g-^ ges |  f  es-^  c2-^
  } %% end relative c

  \relative c' {
    \break
    \key c \minor
    \mark
    \markup {
      \column {
      "AP Touro 2 -- D Harmonic Minor"      }
    }
    <c es g c>1
    c4-^ d es-^ f | g-^ as b  c-^ |
    c-^ b as g-^ |  f es-^ d c-^ |
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
    \key bes \major
    \mark
    \markup {
      \column {
        "Do What You Wanna 1 -- C Major Blues" \tiny "like A Minor Blues"
      }
    }
    \break
    <bes d f bes>1
    bes4-^ c des d-^ | f-^ g bes2-^ |
    bes4-^ g f-^ d-^  |  des c bes2-^  |
  } %% end relative c



  \relative c' {
    \break
    \key g \minor
    \mark
    \markup {
      \column {
        \line { "Dog Eat Dog 1, Ghost Town 2 -- A Minor (Dorian)" \tiny "like G Major" }
      }
    }
    <g bes d g>1
    g4-^ a bes-^ c | d-^ e  f  g-^ |
    g-^  f e  d-^ |  c bes-^ a g-^ |
  } %% end relative c



  \relative c' {
    \key g \minor
    \mark
    \markup {
      \column {
        "Ghost Town 2, Dog Eat Dog 1 -- A Minor Blues" \tiny "like C Major Blues"
      }
    }
    \break
    <g bes d g>1
    g4-^ bes-^ c cis | d-^ f g2-^ |
    g4-^ f d-^ des | c bes-^ g2-^ |
  } %% end relative c




  \relative c' {
    \break
    \key bes \minor
    \mark
    \markup {
      \column {
        "If You Want Me to Stay, Do What You Wanna 2, Sweet Dreams 2" "-- C Minor Blues" \tiny "like Eb Major Blues"
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
        "JJD 1, Ya Move Ya Lose 2 -- G Minor (Dorian)" \tiny "like F Major"
      }
    <f as c f>1
    f4-^ g as-^ bes | c-^ d es f-^ |
    f4-^ es d c-^ | bes as-^ g f-^ |
  } %% end relative c


  \relative c' {
    \break
    \key a \minor
    \mark
    \markup {
        "Matador -- B Natural Minor" \tiny "like D Major"
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
        "Moliendo Cafe -- E Natural Minor" \tiny "like G Major"
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
        "National Anthem (Radiohead/EE) 1 -- E Harmonic Minor"
      }
    }
    <d f a d>1
    d4-^ e f-^ g | a-^ bes cis d-^ |
    d-^ cis bes a-^ | g f-^ e d-^ |
  } %% end relative c



  \relative c' {

    \key a \minor
    \mark
    \markup {
      \column {
        "National Anthem (Radiohead/EE) 2 -- Chromatic Scale"
      }
    }
    \break
    <d f a d>1
    d4-^ dis e f-^ | fis-^ g gis a-^ | ais b c cis |
    d1-^ | des4 c b bes | a-^ as g fis-^ | f-^ e es  d-^ |
  } %% end relative c


  \relative c' {
    \key a \minor
    \mark
    \markup {
      \column {
        "National Anthem (Radiohead/EE) 3 -- Whole Tone Scale"
      }
    }
    \break
    <d f a d>1
    d4-^ e fis-^ gis | bes c d2-^ |
    d4-^ c bes as | ges e d2-^ |
  } %% end relative c



  \relative c' {
    \key f \major
    \mark
    \markup {
      \column {
        "Nine to Five 1 -- G Major Blues" \tiny "like E Minor Blues"
      }
    }
    \break
    <f a c f>1
    f4-^ g as a-^ | c-^ d f2-^ |
    f4-^ d c-^ a-^ | as g f2-^ |
  } %% end relative c



  \relative c' {
    \key f \major
    \mark
    \markup {
      \column {
        "Nine to Five 2 -- G Major" \tiny "like E Natural Minor"
      }
    }
    \break
    <f a c f>1
    f4-^ g a-^ bes | c-^ d e f-^ |
    f-^ e d c-^ | bes a-^ g f-^ |
  } %% end relative c




  \relative c' {
    \break
    \key bes \minor
    \mark
    \markup {
      \column {
        "Sweet Dreams 1 -- C Natural Minor" \tiny "like Eb Major"
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
        "We Got That Fire -- F Major Blues" \tiny "like Ab Minor Blues"
      }
    }
    <es g bes es>1
    es4-^ f ges g-^  | bes-^ c es2-^ |
    es4-^ c bes-^ g-^ | ges f es2-^ |
  }


  \relative c' {
    \break
    \key es \major
    \mark
    \markup {
      \column {
        "We Got That Fire -- F Minor Blues" \tiny "like Ab Major Blues"
      }
    }
    <es ges bes es>1
    es4-^ ges-^ as a | bes-^ des es2-^ |
    es4-^ des bes-^ a | as ges-^ es2-^ |
  }


  \relative c' {
    \break
    \key f \minor
    \mark
    \markup {
      \column {
        "Ya Move Ya Lose 1, JJD 2 -- G Minor Blues" \tiny "like Bb Major Blues"
      }
    }
    <f as c f>1
    f4-^ as-^ bes b | c-^ es f2-^ |
    f4-^ es c-^ b | bes as-^ f2-^ |
  } %% end relative c


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
    \key c \minor
    \break
    \mark
    \markup {
      "AP Touro 1 -- A Minor Blues" \tiny "like Eb Major Blues"
    }
    <c es g c>1
    c4-^ es-^  f ges | g-^ bes  c2-^ |
    c4-^ bes  g-^ ges |  f  es-^  c2-^
  } %% end relative c

  \relative c' {
    \break
    \key c \minor
    \mark
    \markup {
      \column {
      "AP Touro 2 -- A Harmonic Minor"      }
    }
    <c es g c>1
    c4-^ d es-^ f | g-^ as b  c-^ |
    c-^ b as g-^ |  f es-^ d c-^ |
  } %% end relative c

  \relative c {
    \break
    \key g \minor
    \mark
    \markup {
      \column {
        "Ciganko Moja/Miserlou -- B Hijaz" \tiny "like E Harmonic Minor"
      }
    }
    <d' fis a d>1
    d4-^ es fis-^ g | a-^ bes  c  d-^ |
    d-^ c bes a-^ |  g fis-^ es d-^ |
  } %% end relative c


  \relative c' {
    \key bes \major
    \mark
    \markup {
      \column {
        "Do What You Wanna 1 -- G Major Blues" \tiny "like E Minor Blues"
      }
    }
    \break
    <bes d f bes>1
    bes4-^ c des d-^ | f-^ g bes2-^ |
    bes4-^ g f-^ d-^  |  des c bes2-^  |
  } %% end relative c



  \relative c' {
    \break
    \key g \minor
    \mark
    \markup {
      \column {
        \line { "Dog Eat Dog 1, Ghost Town 2 -- E Minor (Dorian)" \tiny "like D Major" }
      }
    }
    <g bes d g>1
    g4-^ a bes-^ c | d-^ e  f  g-^ |
    g-^  f e  d-^ |  c bes-^ a g-^ |
  } %% end relative c



  \relative c' {
    \key g \minor
    \mark
    \markup {
      \column {
        "Ghost Town 2, Dog Eat Dog 1 -- E Minor Blues" \tiny "like G Major Blues"
      }
    }
    \break
    <g bes d g>1
    g4-^ bes-^ c cis | d-^ f g2-^ |
    g4-^ f d-^ des | c bes-^ g2-^ |
  } %% end relative c




  \relative c' {
    \break
    \key bes \minor
    \mark
    \markup {
      \column {
        "If You Want Me to Stay, Do What You Wanna 2, Sweet Dreams 2" "-- G Minor Blues" \tiny "like Bb Major Blues"
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
        "JJD 1, Ya Move Ya Lose 2 -- D Minor (Dorian)"
      }
    }
    <f, as c f>1
    f4-^ g as-^ bes | c-^ d es f-^ |
    f4-^ es d c-^ | bes as-^ g f-^ |
  } %% end relative c


  \relative c' {
    \break
    \key a \minor
    \mark
    \markup {
        "Matador -- F# Natural Minor" \tiny "like A Major"
    }
    <a c e a>1
    a4-^ b c-^ d | e-^ f g a-^ |
    a-^ g f e-^ | d c-^ b a |
  } %% end relative c

  \relative c {
    \break
    \key d \minor
    \mark
    \markup {
      \column {
        "Moliendo Cafe -- B Natural Minor" \tiny "like D Major"
      }
    }
    <d' f a d>1
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




  \relative c' {
    \break
    \key f \minor
    \mark
    \markup {
      \column {
        "Naborusa -- A Hijaz"  \tiny "like D Harmonic Minor"
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
        "National Anthem (Radiohead/EE) 1 -- B Harmonic Minor"
      }
    }
    <d' f a d>1
    d4-^ e f-^ g | a-^ bes cis d-^ |
    d-^ cis bes a-^ | g f-^ e d-^ |
  } %% end relative c



  \relative c {

    \key a \minor
    \mark
    \markup {
      \column {
        "National Anthem (Radiohead/EE) 2 -- Chromatic Scale"
      }
    }
    \break
    <d' f a d>1
    d4-^ dis e f-^ | fis-^ g gis a-^ | ais b c cis |
    d1-^ | des4 c b bes | a-^ as g fis-^ | f-^ e es  d-^ |
  } %% end relative c


  \relative c {
    \key a \minor
    \mark
    \markup {
      \column {
        "National Anthem (Radiohead/EE) 3 -- Whole Tone Scale"
      }
    }
    \break
    <d' f a d>1
    d4-^ e fis-^ gis | bes c d2-^ |
    d4-^ c bes as | ges e d2-^ |
  } %% end relative c



  \relative c {
    \key f \major
    \mark
    \markup {
      \column {
        "Nine to Five 1 -- D Major Blues" \tiny "like B Minor Blues"
      }
    }
    \break
    <f a c f>1
    f4-^ g as a-^ | c-^ d f2-^ |
    f4-^ d c-^ a-^ | as g f2-^ |
  } %% end relative c



  \relative c {
    \key f \major
    \mark
    \markup {
      \column {
        "Nine to Five 2 -- D Major" \tiny "like B Natural Minor"
      }
    }
    \break
    <f a c f>1
    f4-^ g a-^ bes | c-^ d e f-^ |
    f-^ e d c-^ | bes a-^ g f-^ |
  } %% end relative c




  \relative c' {
    \break
    \key bes \minor
    \mark
    \markup {
      \column {
        "Sweet Dreams 1 -- G Natural Minor" \tiny "like Bb Major"
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
        "We Got That Fire -- C Major Blues" \tiny "like A Minor Blues"
      }
    }
    <es g bes es>1
    es4-^ f ges g-^  | bes-^ c es2-^ |
    es4-^ c bes-^ g-^ | ges f es2-^ |
  }


  \relative c {
    \break
    \key es \major
    \mark
    \markup {
      \column {
        "We Got That Fire -- C Minor Blues" \tiny "like Eb Major Blues"
      }
    }
    <es ges bes es>1
    es4-^ ges-^ as a | bes-^ des es2-^ |
    es4-^ des bes-^ a | as ges-^ es2-^ |
  }


  \relative c {
    \break
    \key f \minor
    \mark
    \markup {
      \column {
        "Ya Move Ya Lose 1, JJD 2 -- D Minor Blues" \tiny "like F Major Blues"
      }
    }
    <f as c f>1
    f4-^ as-^ bes b | c-^ es f2-^ |
    f4-^ es c-^ b | bes as-^ f2-^ |
  } %% end relative c


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
      \cBass
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
