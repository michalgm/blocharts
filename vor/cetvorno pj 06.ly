%\include "peter-ET.ly"
%\include "makam_ADAM.ly"
\include "english.ly"
#(set-default-paper-size "letter")
\paper {
	between-system-padding = #0
	page-count = 1
}

\header {
  title = \markup \caps "Četvorno PJ"
}


%Part: Melody
melody = \relative c' {
%% some engraving defaults, they can go here or in a Staff
  \set Score.markFormatter = #format-mark-box-letters
  #(set-accidental-style 'modern-cautionary)

%% use \breathe for downbow (upward ornament)
  \override BreathingSign #'text = \markup { \fontsize #5 \raise #2 \arrow-head #Y #UP ##f }

%% key & time

%  \clef treble
	\clef "petrucci-g"
%  \override Staff.TimeSignature #'stencil = #(compound-time "3" "4" "16")
  \time 7/16
  \set beatGrouping = #'(3 4)
  \key d \phrygian
  \compressFullBarRests

%% the music

%%% A
  \mark \default
  \repeat volta 2 {
	r8.^\markup \pad-around #0.9 \sans \italic \tiny "chords tacet til bar 3 downbeat" d8 d16 ef | fs16 g-. r fs16 \breathe fs fs ef 
	| r8. d16 bf' a g | fs ef-. r  fs8--\( g-.\)
	| g16 g a fs8--( g-.) | fs16^\markup \musicglyph #"scripts.caesura.straight" g-. r g fs ef d |
	| c8.-- ef16 d ef8-. | ef16 f?-. r ef \breathe ef ef d |
	| c16 \breathe c c ef16 d ef8-. | ef16 f-. r ef \breathe ef ef d |
	| { g16 f ef d4~ }  | d8.-- r4_\markup \fontsize #3 \bold \italic fine
 }

%%% B
 \break
 \mark \default
 \repeat volta 2 {
	c16 c r ef d ef8-. |  bf16[ d r] ef8 r |
	ef16 f f f ef f g | ef ef d ef f df8 |
	bf16 bf r ef d ef8 | c8-- d16 ef8--( \breathe ef-.) |
 }
 \alternative {
	{ ef16 \breathe ef d ef[ f df r] | ef16 \breathe ef d ef f df c | df16 c8~ c4~ | c8.-- r4 }
	{ ef16\( \breathe ef d ef f df c | df16 c\) r d ef f g }
 } 

%%% C
 \break
 \mark \default
 \repeat volta 2 {
	af8.-- af16 g af bf | g8 f16 ef8 r
	| ef16 f8-- f16 ef f g | ef8 d16 ef f df c 
	| bf16 c d ef8-- \breathe ef | ef16 f-. r df df df c
	| bf16 d r ef16 \breathe ef ef d | ef16 f-. r df8-> df16 c
 }
 \alternative {
	{
		| df16 c8~ c4 
		| r8.^\markup \musicglyph #"scripts.caesura.straight" d16 ef f g |
	}
	{
	 	| df16 c8~ c4 
		| R4.. | R4.. | R4.._\markup \fontsize #3 \bold "D.C."^\markup \musicglyph #"scripts.caesura.straight" | 
	}
 }

%%% D
 \key c \phrygian
 \break
 \mark \default
 \repeat volta 4 {
	bf16 bf r c8-. df-. | e8.-- f16 e df8 | e16 e g f e df bf |
 }
 \alternative {
	{ df16 c r c8 df16 c  }
	{ df16 c r c8 r  }
	{ df16 c r c df e f  }
	{ df16 c r c8 r  } 
 }

%%% E
 \break
 \mark \default
 \repeat volta 2 {
%	e16 f r f e f g | e8.-- r4 | e16 f r f e f g | e8.-- r4 |
	r8.^\markup \musicglyph #"scripts.caesura.straight" e16\( f f8-. | f16 f g e8--( \breathe e16) df 
	| c8-.\) r16 e8--\( f | f16 g8-. e8--( \breathe e16) df
 }
 \alternative {
	{ e16\) f r f e f g | af8 g16 f e df8 | e16 df r f e g f  | af16 g f e df c8-. }
	{e16\) f r f[ r f g] | af8. r4 | af16 bf c df c df e | c8.-- r4 | R4..*4
