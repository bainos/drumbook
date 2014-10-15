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
          sn16\accent hha bd sn
          hha16\accent \parenthesize sn <hha bd>\accent \parenthesize sn
          hha16 sn\accent hha \parenthesize sn
          hha16\accent \parenthesize sn <hha bd>\accent \parenthesize sn

        }
      >>
      %\break
    }
  >>
}

