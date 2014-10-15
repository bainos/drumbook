\version "2.18.2"
\include "../layout/layout.ly"

% \header {
%   title = "Footprints"
%   subtitle = "Miles Davis - Batteria originale di Marco Raimond"
%   subsubtitle = "Clave Ternaria"
% }

\score {
  \new DrumStaff <<
    \drummode {
      \time 12/8
      <<
        \new DrumVoice {
          \voiceUP
          \times 2/3 { <hh bd>8[ r hh] }
          \times 2/3 { r8 hh[ hh] }
          \times 2/3 { sn8[ hh] r }
          \times 2/3 { hh8[ r <hh bd>] }
        }
      >>
      %\break
    }
  >>
}