%_\markup \fontsize #3 \bold { "D.C. al" \italic fine }
	\bar "||" }
 }

%%% F
 \break
 \bar "|:"
 \mark \default
 \repeat volta 2 {
	R4..*4
	| bf4..~ | bf4..~ | bf4..~ | bf4..~
	| bf4..~ | bf4..
	| c16^\markup \musicglyph #"scripts.caesura.straight" df bf c df bf c | df bf c df bf c df | c16-. r8 r4 | R4.. |
}
 	R4..*2| bf4..~ | bf4..~ 
	| bf4..~ | bf4..~ | bf4..~ | bf4..~
	| d16^\markup \musicglyph #"scripts.caesura.straight" ef c d ef c d | ef c d ef c d ef -\tweak #'self-alignment-X #RIGHT _\markup \fontsize #3 \bold { "D.C. al" \italic fine }  | \bar "|."

} % end melody

harmony = \relative c' {
%% some engraving defaults, they can go here or in a Staff
  \set Score.markFormatter = #format-mark-box-letters
  #(set-accidental-style 'modern-cautionary)

%% use \breathe for downbow (upward ornament)
  \override BreathingSign #'text = \markup { \fontsize #5 \raise #2 \arrow-head #Y #UP ##f }

%% key & time

%  \clef treble
	\clef "petrucci-g"
%  \override Staff.TimeSignature #'stencil = #(compound-time "3" "4" "16")
  \time 7/16
  \set beatGrouping = #'(3 4)
  \key d \phrygian
  \compressFullBarRests

%% the music

%%% A
  \mark \default
  \repeat volta 2 {
	r8.^\markup \pad-around #0.9 \sans \italic \tiny "chords tacet til bar 3 downbeat" fs8 fs16 g | a16 bf-. r a16 \breathe a a g 
	| r8. fs16 d' c bf | a g-. r  a8--\( bf-.\)
	| bf16 bf c a8--( bf-.) | a16^\markup \musicglyph #"scripts.caesura.straight" bf-. r bf a g fs |
	| ef8.-- g16 f? g8-. | g16 a-. r g \breathe g g f |
	| ef16 \breathe ef ef g16 f g8-. | g16 a-. r g \breathe g g f |
	| { bf16 a g fs4~ }  | fs8.-- r4_\markup \fontsize #3 \bold \italic fine
 }

%%% B
 \break
 \mark \default
 \repeat volta 2 {
	ef16 ef r g f g8-. |  d16[ f r] g8 r |
	g16 af af af g af bf | g g f g af f8 |
	d16 d r g f g8 | ef8-- f16 g8--( \breathe g-.) |
 }
 \alternative {
	{ g16 \breathe g f g[ af f r] | g16 \breathe g f g af f ef | f16 ef8~ ef4~ | ef8.-- r4 }
	{ g16\( \breathe g f g af f ef | f16 ef\) r f g af bf }
 } 

%%% C
 \break
 \mark \default
 \repeat volta 2 {
	c8.-- c16 bf c d | bf8 af16 g8 r
	| g16 af8-- af16 g af bf | g8 f16 g af f ef 
	| d16 ef f g8-- \breathe g | g16 af-. r f f f ef
	| d16 f r g16 \breathe g g f | g16 af-. r f8-> f16 ef
 }
 \alternative {
	{ 	| f16 ef8~ ef4 
| r8.^\markup \musicglyph #"scripts.caesura.straight" f16 g af bf | }
	{ 	| f16 e?8~ e4 
| R4.. | R4.. | R4.._\markup \fontsize #3 \bold "D.C."^\markup \musicglyph #"scripts.caesura.straight" | }
 }

%%% D
 \key c \phrygian
 \break
 \mark \default
 \repeat volta 4 {
	df?16 df r e8-. f-. | g8.-- af16 g f8 | g16 g bf af g f df |
 }
 \alternative {
	{ f16 e r e8 f16 e  }
	{ f16 e r e8 r  }
	{ f16 e r e f g af  }
	{ f16 e r e8 r  } 
 }

%%% E
 \break
 \mark \default
 \repeat volta 2 {
%	e16 f r f e f g | e8.-- r4 | e16 f r f e f g | e8.-- r4 |
	r8.^\markup \musicglyph #"scripts.caesura.straight" g16\( af af8-. | af16 af bf g8--( \breathe g16) f 
	| e8-.\) r16 g8--\( af | af16 bf8-. g8--( \breathe g16) f
 }
 \alternative {
	{ g16\) af r af g af bf | c8 bf16 af g f8 | g16 f r af g bf af  | c16 bf af g f e8-. }
	{g16\) af r af[ r af bf] | c8. r4 | c,16 d ef f e f g | e8.-- r4 | R4..*4
%
	\bar "||" }
 }

