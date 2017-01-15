\version "2.18.2"
\include "../layout/layout.ly"

\score {
  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          sn16\accent\rid sn\led sn\rid sn\rid
          sn16\accent\led sn\rid sn\led sn\led
          sn16\accent\rid sn\led sn\rid sn\rid
          sn16\accent\led sn\rid sn\led sn\led
        }
      >>
    }
  >>
}

\score {
  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          sn16\rid sn\led sn\led sn16\accent\led
          sn16\led sn\rid sn\rid sn16\accent\rid
          sn16\rid sn\led sn\led sn16\accent\led
          sn16\led sn\rid sn\rid sn16\accent\rid
        }
      >>
    }
  >>
}

\score {
  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          sn16\rid sn\rid sn16\accent\led sn\rid
          sn16\led sn\led sn16\accent\rid sn\led
          sn16\rid sn\rid sn16\accent\led sn\rid
          sn16\led sn\led sn16\accent\rid sn\led
        }
      >>
    }
  >>
}

\score {
  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          sn16\rid sn16\accent\led sn\rid sn\led
          sn16\led sn16\accent\rid sn\led sn\rid
          sn16\rid sn16\accent\led sn\rid sn\led
          sn16\led sn16\accent\rid sn\led sn\rid
        }
      >>
    }
  >>
}
