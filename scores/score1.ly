\version "2.18.2"
\include "../layout/layout.ly"

\header {
  title = "Post Orgasmic Chill"
  subtitle = "Skunk Anansie"
  %tagline = #(string-append "Score created using DrumBurp 0.9, engraved with Lilypond " (lilypond-version))
  %composer = "Skunk Anansie"
  %arranger = "bainos"
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
      <<
        \new DrumVoice {
          \voiceUP
          bd16 hh bd sn hh bd bd hh hh sn bd bd sn sn hh hh 
        }
      >>
      \break
      <<
        \new DrumVoice {
          \voiceUP
          bd16 hh bd sn hh bd bd hh hh sn bd bd sn sn hh hh
        }
      >>
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
      \break
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
      <<
        \new DrumVoice {
          \voiceUP
          bd16 hh bd sn hh bd bd hh hh sn bd bd sn sn hh hh
        }
      >>
      \break
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
      \break
      <<
        \new DrumVoice {
          \voiceUP
          bd16 hh bd sn hh bd bd hh hh sn bd bd sn sn hh hh
        }
      >>
    }
  >>
}