%%% F
 \break
 \bar "|:"
 \mark \default
 \repeat volta 2 {
	R4..*4
	| df'4..~ | df4..~ | df4..~ | df4..~
	| df4..~ | df4..
	| e16^\markup \musicglyph #"scripts.caesura.straight" f df e f df e | f df e f df e f | e16-. r8 r4 | R4.. |
}
 	R4..*2| df4..~ | df4..~ 
	| df4..~ | df4..~ | df4..~ | df4..~
	| d,16^\markup \musicglyph #"scripts.caesura.straight" ef c d ef c d | ef c d ef c d ef -\tweak #'self-alignment-X #RIGHT _\markup \fontsize #3 \bold { "D.C. al" \italic fine } | \bar "|."

} % end harmony

harmonies = \chordmode {

%%% A
	r8. r4 | r8. r4 | d8. d4 | d8. d4 | d8. d4
	| g8.:m  r4 | c8.:m c4:m | c4..:m | c4..:m 
	| c8.:m c4:m | c8.:m d4 | d8. d4 |

%%% B
	c4..:m | bf8. c4:m | c4..:m | c8.:m bf4:m
	| ef4.. | c4..:m | bf4..:m | df4.. | c4..:m | c4..:m
	| bf8.:m df4 | c4..:m |

%%% C
	f4..:m | ef4.. | bf4..:m | ef8. df4 | bf8. ef4 | ef8. df4
	| bf8. c4:m | c8.:m df4 | c4..:m | r4.. | 
	\set chordChanges = ##f c4.. | \set chordChanges = ##t c4.. | c4.. | c4.. | 

%%% D
	bf4..:m | bf4..:m | bf4..:m | \set chordChanges = ##f c4..:m | c4..:m | c4.. | c4.. |

%%% E
	c8. r4 | r4.. | \set chordChanges = ##f c4.. | \set chordChanges = ##t c4.. | c4.. | df4..
	| df4.. | df8. c4 | c4.. | df4.. | f4..:m | c4.. | R4..
	| R4.. | R4.. | R4.. |

%%% F
	R4.. | R4.. | R4.. | R4.. | bf4..:m | bf4..:m | bf4..:m | bf4..:m | bf4..:m | bf4..:m  | R4.. | R4.. | c4.. | c4.. |
	R4.. | R4.. | bf4..:m | bf4..:m | bf4..:m | bf4..:m | bf4..:m | bf4..:m | R4.. | R4.. | 
} % end harmonies

chordLo = \relative c' {
  \set Score.markFormatter = #format-mark-box-letters
  #(set-accidental-style 'modern-cautionary)

	\clef treble
  \time 7/16
  \set beatGrouping = #'(3 4)
  \key d \phrygian
  \compressFullBarRests

% 
%%% A
 \mark \default
 \repeat volta 2 {
	R4..*2 | d,8-. d16 d8-. d16 d | d8-. d16 d8-. d16 d |
	| d8-. d16 d8-. d16 d | d8-. r16 r4 
	| ef8-. ef16 ef8-. ef16 ef | ef8-. ef16 ef8-. ef16 ef
	| ef8-. ef16 ef8-. ef16 ef | ef8-. ef16 ef8-. ef16 ef
	| ef8-. ef16 d8-. d16 d | d8-. d16 d8-. d16 d |
 }
%%% B
 \break
 \mark \default
 \repeat volta 2 {
	ef8-. ef16 ef8-. ef16 ef | f8-. f16 ef8-. ef16 ef
	| ef8-. ef16 ef8-. ef16 ef | ef8-. ef16 f8-. f16 f
	| ef8-. ef16 ef8-. ef16 ef | ef8-. ef16 ef8-. ef16 ef |
 }
 \alternative {
	{
		| f8-. f16 f8-. f16 f | f8-. f16 f8-. f16 f
		| ef8-. ef16 ef8-. ef16 ef | ef8-. ef16 ef8-. ef16 ef
    }
    {
		| f8-. f16 f8-. f16 f | ef8-. ef16 ef8-. ef16 ef |
	}
 }
