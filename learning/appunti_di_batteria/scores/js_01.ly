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
          hh4                     \tuplet 3/2 {hh4 hh8}   hh4                     hh4
          \tuplet 3/2 {hh4 hh8}   hh4                     hh4                     \tuplet 3/2 {hh4 hh8}
          \break
          hh4                     hh4                     \tuplet 3/2 {hh4  hh8}  hh4
          hh4                     \tuplet 3/2 {hh4  hh8}  hh4                     hh4
        }
      >>
      %\break
    }
  >>
}

\score {
  \new DrumStaff <<
    %\tempo 4 = 85
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          \tuplet 3/2 {hh8 sn sn} \tuplet 3/2 {hh8 sn hh} \tuplet 3/2 {hh8 sn sn} \tuplet 3/2 {hh8 sn sn}
          \tuplet 3/2 {hh8 sn hh} \tuplet 3/2 {hh8 sn sn} \tuplet 3/2 {hh8 sn sn} \tuplet 3/2 {hh8 sn hh}
          \break
          \tuplet 3/2 {hh8 sn sn} \tuplet 3/2 {hh8 sn sn} \tuplet 3/2 {hh8 sn hh} \tuplet 3/2 {hh8 sn sn}
          \tuplet 3/2 {hh8 sn sn} \tuplet 3/2 {hh8 sn hh} \tuplet 3/2 {hh8 sn sn} \tuplet 3/2 {hh8 sn sn}
        }
      >>
      %\break
    }
  >>
}

\score {
  \new DrumStaff <<
    %\tempo 4 = 85
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          \tuplet 3/2 {hh8 sn sn} \tuplet 3/2 {hh8 sn hh} \tuplet 3/2 {hh8 sn sn} \tuplet 3/2 {hh8 bd bd}
          \tuplet 3/2 {hh8 sn hh} \tuplet 3/2 {hh8 sn sn} \tuplet 3/2 {hh8 bd bd} \tuplet 3/2 {hh8 sn hh}
          \break
          \tuplet 3/2 {hh8 sn sn} \tuplet 3/2 {hh8 bd bd} \tuplet 3/2 {hh8 sn hh} \tuplet 3/2 {hh8 sn sn}
          \tuplet 3/2 {hh8 bd bd} \tuplet 3/2 {hh8 sn hh} \tuplet 3/2 {hh8 sn sn} \tuplet 3/2 {hh8 sn sn}
        }
      >>
      %\break
    }
  >>
}
