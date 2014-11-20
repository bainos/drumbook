\version "2.18.2"
\include "../layout/layout.ly"

% \header {
%   title = "So What"
%   subtitle = "Miles Davis - Batteria originale di Marco Raimondi"
% }

% Accompagnamento
accmusic = \drummode {hh8^"Senso Shuffle" hh}
\markup \accbox #'(1 . 4) #accmusic

\score {
  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          s4
          sn8. sn16
          s4
          sn16 bd8 sn16

          s4
          sn8. sn16
          s4
          sn16 bd8.
        }
        \new DrumVoice {
          \voiceDOWN
          \override Rest.staff-position = #0
          bd8 bd
          s4
          r16 bd16 bd8
          s4

          bd8 bd
          s4
          r16 bd bd bd
          s4
        }
      >>
      %\break
    }
  >>
}
