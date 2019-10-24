\version "2.18.2"
\include "../layout/layout.ly"

\score {
  \new StaffGroup <<

  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          \partial 2 s2 ||
          \repeat volta 2 {
            s1 s1 s1 s1
            s1 s1 s1 s1
            s1 s1 s1 s1
          }

          \alternative {
            {
              s1 s1 s1 s1
            }
            {
              s1 s1 s1 s1
            }
          }

        }
      >>  
    }
  >>

  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          \partial 2 r8 sn sn8 bd\accent ||
          \repeat volta 2 {
            r8 sn     sn8 bd\accent   r8 sn     sn8 bd\accent
            r8 sn     sn8 bd\accent   r8 sn     sn8 bd\accent
            r1
            r2                        sn8 sn    sn8 sn
            
            bd8 sn    sn8 bd\accent   r8 sn     sn8 bd\accent
            bd8 sn    sn8 bd\accent   r8 sn     sn8 bd\accent
            r1
            r2                        sn8 sn    sn8 bd\accent
            
            r2                        sn8 sn    sn8 bd\accent
            r4        
            bd8\accent bd\accent
            \tuplet 3/2 {r r sn} \tuplet 3/2 {sn sn sn\accent}
            r4  sn8\accent bd sn4\accent sn8\accent sn\accent
            r2                        sn8 sn    sn8 bd\accent
          }

          \alternative {
          {
            r2                        sn8 sn    sn8 bd\accent
            r4        
            bd8\accent bd\accent
            \tuplet 3/2 {r r sn} \tuplet 3/2 {sn sn sn\accent}
            r4  sn8\accent bd sn4\accent sn8\accent sn\accent
            r2                        r8 sn sn8 bd\accent
          }
          {
            sn8 bd    sn8 sn          bd8 sn    sn8 bd
            r8 sn     sn8 bd          sn8 sn    bd8 sn\accent
            s1
            s1
          }
        }

        }
      >>
    }
  >>

  >>
}
