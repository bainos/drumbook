\version "2.18.2"
\include "../layout/layout.ly"

\score {
    \new DrumStaff <<
        \drummode {
            \time 4/4
                <<
                \new DrumVoice {
                    \voiceUP
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                    \repeat percent 3 {
                        hh8 hh hh hh hh hh( hh) hh
                    }
                    hh8 hh hh hh hh hh( hh) hh
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                    \repeat percent 3 {
                        hh8 hh hh hh hh hh( hh) hh
                    }
                    hh8 hh hh hh s2
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                    \repeat percent 3 {
                        hh8 hh hh hh hh hh( hh) hh
                    }
                    hh8 hh hh hh hh hh( hh) hh
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                    \repeat percent 3 {
                        hh8 hh hh hh hh hh( hh) hh
                    }
                    s1
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                    hha4 r2.
                    \repeat volta 7 { r1 \noBreak } \break
                    hha4 s2.
                    \repeat volta 6 { s1 \noBreak }
                    s1 \break
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                    hha8 hh  hh hha  hh hh  hh hh
                    hh8  hh  hh hh   hh hh  hh hh
                    hha8 hh  hh hha  hh hh  hh hh
                    hh8  hh  hh hh   hh s   hha8 hha
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                    hha8 hh  hh hh  hh hh  hh hh
                    hha8 hh  hh hh  hh hh  hh hh
                    hha8 hh  hh hh  hh hh  hh hh
                    s4

                }
                \new DrumVoice {
                    \voiceDOWN
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                    bd8. sn16
                    r8 bd16 bd
                    r4
                    sn4

                    s1 s1

                    bd8. sn16
                    r8 bd16 bd
                    r8 bd8
                    sn16 bd8.
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                    bd8. sn16
                    r8 bd16 bd
                    r4
                    sn4

                    s1 s1

                    bd8. sn16
                    r4
                    sn8 sn
                    hh8 hh
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                    bd8. sn16
                    r8 bd16 bd
                    r4
                    sn4

                    s1 s1

                    bd8. sn16
                    r8 bd16 bd
                    r8 bd8
                    sn16 bd8.
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                    bd8. sn16
                    r8 bd16 bd
                    r4
                    sn4

                    s1 s1

                    sn8. sn16
                    r8  sn8
                    sn8. sn16
                    r8  sn16 sn
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                    bd4 s2.
                    \repeat volta 7 { r1 \noBreak } \break
                    bd4 bd bd bd
                    \repeat volta 6 { bd4 bd bd bd \noBreak }
                    r16 bd bd8
                    r4
                    bd16 bd8.
                    bd16 bd8. \break
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                    bd8. sn16
                    r8 bd
                    r4
                    sn4

                    r4 sn r sn

                    bd8. sn16
                    r8 bd
                    r4
                    sn4

                    r4 sn
                    r8 sn16 sn
                    bd8 bd
                    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                    bd8. sn16
                    r8 bd
                    r8 bd16 bd
                    sn16 bd8 bd16

                    bd8. sn16
                    r8 ht
                    r16 ft8 bd16
                    sn16 bd8 bd 16

                    bd8. sn16
                    r8 bd
                    r8 bd16 bd
                    sn16 bd8 bd16

                    sn16 sn8 sn16
                    r16 sn8 sn16
                    sn2
                }
            >>
            \break
        }
    >>
}

