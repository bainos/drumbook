\version "2.18.2"
\include "../layout/layout.ly"

\score {
  \new DrumStaff <<
    \tempo 4 = 85
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
	  hh8 hh16 sn	hh16 hh sn hh	r16 hh hh sn	hh16 hh sn hh 	  
        }
        \new DrumVoice {
          \voiceDOWN
	  bd4	r4	r4	r8. bd16
        }
      >>
      %\break
    }
  >>
}
\score {
  \new DrumStaff <<
    \tempo 4 = 85
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
	  hh8 hh16 sn	hh16 hh sn hh	sn16 hh8 hh16	hh16 hh sn hh
        }
        \new DrumVoice {
          \voiceDOWN
	  bd4	r4	r4	r8. bd16
        }
      >>
      %\break
    }
  >>
}
\score {
  \new DrumStaff <<
    \tempo 4 = 85
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
	  hh8 hh16 sn	hh16 sn hh8	hh16 hh sn hh	sn16 hh hh8  	  
        }
        \new DrumVoice {
          \voiceDOWN
	  bd4	r4	r4	r8. bd16
        }
      >>
      %\break
    }
  >>
}
\score {
  \new DrumStaff <<
    \tempo 4 = 85
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
	  hh8 hh16 sn	hh16 hh sn hh	hh16 sn hh hh sn16 hh hh8 	  
        }
        \new DrumVoice {
          \voiceDOWN
	  bd4	r4	r4	r8. bd16
        }
      >>
      %\break
    }
  >>
}