%%% C
 \break
 \mark \default
 \repeat volta 2 {
	f8-. f16 f8-. f16 f | ef8-. ef16 ef8-. ef16 ef |
	f8-. f16 f8-. f16 f | ef8-. ef16 f8-. f16 f |
	f8-. f16 ef8-. ef16 ef | ef8-. ef16 f8-. f16 f |
	f8-. f16 ef8-. ef16 ef | ef8-. ef16 f8-. f16 f |
 }
 \alternative {
  {	ef8-. ef16 ef8-. ef16 ef | R4.. | }
  {	e8-. e16 e8-. e16 e | e8-. e16 e8-. e16 e | 
  	e8-. e16 e8-. e16 e | e8-. e16 e8-. e16 e_\markup \bold "DC" | }
 }

%%% D
 \break
 \mark \default
 \repeat volta 4 {
	f8-. f16 f8-. f16 f | f8-. f16 f8-. f16 f | f8-. f16 f8-. f16 f
 }
 \alternative {
	{ | ef8-. ef16 ef8-. ef16 ef }
	{ | ef8-. ef16 ef8-. ef16 ef }
	{ | e8-. e16 e8-. e16 e }
	{ | e8-. e16 e8-. e16 e }
 }

%%% E
 \break
 \mark \default
 \repeat volta 2 {
	e8-. r16 r4 | R4.. | e8-. e16 e8-. e16 e | e8-. e16 e8-. e16 e 
 }
 \alternative {
	{
		| e8-. e16 e8-. e16 e | f8-. f16 f8-. f16 f | 
		f8-. f16 f8-. f16 f | e8-. e16 e8-. e16 e |
	}
	{
		e8-. e16 e8-. e16 e | f8-. f16 f8-. f16 f | 
		| f8-. f16 f8-. f16 f | e8-. e16 e8-. e16 e 
		| e8-. e16 e8-. e16 e | e8-. e16 e8-. e16 e
		| e8-. e16 e8-. e16 e | e8-. e16 e8-. e16 e |
	}
 }

%%% F
 \break
 \mark \default
 \repeat volta 2 {
	R4..*4
	| f8-. f16 f8-. f16 f | f8-. f16 f8-. f16 f | f8-. f16 f8-. f16 f 
	| f8-. f16 f8-. f16 f | f8-. f16 f8-. f16 f | f8-. f16 f8-. f16 f 
	| R4..*2 | e8-. e16 e8-. e16 e | e8-. e16 e8-. e16 e
 }
\break
	R4..*2
	| f8-. f16 f8-. f16 f | f8-. f16 f8-. f16 f | f8-. f16 f8-. f16 f 
	| f8-. f16 f8-. f16 f | f8-. f16 f8-. f16 f | f8-. f16 f8-. f16 f 
	| R4.. | R4.._\markup \bold "DC" | \bar "|."
} % end chordLo

chordMid = \relative c' {
  \set Score.markFormatter = #format-mark-box-letters
  #(set-accidental-style 'modern-cautionary)

	\clef treble
  \time 7/16
  \set beatGrouping = #'(3 4)
  \key d \phrygian
  \compressFullBarRests

%%% A
 \mark \default
 \repeat volta 2 {
        R4..*2 | fs,8-. fs16 fs8-. fs16 fs | fs8-. fs16 fs8-. fs16 fs |        | fs8-. fs16 fs8-. fs16 fs | g8-. r16 r4
        | g8-. g16 g8-. g16 g | g8-. g16 g8-. g16 g
        | g8-. g16 g8-. g16 g | g8-. g16 g8-. g16 g
        | g8-. g16 fs8-. fs16 fs | fs8-. fs16 fs8-. fs16 fs | }
%%% B
 \break
 \mark \default 
 \repeat volta 2 {
        g8-. g16 g8-. g16 g | bf8-. bf16 g8-. g16 g        | g8-. g16 g8-. g16 g | g8-. g16 bf8-. bf16 bf
        | g8-. g16 g8-. g16 g | g8-. g16 g8-. g16 g |
 }
 \alternative {        {                | bf8-. bf16 bf8-. bf16 bf | af8-. af16 af8-. af16 af                | g8-. g16 g8-. g16 g | g8-. g16 g8-. g16 g    }
    {                | bf8-. bf16 af8-. af16 af | g8-. g16 g8-. g16 g |
        } }

