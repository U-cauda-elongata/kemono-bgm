\version "2.19.24"

\include "stylesheet.ily"

cleft = \change Staff = "left"
cright = \change Staff = "right"

\header {
  title = "けもの達の哀しみ"
  nickname = "（合わせる顔が無いやつ）"
  revision = "Revision 2 (Unfinished)"
  date = "2017/6/3"
}

\paper {
}

global = {
  \key a \major
  \time 4/4
  \tempo 4 = 70
  s1*14
  \bar "||"
  s1*9
  \bar "||"
  \mark \markup { \fontsize #-2 \musicglyph #"scripts.ufermata" }
  s1*2
  \bar "|."
}

right = << \global \relative c'' {
  \clef treble
  << \relative {
    \voiceOne
    <d' fis a cis>2.\arpeggio a''4 |
    e'4. d16 cis a2 |
    <d,, fis a cis>2.\arpeggio fis'4 |
    cis'4. b16 a b2 |
    <d,, fis a cis>2.\arpeggio a''4 |
    e'4. d16 cis a4 cis |
    <b, dis fis b>1\arpeggio |
    <e, g c>2\arpeggio b''8\arpeggio c d e |
    <g,, b e g>1\arpeggio |
    s2 \oneVoice b'8 c d e | \voiceOne
    <g,, b e g>1\arpeggio |
    s2 \oneVoice b'8 c d e | \voiceOne
    <d, fis a d>4.\arpeggio c'8 <b, e g b>4.\arpeggio a'8 |
    \once \override TextSpanner.bound-details.left.text = "poco rit."
    \once \override TextSpanner.bound-details.right.text = "a tempo"
    \once \override TextSpanner.bound-details.left-broken.text = ##f
    \once \override TextSpanner.bound-details.right-broken.text = ##f
    <g, c ees g>4.\arpeggio\startTextSpan f'8 <ees, g bes ees>4.\arpeggio des'8 |

    \key f \minor
    << { r4\stopTextSpan <aes aes'> ~ q4. <c c'>8 ~ } >>
    <c c'>8 <g g'>4. ~ q4 r16 <ees ees'>8. |
    <f aes c f>1\arpeggio |
    r2 <ees ees'>4.\arpeggio <des des'>8 |
    <c f aes c>2.\arpeggio r8 aes'16 c |
    <bes, ees g bes>4\arpeggio <ees ees'> <g g'>4. <bes bes'>8 |
    <aes des ees aes>2\arpeggio r8 <f f'> <g g'> <aes aes'> |
    \once \override TextSpanner.bound-details.left.text = "rit."
    <bes c f bes>2\arpeggio\startTextSpan <c f c'>\arpeggio ~ |
    \override LaissezVibrerTieColumn.tie-configuration = #`((9 . ,UP) (9 . ,UP) (9 . ,UP))
    q1\stopTextSpan\laissezVibrer |
     } \new Voice \relative {
    \voiceTwo
    r8 fis' a b cis2 ~ |
    cis2 <d, fis a cis>\arpeggio |
    r8 fis a cis <fis, b e>2\arpeggio ~ |
    q2 <e fis cis'>\arpeggio |
    r8 fis a b cis2 ~ |
    cis2 <d, fis a cis>\arpeggio |
    r8 dis fis b dis2 |
    r8 e, a4 <c e>2\arpeggio |
    r8 g <b e>4 <g b e>8 q q q |
    <a c d fis>2\arpeggio s |
    r8 g <b e>4 <g b e>8 q q q |
    <a c d fis>2\arpeggio s |
    r8 fis <a d fis>4 r8 g <b e>4 |
    r8 ees, <g c>4 r8 g bes4 |

    r8 c, f aes <c f>2 |
    r8 bes, ees g <bes d>2 |
    r8 des, f aes c2 |
    r8 bes, ees g bes2
    r8 c, f aes <c f>2 |
    r8 ees, g bes ees2 |
    r8 ees,_\markup \italic "(m.d.)" aes des <ees, aes c>2\arpeggio |
    r8 c f bes <f, c' a'>2\arpeggio ~ |

    q1\laissezVibrer
    \key d \major
    \voiceOne
    \set tieWaitForNote = ##t
    \magnifyMusic 0.75 { s32*2 \stemUp fis'32[ ~ a ~ cis ~ d] ~ fis[ ~ a]  } <fis, a cis d fis a cis>1*3/4
    \set tieWaitForNote = ##f
    R1
  } \new Voice {
    \voiceThree
    s1*14
    <c, f aes c>1\arpeggio | \once \override Arpeggio.padding = 1.2 <ees g bes>\arpeggio | s | <ees g bes>\arpeggio |
    s1*4 |
    \override LaissezVibrerTieColumn.tie-configuration = #`((5 . ,UP) (12 . ,UP))
    \override Arpeggio.X-offset = -1.2
    <f' f'>1\arpeggio\laissezVibrer
    \voiceTwo
    s4 \override NoteHead.style = #'harmonic s2*3/4 \once \override TextScript.X-offset = -4.4
    <d, e fis>2*3/4_\markup \italic { "without sound" } ~ q1 |
  } >>
} >>

left = << \global \relative c {
  \clef bass
  d1 ~ | d |
  d1 ~ | d |
  d1 ~ | d |
  <gis, gis'>1 | <a a'>2 <d a' c> |
  << { c'2 c8 c c c | c1 } \\ { c,1 ~ | c } >>
  << { c'2 c8 c c c | c1 } \\ { c,1 ~ | c } >>
  <b b'>2 <e e'> | <aes, aes'> des |
  \key f \minor
  <f, f'>1 | <ees ees'> | <des des'> | <ees ees'> |
  <f f'> | <g g'> | <aes aes'> | <f f'>2 s2 | s1 |

  \set tieWaitForNote = ##t
  \key d \major
  \magnifyMusic 0.75 { d'32 ~ d' ~ s32*6 } <d, d'>1*3/4
  \set tieWaitForNote = ##f
  R1 |
} >>

dynamics = {
  s1\p s s s s s s s\cresc
  s2\mp s\pp\< s1\mp s2 s\pp\< s1\mp s\cresc s
  s8\f s\mp s2. s1 s s |
  s\cresc s s2\mf s8 s4.\< s4. s8\! s2-\markup { \center-align { \italic "sub." \dynamic "p" } } s1\pp
}

pedal = {
  s1\sustainOn s s\sustainOn s
  s1\sustainOn s s\sustainOn s2\sustainOn s\sustainOn
  s1\sustainOn s\sustainOn s1\sustainOn s\sustainOn s2\sustainOn s\sustainOn s\sustainOn s\sustainOn
  s1\sustainOn s\sustainOn s\sustainOn s\sustainOn
  s\sustainOn s\sustainOn s2\sustainOn s\sustainOn s\sustainOn s\sustainOn s1
  s1\sustainOn s\sustainOff
}

\score {
  <<
    \new PianoStaff \with {
      connectArpeggios = ##t
    } <<
      \new Staff = "right" \right
      \new PianoDynamics = "dynamics" \dynamics
      \new Staff = "left" \left
      \new PianoPedal = "pedal" \pedal
    >>
  >>
  \layout {}
  \midi {}
}