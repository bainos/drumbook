\version "2.18.2"
\include "../layout/layout.ly"

% \header {
%   title = "Groove in 5/4"
%   subtitle = "Batteria originale di Marco Raimondi"
% }

\score {
  \new DrumStaff <<
    %\tempo 4 = 85
    \drummode {
      \time 5/4
      <<
        \new DrumVoice {
          \voiceUP
          hha16\accent\riu  \parenthesize sn\leu hha\riu \parenthesize sn\leu
          hha16\accent\riu \parenthesize sn\leu hha\riu \parenthesize sn\leu
          hha16\accent\riu \parenthesize sn\leu hha\riu \parenthesize sn\leu
          hha16\riu sn\accent\leu hha\riu hha\leu
          hha16\riu sn\accent\leu hha\riu \parenthesize sn\leu
        }
        \new DrumVoice {
          \voiceDOWN
          r8 bd
          r16 bd8 bd16
          bd8 bd
          r2
        }
      >>
      %\break
    }
  >>
}
\score {
  \new DrumStaff <<
    %\tempo 4 = 85
    \drummode {
      \time 5/4
      <<
        \new DrumVoice {
          \voiceUP
          \repeat percent 2{
            s4
            r16 sn8.
            s4
            s4
            bd16 sn8.
          }
        }
        \new DrumVoice {
          \voiceDOWN
          \override Rest.staff-position = #0
          bd8 bd
          s4
          bd8. bd16
          r8. bd16
          s4
        }
      >>
      %\break
    }
  >>
}
