\version "2.18.2"
\include "../layout/layout.ly"

\score {
  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
	  \dragled sn4^>\rid \dragrid sn^>\led \dragled sn^>\rid \dragrid sn^>\led
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
          \dragled sn8^>[\rid sn]\rid
          \dragrid sn8^>\led sn\led
          \dragled sn8^>\rid sn\rid
          \dragrid sn8^>\led sn\led
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
	  \dragled \tuplet 3/2 { sn8^>[\rid sn\rid sn]\rid } 
	  \dragrid \tuplet 3/2 { sn8^>\led sn\led sn\led } 
	  \dragled \tuplet 3/2 { sn8^>\rid sn\rid sn\rid } 
	  \dragrid \tuplet 3/2 { sn8^>\led sn\led sn\led } 
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
          \dragled sn16^>[\rid sn\rid sn\rid sn]\rid
          \dragrid sn16^>\led sn\led sn\led sn\led
          \dragled sn16^>\rid sn\rid sn\rid sn\rid
          \dragrid sn16^>\led sn\led sn\led sn\led
        }
      >>
    }
  >>
}
