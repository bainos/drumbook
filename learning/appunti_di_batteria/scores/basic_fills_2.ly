\version "2.18.2"
\include "../layout/layout.ly"

\score {
  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
	  sn16\rid^\markup {rull}    sn\led
	  ht\rid^\markup {1° tom}    ht\led
	  mt16\rid^\markup {2° tom}  mt\led
	  ft\rid^\markup {timpano}   ft\led

	  sn16\rid  sn\led
	  ht\rid    ht\led
	  mt16\rid  mt\led
	  ft\rid    ft\led
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
	  ht\rid^\markup {1° tom}    ht\led
	  mt16\rid^\markup {2° tom}  mt\led
	  ft\rid^\markup {timpano}   ft\led
	  sn16\rid^\markup {rull}    sn\led

	  ht\rid    ht\led
	  mt16\rid  mt\led
	  ft\rid    ft\led
	  sn16\rid  sn\led
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
	  ht\rid^\markup {1° tom}    ht\led
	  sn16\rid^\markup {rull}    sn\led
	  mt16\rid^\markup {2° tom}  mt\led
	  ft\rid^\markup {timpano}   ft\led

	  ht\rid    ht\led
	  sn16\rid  sn\led
	  mt16\rid  mt\led
	  ft\rid    ft\led
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
	  mt16\rid^\markup {2° tom}  mt\led
	  sn16\rid^\markup {rull}    sn\led
	  ht\rid^\markup {1° tom}    ht\led
	  ft\rid^\markup {timpano}   ft\led

	  mt16\rid  mt\led
	  sn16\rid  sn\led
	  ht\rid    ht\led
	  ft\rid    ft\led
        }
      >>
    }
  >>
}
