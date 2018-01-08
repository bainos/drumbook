\version "2.18.2"
\include "../layout/layout.ly"

\score {
  \new DrumStaff <<
    \drummode {
      \time 4/4
      <<
        \new DrumVoice {
          \voiceUP
          \partial 2	sn4 		sn8 sn		||
	
	  r4		sn4 		sn8 sn		r4
	  r2				sn4		sn8 sn
  	  r1				
          r2.				 		sn8 sn

	  r4		sn4 		sn8 sn		r4
	  r2				sn4		sn8 sn
  	  r1				
          r2				sn4 		sn4

	  sn4		sn8 sn		r8 sn		sn4
	  sn8 sn	r2				sn4
	  sn4		sn8 sn		r4		sn4
          sn8 sn	r4		sn4		sn8 sn

	  r2.						sn8 sn
	  r1
	  r8 sn		r4		sn4		sn8 sn
	  r2				sn4		sn8 sn

        }
      >>
    }
  >>
}
