\version "2.18.2"
\include "../layout/layout.ly"

\score {
  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          hh4 hh4 hh4 hh4
        }
      >>
    }
  >>
}
