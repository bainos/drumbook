\version "2.18.2"
\include "../layout/layout.ly"

\score {
  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          \partial 2	r8 sn		sn8 sn		||

          r2                  r8 sn     sn8 sn
          sn4.      sn8       r2
          r8 sn     sn8 sn    sn8 sn    sn8 sn
          sn8 sn    sn8 sn    r4        sn4

          sn8 sn\accent    r4        sn4\accent       r8 sn\accent
          r8 sn     sn8 sn    sn8 sn    sn8 sn
          sn8 sn    sn8 sn\accent    r2
          r8 sn     sn8 sn    sn8 sn    sn8 sn

          r2                  r8 sn     sn8 sn
          sn4.      sn8       r2
          r8 sn     sn8 sn    sn8 sn    sn8 sn
          sn8 sn    sn8 sn    r4        sn4

          sn8 sn\accent    r4        sn4\accent       r8 sn\accent
          r8 sn     sn8 sn    sn8 sn    sn8 sn
          sn8 sn    sn8 sn\accent    r2
          r8 sn     sn8 sn    sn8 sn  sn8 sn

          sn4     r8 sn     sn4       sn4
          r8 sn   sn8 sn    sn8 sn    sn8 sn
          sn4     r8 sn     sn4       sn4
          r8 sn   sn8 sn    sn8 sn    sn8 sn

          sn4     sn8 sn    sn4       sn8 sn
          r8 sn   sn8 sn    sn8 sn    sn8 sn
          sn4     sn4       sn4       sn4
          r8 sn   sn8 sn    sn8 sn    sn8 sn

          r2                r8 sn     sn8 sn
          sn4     r8 sn     r2
          r8 sn   sn8 sn    sn8 sn    sn8 sn
          sn8 sn  sn8 sn    r4        sn4

          sn8 sn\accent    r4        sn4\accent       r8 sn\accent
          r8 sn   sn8 sn    sn8 sn    sn8 sn
          sn8 sn  sn8 sn    r2
          r1
        }
      >>
    }
  >>
}
