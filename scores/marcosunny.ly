\version "2.18.2"
\include "../layout/layout.ly"

\header {
  title = "Sunny"
  subtitle = "Marco Raimondi"
}

\score {
  \new DrumStaff <<
    %\tempo 4 = 85
    \mark "Groove A"
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          hha16\rid sn\led bd hha\led
          hhao16\rid( sn\led <hha bd>\rid) sn\led
          hhao16\rid( sn\led <hha bd>\rid) sn\led
          hha16\rid sn\led sn\led hha\rid
        }
      >>
      %\break
    }
  >>
}

\score {
  \new DrumStaff <<
    %\tempo 4 = 85
    \mark "Groove B"
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          sn16\accent hha bd sn
          hha16\accent \parenthesize sn <hha bd>\accent \parenthesize sn
          hha16 sn\accent hha \parenthesize sn
          hha16\accent \parenthesize sn <hha bd>\accent \parenthesize sn

        }
      >>
      %\break
    }
  >>
}

\markup \draw-hline

\score {
  \new DrumStaff <<
    %\tempo 4 = 85
    \mark "Groove A 5/4"
    \drummode {
      \time 5/4
      <<
        \new DrumVoice {
          \voiceUP
          hha16\rid sn\led bd hha\led
          hhao16\rid( sn\led <hha bd>\rid) sn\led
          hhao16\rid( sn\led <hha bd>\rid) sn\led
          hha16\rid sn\led sn\led hha\rid
          sn16\led hha\rid hha\rid sn\led
        }
      >>
      %\break
    }
  >>
}

