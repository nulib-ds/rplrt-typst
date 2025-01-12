#import "elements.typ": *

#show heading.where(
level: 1
): it => block(width: 100% )[
    #set align(center)
    #set text(font: "IBM Plex Sans")
    #it.body
    #v(1em)
  ]

#show heading.where(
  level: 2
): it => block(width: 100%, above: 2em, below: 1em)[
    #set align(center)
    #set text(font: "IBM Plex Sans")
    #it.body
  ]

#show footnote.entry: it => {
  let loc = it.note.location()
  numbering(
    "1. ",
    ..counter(footnote).at(loc)
  )
  it.note.body
}

#let subtitle(body) = {
  set align(center)
  set text(font: "IBM Plex Sans")
  [#body]
}

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 2cm, right: 2cm),
)


#set footnote.entry(
  separator: line(length: 100%, stroke: 0.5pt),

)

#set text(hyphenate: false, costs: (widow: 1000%, orphan: 1000%), size: 12pt)
#set par(justify: true, first-line-indent: 1.5em)

#table-of-contents()
#let article2_content = include("./article2.typ")
#article2_content
