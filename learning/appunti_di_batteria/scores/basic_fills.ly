\version "2.18.2"
\include "../layout/layout.ly"

\score {
  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
	  sn16\rid sn\led^\markup {rullante}   sn\rid sn\led
	  ht16\rid ht\led^\markup {1° tom}  ht\rid ht\led
	  mt16\rid mt\led^\markup {2° tom}  mt\rid mt\led
	  ft16\rid ft\led^\markup {timpano} ft\rid ft\led
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
	  ht16\rid ht\led^\markup {1° tom}  ht\rid ht\led
	  mt16\rid mt\led^\markup {2° tom}  mt\rid mt\led
	  sn16\rid sn\led^\markup {rullante}   sn\rid sn\led
	  ft16\rid ft\led^\markup {timpano} ft\rid ft\led
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
	  ht16\rid ht\led^\markup {1° tom}  ht\rid ht\led
	  sn16\rid sn\led^\markup {rullante}   sn\rid sn\led
	  mt16\rid mt\led^\markup {2° tom}  mt\rid mt\led
	  ft16\rid ft\led^\markup {timpano} ft\rid ft\led
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
	  mt16\rid mt\led^\markup {2° tom}  mt\rid mt\led
	  sn16\rid sn\led^\markup {rullante}   sn\rid sn\led
	  ht16\rid ht\led^\markup {1° tom}  ht\rid ht\led
	  ft16\rid ft\led^\markup {timpano} ft\rid ft\led
        }
      >>
    }
  >>
}
