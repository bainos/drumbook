\version "2.18.2"
\include "../layout/layout.ly"

% \header {
%   title = "Yatra Ta"
%   subtitle = "Tania Maria"
% }

\markup {\raise #4.0 "Intro" }
\score {
  \new DrumStaff <<
    %\tempo 4 = 85
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          sn16\accent\rid sn16\led sn16\rid sna16\accent\led
          r16 sna16\accent\led sn16\rid sn16\led
          sna8\accent\rid sn16\rid sn16\led 
          sn16\rid sn16\led sn16\rid sna16\accent\led
        }
      >>
      <<
        \new DrumVoice {
          \voiceUP
          r16 sn16\led sn16\rid sn16\led
          sn16\rid sn16\led sn16\rid sna16\accent\led
          r16 sn16\led sn16\rid sn16\led
          sna16\accent\rid sn16\led sn16\rid sn16\led
        }
      >>
      <<
        \new DrumVoice {
          \voiceUP
          sna16\accent\rid sn16\led sn16\rid sn16\led
          sna16\accent\rid sn16\led sn16\rid sn16\led
          sna16\accent\rid sn16\led sn16\rid sn16\led
          sna16\accent\rid sn16\led sn16\rid sn16\led
        }
      >>
      <<
        \new DrumVoice {
          \voiceUP
          sna16\accent\rid sn16\led sn16\rid sna16\accent\led
          r8 \flam snd8
          r8. bd16
          <hh sn>16 <hh sn>16 <hh sn>16 bd16
        }
      >>
      <<
        \new DrumVoice {
          \voiceUP
          <hh sn>16 <hh sn>16 <hh sn>16 bd16
          <hh sn>16 <hh sn>16 <hh sn>16 <hh sn>16
          r4
          \flam \times 2/3 { snd8 bd8 bd8 }
        }
      >>
      <<
        \new DrumVoice {
          \voiceUP
          bd4 r2 hh4
        }
      >>
      <<
        \new DrumVoice {
          \voiceUP
          <hh sn>4 <hh sn>8. <hh sn>16 <hh sn>4 <hh sn>4
        }
      >>
    }
  >>
}

\markup {\raise #4.0 "Groove A" }
\score {
  \new DrumStaff <<
    %\tempo 4 = 85
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          sn8 sn
          r16 sn8 sn16
          r8. sn16
          r16 sn8.

          sn8 sn
          r16 sn8 sn16
          r2
        }
      >>
    }
  >>
}

\markup {\raise #4.0 "Groove B" }
\score {
  \new DrumStaff <<
    %\tempo 4 = 85
    \drummode {
      \time 4/4
      <<
        \repeat percent 2{
          \new DrumVoice {
            \voiceUP
            sn8 sn
            sn16 sn8 sn16
            r16 sn8 sn16
            r16 sn16 sn8
          }
        }
      >>
    }
  >>
}
