\version "2.18.2"
\include "../layout/layout.ly"

% \header {
%   title = "Sunny"
%   subtitle = "Miles Davis - Batteria originale di Marco Raimondi"
% }

\score {
  \new DrumStaff <<
    %\tempo 4 = 85
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          sn16\accent\riu hha\leu bd sn\leu
          hha16\accent\riu \parenthesize sn\leu <hha bd>\accent\riu \parenthesize sn\leu
          hha16\riu sn\accent\leu hha\riu \parenthesize sn\leu
          hha16\accent\riu \parenthesize sn\leu <hha bd>\accent\riu \parenthesize sn\leu

        }
      >>
      %\break
    }
  >>
}

