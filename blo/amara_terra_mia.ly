\version "2.12.1"

\header {
	title = "Amara Terra Mia"
	composer = "Domenico Modugno"
	copyright = "3/6/10" %date of latest edits
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
	\relative c' { \key bes \minor \time 3/4
	f4 bes des | f2 f4 | e2. | ges4 f ees | f2 des4 | bes2.~ | bes | r |
	f4 bes des | f2 f4 | ees2. | ges | f~ | f | r | r2 f4 |
	ees2 f4 | ges2 f4 | ees2. | ees | f | ees2 f4 | des2. | des |
	f4 des bes | des2 c4 | bes2. | f4 bes des | c2. | a4 des c |
	bes2.~ | bes | r | r |
	}
}

%part: harmony
harmony = {
	\relative c' { \key bes \minor \time 3/4
	bes4 des f | aes2 aes4 | g2. | bes4 aes ges | f2 des4 | bes2.~ | bes | r |
	bes4 des f | aes2 aes4 | ges2. | des | bes~ | bes | r | r2 aes'4 |
	ges2 aes4 | bes2 aes4 | ges2. | ges | aes | ges2 aes4 | f2. | f |
	f4 des bes | des2 c4 | des2. | bes4 des f | ees2. | c4 f ees | 
	des2.~ | des | r | r |
	}
}

%part: tenor
tenor = {
	\relative c { \key bes \minor \time 3/4
	\set countPercentRepeats = ##t 
	\set repeatCountVisibility = #(every-nth-repeat-count-visible 4)
	\repeat percent 8 { r4 <des f> <des f> | }
	\repeat percent 8 { r4 <des f> <des f> | }
	\repeat percent 4 { r4 <ees ges> <ees ges> |} \repeat percent 4 { r4 <des f> <des f> | }
	\repeat percent 4 { r4 <des f> <des f> | } \repeat percent 2 { r4 <f a> <f a> | }
	\repeat percent 4 { r4 <des f> <des f> | }
	}
}

%part: bass
bass = {
	\relative c { \key bes \minor \time 3/4
	bes2. | bes2 f4 | ges2. | des'2 c4 | bes2. | bes2 f4 | bes2. | f4 g a | 
	bes2. | bes2 f4 | ges2. | des'2. | bes2. | bes2 f4 | bes2. | bes4 c d | 
	ees2. | ees2 bes4 | ees2. | ees2 bes4 | bes2. | bes2 f4 | bes2. | bes2 f4 |  
	bes2. | bes2 f4 | bes2. | bes2 f4 | f2. | a2. | bes2. | bes2 f4 | bes2. | f4 g a |  
	}
}

%part: words
words = \markup { 
	\column { 
		\line { \bold "Verse 1" }
		\line { \fontsize #2 { Sole alla valle, sole alla collina, }}
		\line { \fontsize #2 { per le campagne non \concat { c' \char ##x00E8 },  \concat { pi \char ##x00F9 } nessuno. }}

		\hspace #0.2
		\line { \bold "Chorus" }
		\line { \fontsize #2 { Addio, addio amore, io vado via, }}
		\line { \fontsize #2 { amara terra mia, amara'e bella...}}
	}

	\hspace #10
	\column { 
		\line { \bold "Verse 2" }
		\line { \fontsize #2 { Cieli infiniti'e volti come pietra, }}
		\line { \fontsize #2 { mani incallite ormai senza speranza. }}

		\hspace #0.2
		\line { \bold "Verse 3" }
		\line { \fontsize #2 { Tra gli uliveti, nata gia la luna, }}
		\line { \fontsize #2 { un bimbo piange allatta un seno magro. }}
	}
}


%layout

#(set-default-paper-size "a5" 'landscape)


\book { 
  \header { poet = "Melody - C" }
    \score {
        \new Staff {
		\melody
	}
    }
	\words
}
%}

%{
\book { 
  \header { poet = "Harmony - C" }
    \score {
        \new Staff { 
		\harmony
	}
    }
	\words
}
%}

%{
\book { 
  \header { poet = "Tenor - C" }
    \score {
        \new Staff { \clef bass
		\tenor
	}
    }
	\words
}
%}

%{
\book { 
  \header { poet = "Bass - C" }
    \score {
        \new Staff { \clef bass
		\bass
	}
    }
	\words
}
%}

%{
\book { \header { poet = "Score" }
  \paper { #(set-paper-size "a4") }
    \score { 
      << 
	\new Staff {
		\melody
	}
	\new Staff {
		\harmony
	}
	\new Staff { \clef bass
		\tenor
	}
	\new Staff { \clef bass
		\bass
	}
      >> 
  } 
	\words 
}
%}


%{
\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 180 
\unfoldRepeats	\new Staff { 
		\melody
	}
\unfoldRepeats	\new Staff { 
		\harmony
	}
\unfoldRepeats	\new Staff { 
		\tenor
	}
\unfoldRepeats	\new Staff { 
		\bass
	}
      >> 
    \midi { }
  } 
}
%}
