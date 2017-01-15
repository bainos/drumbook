\version "2.18.2"
\include "../layout/layout.ly"

\score {
  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
	  sn4\rid sn\led sn\rid sn\led \bar ":..:"
	  sn8\rid sn sn\led sn sn\rid sn sn\led sn
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
	  \times 2/3 {sn8\rid sn sn}
	  \times 2/3 {sn8\led sn sn}
	  \times 2/3 {sn8\rid sn sn}
	  \times 2/3 {sn8\led sn sn}

	  \bar ":..:"

	  sn16\rid sn sn sn
	  sn16\led sn sn sn
	  sn16\rid sn sn sn
	  sn16\led sn sn sn
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
	  sn4\rid
	  sn8\led sn
	  \times 2/3 {sn8\rid sn sn}
	  sn16\led sn sn sn

	  \bar ":..:"

	  sn16\led sn sn sn
	  \times 2/3 {sn8\rid sn sn}
	  sn8\led sn
	  sn4\rid
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
	  sn4\rid
	  \times 2/3 {sn8\rid sn sn}
	  sn8\led sn
	  sn16\led sn sn sn

	  \bar ":..:"

	  sn16\led sn sn sn
	  sn8\led sn
	  \times 2/3 {sn8\rid sn sn}
	  sn4\rid
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
	  sn4\rid
	  sn16\led sn sn sn
	  sn8\led sn
	  \times 2/3 {sn8\rid sn sn}

	  \bar ":..:"

	  \times 2/3 {sn8\rid sn sn}
	  sn8\led sn
	  sn16\led sn sn sn
	  sn4\rid
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
	  sn4\rid
	  sn8\led sn
	  sn16\led sn sn sn
	  \times 2/3 {sn8\rid sn sn}

	  \bar ":..:"

	  \times 2/3 {sn8\rid sn sn}
	  sn16\led sn sn sn
	  sn8\led sn
	  sn4\rid
        }
      >>
    }
  >>
}
