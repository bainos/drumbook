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
          sn16\accent sn sn8   r8 sn\accent   r4            sn16\accent sn sn8
          sn8.\accent sn16\accent     r8 sn\accent   r4            r8 sn16 sn
          sn4\accent           r4      r4            sn 16 sn sn sn\accent
          r8 sn16 sn    sn4\accent     sn16\accent sn sn8   r4
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
          %\partial 2	sn4 		sn8 sn		||
          bd16 bd bd8   sn8 bd   r4            sn16 bd bd8
          bd8. bd16     sn8 bd   r4            sn8 bd16 bd
          bd4           sn4      r4            sn 16 bd bd bd
          r8 bd16 bd    sn4      bd16 bd bd8   sn4
        }
      >>
    }
  >>
}
