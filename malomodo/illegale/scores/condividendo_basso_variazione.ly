\version "2.18.2"
\include "../layout/layout.ly"

\score {
    \new DrumStaff <<
        \drummode {
            \time 4/4
                <<
                \new DrumVoice {
                    \voiceUP
                    sn2.( sn8) sn
                    sn2.( sn8) sn16 sn
                    sn2.( sn8) sn
                    sn2.( sn8) sn

                    sn16 sn8 sn16 
                    sn1.( sn8) sn
                    sn2.( sn8) sn16 sn
                    sn2.( sn8) sn
                }
            >>
            \break
        }
    >>
}

