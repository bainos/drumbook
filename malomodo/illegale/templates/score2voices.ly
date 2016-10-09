\version "2.18.2"
\include "../layout/layout.ly"

\header {
  title = "Title"
  subtitle = "Author"
}

\score {
  \new DrumStaff <<
    \tempo 4 = 85
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          hh4 hh4 hh4 hh4
        }
        \new DrumVoice {
          \voiceDOWN
          bd16 bd16 bd16 sn16 r16 bd16 bd8 r16 sn16 bd16 bd16 sn16 sn8.
        }
      >>
      %\break
    }
  >>
}
