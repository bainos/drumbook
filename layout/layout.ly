\version "2.18.2"

% Include
#(ly:set-option 'relative-includes #t)
\include "drumrests.ly"
\include "drumkit.ly"
% return to default setting
#(ly:set-option 'relative-includes #f)

\paper {
  system-system-spacing #'basic-distance = #15
  score-system-spacing #'basic-distance = #25
}

\layout {
  #(layout-set-staff-size 20)
  indent = 0.0\cm 
  ragged-right = ##f
  ragged-last = ##f

  \set Score.proportionalNotationDuration = #(ly:make-moment 1/4)
  \override Score.SpacingSpanner.uniform-stretching = ##t
  \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4) 
  \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/4)
  \override Score.SpacingSpanner.shortest-duration-space = #10

  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  
  \set DrumStaff.drumStyleTable = #(alist->hash-table dbdrums)

  % REQUIRES drumrests.ly
  \override DrumStaff.RestCollision #'positioning-done = #merge-rests-on-positioning
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  FUNCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% roundbox: Draw rounded-box around text.
%
#(define-markup-command (roundbox layout props text) (markup?)
  "Draw rounded-box around text."
  (interpret-markup layout props
  #{
    \markup {
      \rounded-box {
        #text
      }
    }
  #}))
%%
%% Usage:
%
%   \markup \roundbox "Struttura A - B - A - C"
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% accbox: Genera uno snippet in cui specificare l'accompagnamento
%
%   arg1: fraction as pair - pefinisce il tempo \time
%         eg: 1/4 -> #'(1. 4)
%   arg2: notazione per l'accompagnamento
%         eg: \drmmode {hh16 hh hh hh }
%
#(define accdrums '(
   (hihat   xcircle   #f 0)
))

#(define-markup-command (accbox layout props time accmusic) (pair? ly:music?)
  "doc: TODO"
  (interpret-markup layout props
  #{
  \markup {
    \score {
      \layout { ragged-right = ##t  indent = 0\cm }
      \new DrumStaff \with {
        alignAboveContext = #"3"
        fontSize = #-2
        drumStyleTable = #(alist->hash-table accdrums)
        \override StaffSymbol.staff-space = #(magstep -2)
        \override StaffSymbol.line-count = #1
        \override Stem.Y-extent = ##f
        \override Stem.length = #3
        \remove "Time_signature_engraver"
        \remove "Bar_engraver"
        %\hide Stem
      } <<
        \drummode {
          \time #time
          <<
            \new DrumVoice {
              \override TextScript.padding = #3
              \voiceUP
              #accmusic
            }
          >>
        }
      >>
    }
  }
  #}))
%
%% Usage
%
%   accmusic = \drummode {hh8^"Senso Shuffle" hh}
%   \markup \accbox #'(1 . 4) #accmusic
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  VARIABLES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Layout

voiceUP = {
  \voiceOne
  %\override Stem.length = #5
  \override Beam #'positions = #'(5 . 5)
}

voiceDOWN = {
  \voiceTwo
  %\override Stem.length = #-5
  \override Beam #'positions = #'(-5 . -5)
}

% Sticking

led = _\markup{ \raise #-3.2 "L" }
rid = _\markup{ \raise #-3.2 "R" }

leu = ^\markup{ \raise #4.5 "L" }
riu = ^\markup{ \raise #4.5 "R" }

% Special Notes

flam = \drummode { 
  \override Stem #'length = #4
  \acciaccatura{ sn8 } 
  \revert Stem #'length
}

