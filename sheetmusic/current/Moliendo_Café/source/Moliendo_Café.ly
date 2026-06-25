\version "2.12.1"

\header { 
	tagline = "2/6/2026"
	title = "Moliendo Café"
	composer = "Hugo Blanco"
	copyright = "3/11/10"
	}

%description:1961 hit song by <a href="http://en.wikipedia.org/wiki/Hugo_Blanco_%28musician%29">Hugo Blanco</a> of Venezuela about a coffee picker in love with the plantation owner’s daughter. (Also see <a href="http://en.wikipedia.org/wiki/Moliendo_Cafe">wikipedia entry</a>.)

%place a mark at bottom right
markdownright = { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \once \override Score.RehearsalMark #'direction = #DOWN }


% music pieces
%part: melody
melody = {
  \relative c' { 
    \key d \minor 
  \partial 4. a8 d e |
  \mark \default
	f f r f r f r f | r e r e f4 e8 d | f4. d8~ d2~ | d2 r8 a d e |
	f f r f r f r f | r e r e f4 e8 d | g1 | r2 r8 d e f |
	g g r g r g r a | r a r g a4 g8 a | g4. f8~ f2~ | f2 r8 a, d e | 
	f f r f r f r f | r e r e e4 f8 e | d1~ | d2 r |
        \break \mark \default

	g8 g r g r a r g | bes2~ bes8 a g a | g4. f8~ f2~ | f2. r4 |
	g8 g r g r a r g | bes2~ bes8 a c a | g4. f8~ f2~ | f2. r4 |
	e8 e r e e4 e | g8 g r g g4 f8 g | e2. a8 a | a1 | \bar "||"

	\break \mark \default
	d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 | d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 |
	d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 | d8 r r4 r2 | a1\trill |
  } 
	
}

%part: harmony
harmony = {
  \relative c' { 
    \key d \minor 
  \partial 4. d8 f g |
  \mark \default
	a a r a r a r a | r g r g a4 g8 f | a4. f8~ f2~ | f2 r8 d f g |
	a a r a r a r a | r g r g a4 g8 f | bes1 | r2 r8 f g a |
	bes bes r bes r bes r c | r c r bes c4 bes8 c | bes4. a8~ a2~ | a2 r8 d, f g | 
	a a r a r a r a | r g r g g4 a8 g | f1~ | f2 r |
       \break \mark \default

	bes8 bes r bes r c r bes | d2~ d8 c bes c | bes4. a8~ a2~ | a2. r4 |
	bes8 bes r bes r c r bes | d2~ d8 c c c | bes4. a8~ a2~ | a2. r4 |
	g8 g r g g4 g | bes8 bes r bes bes4 a8 bes | g2. cis8 d | cis1 | \bar "||"

	\break \mark \default
	d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 | d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 |
	d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 | d8 r r4 r2 | a1\trill | 
  } 
	
}

%{ when combining melody and harmony, what order should they be in? 
harmony
melody
%}

%part: bass
bass = {
  \relative c {
    \key d \minor
    \partial 4. r8 r4 |
    \mark \default
    d4. f a4-. | d,4. f a4-. | d,4. f a4-. | d,4. f a4-. |
    d,4. f a4-. | d,4. f a4-. | g4. bes d4-. |  g,4. bes d4-. |
    g,4. bes d4-. |  g,4. bes d4-. | d,4. f a4-. | d,4. f a4-. |
    bes,4. d f4-. | a,4. cis e4-. | d4. f a4-. | d4 r r2 |

    \break \mark \default
    g,4. bes d4-. |  g,4. bes d4-. | d,4. f a4-. | d,4. f a4-. |
    g4. bes d4-. |  g,4. bes d4-. | d,4. f a4-. | d,4. f a4-. |
    e4. g bes4-. |  e,4. g bes4-. | a,4. cis e4-. | a,4 r r2 |

    \break \mark \default
    d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 | d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 |
    d8 r r4 c8 r r4 | bes8 r r a8 r a cis4 | d8 r r4 r2 | a1\trill |
  }
}

%part: words
words = \markup { }

%part: changes
changes = \chordmode { 
s4. | 
    d1:m d:m d:m d:m 
    d:m d:m g:m g:m 
    g:m g:m d:m d:m
    bes a:7 d:m d:m
    %B
    g:m g:m d:m d:m
    g:m g:m d:m d:m
    e:dim e:dim a:7 a:7
    
}

%%Generated layout
%------------------Code to 'naturalize' music - get rid of double-sharps, E#, etc.-----------------
#(define (naturalize-pitch p)
  (let ((o (ly:pitch-octave p))
        (a (* 4 (ly:pitch-alteration p)))
        ;; alteration, a, in quarter tone steps,
        ;; for historical reasons
        (n (ly:pitch-notename p)))
    (cond
     ((and (> a 1) (or (eq? n 6) (eq? n 2)))
      (set! a (- a 2))
      (set! n (+ n 1)))
     ((and (< a -1) (or (eq? n 0) (eq? n 3)))
      (set! a (+ a 2))
      (set! n (- n 1))))
    (cond
     ((> a 2) (set! a (- a 4)) (set! n (+ n 1)))
     ((< a -2) (set! a (+ a 4)) (set! n (- n 1))))
    (if (< n 0) (begin (set! o (- o 1)) (set! n (+ n 7))))
    (if (> n 6) (begin (set! o (+ o 1)) (set! n (- n 7))))
    (ly:make-pitch o n (/ a 4))))

#(define (naturalize music)
  (let ((es (ly:music-property music 'elements))
        (e (ly:music-property music 'element))
        (p (ly:music-property music 'pitch)))
    (if (pair? es)
       (ly:music-set-property!
         music 'elements
         (map (lambda (x) (naturalize x)) es)))
    (if (ly:music? e)
       (ly:music-set-property!
         music 'element
         (naturalize e)))
    (if (ly:pitch? p)
       (begin
         (set! p (naturalize-pitch p))
         (ly:music-set-property! music 'pitch p)))
    music))

naturalizeMusic =
#(define-music-function (parser location m)
  (ly:music?)
  (naturalize m))
%-----------------End Naturalization code---------------

#(set-default-paper-size "letter")
\pointAndClickOff

\book {
	\score { <<
			\set Score.rehearsalMarkFormatter = #format-mark-box-numbers

			
		% Group: Melody
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Melody" } {  \set Staff.midiInstrument = #"trumpet" \clef treble
			\tempo  4 = 184
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\melody
		}
		% Group: Harmony
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Harmony" } {  \set Staff.midiInstrument = #"clarinet" \clef treble
			\tempo  4 = 184
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\harmony
		}
		% Group: Bass
		\new Staff \with { \consists "Volta_engraver" instrumentName = "Bass" } {  \set Staff.midiInstrument = #"tuba" \clef bass
			\tempo  4 = 184
			\override Score.RehearsalMark.self-alignment-X = #LEFT
			\bass
		}
	>> \layout { \context { \Score \remove "Volta_engraver" } } }  
}