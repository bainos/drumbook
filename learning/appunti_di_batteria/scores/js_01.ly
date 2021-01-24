\version "2.18.2"
\include "../layout/layout.ly"

\score {
  \new DrumStaff <<
    %\tempo 4 = 85
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          \tuplet 3/2 {hh sn sn} \tuplet 3/2 {hh sn hh} \tuplet 3/2 {hh sn sn} \tuplet 3/2 {hh sn sn}
          \tuplet 3/2 {hh sn hh} \tuplet 3/2 {hh sn sn} \tuplet 3/2 {hh sn sn} \tuplet 3/2 {hh sn hh}
          \break
          \tuplet 3/2 {hh sn sn} \tuplet 3/2 {hh sn sn} \tuplet 3/2 {hh sn hh} \tuplet 3/2 {hh sn sn}
          \tuplet 3/2 {hh sn sn} \tuplet 3/2 {hh sn hh} \tuplet 3/2 {hh sn sn} \tuplet 3/2 {hh sn sn}
        }
      >>
      %\break
    }
  >>
}
