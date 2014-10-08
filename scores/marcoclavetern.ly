\version "2.18.2"
\include "../layout/layout.ly"

\header {
  title = "Foot Prins"
  subtitle = "Marco Raimond"
}

\score {
  \new DrumStaff <<
    \drummode {
      \time 12/8
      <<
        \new DrumVoice {
          \voiceUP
          \times 2/3 { <hh bd>8[ r hh] }
          \times 2/3 { r8 hh[ hh] }
          \times 2/3 { sn8[ hh] r }
          \times 2/3 { hh8[ r <hh bd>] }
        }
      >>
      %\break
    }
  >>
}
