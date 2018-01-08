\version "2.18.2"
\include "../layout/layout.ly"

\score {
  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          %\partial 2	sn4 		sn8 sn		||
        }
      >>
    }
  >>
}
