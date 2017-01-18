\version "2.18.2"
\include "../layout/layout.ly"

\score {
  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
	  \flamled sn4\rid \flamrid sn\led \flamled sn\rid \flamrid sn\led
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
          \flamled sn8\rid sn\rid
          \flamrid sn8\led sn\led
          \flamled sn8\rid sn\rid
          \flamrid sn8\led sn\led
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
	  \flamled \tuplet 3/2 { sn8\rid sn\rid sn\rid } 
	  \flamrid \tuplet 3/2 { sn8\led sn\led sn\led } 
	  \flamled \tuplet 3/2 { sn8\rid sn\rid sn\rid } 
	  \flamrid \tuplet 3/2 { sn8\led sn\led sn\led } 
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
          \flamled sn16\rid sn\rid sn\rid sn\rid
          \flamrid sn16\led sn\led sn\led sn\led
          \flamled sn16\rid sn\rid sn\rid sn\rid
          \flamrid sn16\led sn\led sn\led sn\led
        }
      >>
    }
  >>
}