%%% C
 \break
 \mark \default
 \repeat volta 2 {        af8-. af16 af8-. af16 af | g8-. g16 g8-. g16 g |
        bf8-. bf16 bf8-. bf16 bf | g8-. g16 af8-. af16 af |
        bf8-. bf16 g8-. g16 g | g8-. g16 af8-. af16 af |
        bf8-. bf16 g8-. g16 g | g8-. g16 af8-. af16 af | } \alternative {  {     g8-. g16 g8-. g16 g | R4.. | }  {     g8-. g16 g8-. g16 g | g8-. g16 g8-. g16 g |
        g8-. g16 g8-. g16 g | g8-. g16 g8-. g16 g_\markup \bold "DC" | } }

%%% D
 \break
 \mark \default
 \repeat volta 4 {
        bf8-. bf16 bf8-. bf16 bf | bf8-. bf16 bf8-. bf16 bf | bf8-. bf16 bf8-. bf16 bf } \alternative {        { | g8-. g16 g8-. g16 g }
        { | g8-. g16 g8-. g16 g }        { | g8-. g16 g8-. g16 g }
        { | g8-. g16 g8-. g16 g } }

%%% E
 \break
 \mark \default
 \repeat volta 2 {        
	g8-. r16 r4 | R4.. | g8-. g16 g8-. g16 g | g8-. g16 g8-. g16 g
 }
 \alternative {
  {                
	| g8-. g16 g8-. g16 g | af8-. af16 af8-. af16 af |                af8-. af16 af8-. af16 af | g8-. g16 g8-. g16 g |        }        
  {
                g8-. g16 g8-. g16 g | af8-. af16 af8-. af16 af |                | af8-. af16 af8-. af16 af | g8-. g16 g8-. g16 g
                | g8-. g16 g8-. g16 g | g8-. g16 g8-. g16 g                | g8-. g16 g8-. g16 g | g8-. g16 g8-. g16 g
        } 
 }

%%% F
 \break
 \mark \default
 \repeat volta 2 {
	        R4..*4
        | bf8-. bf16 bf8-. bf16 bf | bf8-. bf16 bf8-. bf16 bf | bf8-. bf16 bf8-. bf16 bf 
        | bf8-. bf16 bf8-. bf16 bf | bf8-. bf16 bf8-. bf16 bf | bf8-. bf16 bf8-. bf16 bf 
        | R4..*2 | g8-. g16 g8-. g16 g | g8-. g16 g8-. g16 g
 }
        R4..*2 | bf8-. bf16 bf8-. bf16 bf | bf8-. bf16 bf8-. bf16 bf | bf8-. bf16 bf8-. bf16 bf         | bf8-. bf16 bf8-. bf16 bf | bf8-. bf16 bf8-. bf16 bf | bf8-. bf16 bf8-. bf16 bf 
        | R4.. | R4.._\markup \bold "DC" | \bar "|."
} % end chordMid

\score {
 <<
  \new ChordNames {
	\set chordChanges = ##t
	\override ChordName   #'font-size = #-2
	\transpose ef c \harmonies
  }
%{
  \new Staff {
	\set Staff.instrumentName = "Melody (C) "
%	\set Staff.shortInstrumentName = "M "
	\melody
  }
%}
  \new Staff {
	\set Staff.instrumentName = "Mid (Eb) "
%	\set Staff.shortInstrumentName = "Md "
	\transpose ef c' \chordMid
  }

%{
  \new Staff {
	\set Staff.instrumentName = "Harmony (C) "
%	\set Staff.shortInstrumentName = "H "
	\harmony
  }
  \new Staff {
	\set Staff.instrumentName = \markup { \concat {"Melody (B" \teeny " " \teeny \raise #0.4 \flat ")" } }
	\set Staff.shortInstrumentName = \markup { \concat {"B" \teeny " " \teeny \raise #0.4 \flat } }
	\transpose bf c' {
		\melody
	}
  }
%}
 >>
 \layout { }
 \midi { }
}

\version "2.12.3"  % necessary for upgrading to future LilyPond versions.
