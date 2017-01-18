\version "2.18.2"
\include "../layout/layout.ly"

\score {
  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
	  \set countPercentRepeats = ##t
	  \repeat percent 3 { bd8 sn sn4 bd sn }
	  s1^\markup { fill }
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
	  \set countPercentRepeats = ##t
	  \repeat percent 3 { bd4 sn8 bd bd4 sn }
	  s1^\markup { fill }
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
	  \set countPercentRepeats = ##t
	  \repeat percent 3 { bd4 sn bd8 sn sn4 }
	  s1^\markup { fill }
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
	  \set countPercentRepeats = ##t
	  \repeat percent 3 { bd4 sn bd sn8 bd }
	  s1^\markup { fill }
        }
      >>
    }
  >>
}
