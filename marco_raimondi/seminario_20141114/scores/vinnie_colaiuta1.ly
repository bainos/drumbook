\version "2.18.2"
\include "../layout/layout.ly"

% \header {
%   title = "Love is Stronger than Justice"
%   subtitle = "Sting - Batteria originale di Vinnie Colaiuta"
% }

\score {
  \new DrumStaff <<
    %\tempo 4 = 85
    \drummode {
      \time 7/8
      <<
        \new DrumVoice {
          \voiceUP
          \repeat percent 2 {
            s4 
            sn8.[ bd16]
            s4
            sn8
          }
        }
        \new DrumVoice {
          \voiceDOWN
          \override Rest.staff-position = #0
          bd8.[ bd16]
          s4
          r16 bd16[ bd8]
          s4
        }
      >>
      %\break
    }
  >>
}
