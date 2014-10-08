\version "2.18.2"
\include "../layout/layout.ly"

\header {
  title = "We Gio"
  subtitle = "Marco Raimondi"
}

#(define mydrums '(
   (footpedal   cross   #f -8)
   (kick        ()      #f -5)
))

\markup \roundbox "Struttura A - B - A - C"

\score {
  \new DrumStaff <<
    \mark "Groove A"
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          ft16\accent\riu hha\leu hha\leu sn\accent\riu
          hha\accent\leu sn\riu sn\riu 
          % This is good for single score compile
          %\shape #'((9 . 1) (23 . 1.7) (36 . 1.7) (48 . 1)) Tie hha~\accent 
          % This is good for lilypond-book
          \shape #'((6 . 1) (18 . 1.7) (30 . 1.7) (41 . 1)) Tie hha~\accent\leu 
          sn2:32^\markup{ \hspace #20.0 \italic \small Press }
        }
        \new DrumVoice {
          \voiceDOWN
          bd4 bd bd bd
        }
      >>
      \break
    }
  >>
}

\score {
  \new DrumStaff <<
    \mark "Groove B"
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          ft16\accent\riu hha\leu hha\leu sn\accent\riu
          hha\accent\leu sn\riu sn\riu hha\accent\leu
          ht\accent\riu \parenthesize sn\leu mt\accent\riu \parenthesize sn\leu
          ft\accent\riu \parenthesize sn\leu \parenthesize sn\riu sn\accent\leu
        }
        \new DrumVoice {
          \voiceDOWN
          bd4 bd bd bd
        }
      >>
      \break
    }
  >>
}
      
\score {
  \new DrumStaff <<
    \mark "Groove C"
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          ft16\accent\riu hha\leu hha\leu sn\accent\riu
          hha\accent\leu sn\riu sn\riu hha\accent\leu
          \once \override Stem.length = #10
          sn4\accent
          \once \override Stem.length = #16
          \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
          <bd hf>4\accent
          %\set DrumStaff.drumStyleTable = #(alist->hash-table dbdrums)
        }
        \new DrumVoice {
          \voiceDOWN
          bd4 bd bd s
        }
      >>
      %\break
    }
  >>
}
