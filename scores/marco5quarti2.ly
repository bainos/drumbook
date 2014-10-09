\version "2.18.2"
\include "../layout/layout.ly"

\markup {\raise #4.0 "Groove A" }
\score {
  \new DrumStaff <<
    %\tempo 4 = 85
    \drummode {
      \time 5/4
      <<
        \new DrumVoice {
          \voiceUP
          hha16\rid sn\led bd hha\led
          hhao16\rid( sn\led <hha bd>\rid) sn\led
          hhao16\rid( sn\led <hha bd>\rid) sn\led
          hha16\rid sn\led sn\led hha\rid
          sn16\led hha\rid hha\rid sn\led
        }
      >>
      %\break
    }
  >>
}

\markup \draw-hline

\markup {\raise #4.0 "Groove B" }
\score {
  \new DrumStaff <<
    %\tempo 4 = 85
    \drummode {
      <<
        \new DrumVoice {
          \voiceUP
          hha16\rid sn\led bd hha\led
          hhao16\rid( sn\led <hha bd>\rid) sn\led
          hhao16\rid( sn\led <hha bd>\rid) sn\led
          hha16\rid sn\led sn\led hha\rid
        }
      >>
      %\break
    }
  >>
}

