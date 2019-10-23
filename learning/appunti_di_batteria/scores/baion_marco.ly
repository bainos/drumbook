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
          r8 sn       r16 ht8 ft16    r8 sn         r16 ht8 ft16
        }
        \new DrumVoice {
          \voiceDOWN
          bd8. bd16   r4              bd8. bd16     r4
        }
      >>
      %\break
    }
  >>
}
