\version "2.12.1"

\header {
	title = "Bad Romance"
	composer = ""
	copyright = "" %date of latest edits
	}

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
	\relative c'' { 
		\time 4/4
		r2 c8 d e c |
		%% A %%
		\repeat volta 2 {
			\mark \default
			f4. e8 f e4 d8~ | d2 c4 d  |
		}
		\alternative {
			{ e e8 d e d4 c8~ | c2  c8 d e c |}
			{ e4 e8 d e d4 c8~ | c1 | }
		}
		%% B %%
		\break \mark \default
		\repeat volta 2 { a4 a e'8 e f e| r a, a4 e'8 e f e| a,4 a e'8 e f e| r8 c c a c4 c| }
		%% C %%
		\break \mark \default 
		r1 \mark \markup {\italic "Drum break" } | r1 | r1 | r1
		%% D %%
		\break \mark \default
		{ r8 a (a a a a a a |g g g d-- r f-- r e8~ | e8 e e e g4  e8 d8~ |d8  c4.) r2} \break
		{ r8 a' (a a a a a a |g g g d-- r f-- r e8~ | e8 e e e gis4 e8 d8~  |d8 c4.) c'8 d e c \markdownright \mark "To A" | }
	}
}

%part: tenor
tenor = {
  \relative c' { 
		\time 4/4
		r1
		%% A %%
		\repeat volta 2 { 
			\mark \default
			<c f>1 <d g> 
		}
		\alternative {
			{ <e a> <e a> }
			{ <e gis> <e a>	}
		}
		%% B %%
		\break \mark \default
		\repeat volta 2 { a4 a e'8 e f e| r a, a4 e'8 e f e| a,4 a e'8 e f e| r8 c c a c4 c| }
		%% C %%
		\break \mark \default
		r1 \mark \markup {\italic "Drum break" } | r1 | r1 | r1 
		%% D %%
		\break \mark \default
		<c, f>1 <d g> <e a> <e a> <c f> <d g> <e gis> <e a>	
  }
}

\tempo 4=130 

%layout
#(set-default-paper-size "a5" 'landscape)

%{
\book { 
  \header { poet = "Melody - C" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff {
		\melody
	}
	>>
    }
%    \words
}
%}

%{
\book { 
  \header { poet = "Bass - C" }
    \score {
	<<
%	\new ChordNames { \set chordChanges = ##t \changes }
        \new Staff { \clef bass
		\bass
	}
	>>
    }
%    \words
}
%}


\book { \header { poet = "Score" }
  \paper { #(set-paper-size "letter") }
    \score { 
      << 
%	\new ChordNames { \set chordChanges = ##t \changes }
	\new Staff { 
		\melody
	}
	%\new Staff { \tenor }
      >> 
  } 
%    \words
}


%{
\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 100 
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"alto sax"
		\melody
	}
\unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"tuba"
		\bass
	}
      >> 
    \midi { }
  } 
}
%}
