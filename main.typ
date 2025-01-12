#import "elements.typ": *

#show heading.where(
level: 1
): it => block(width: 100% )[
    #set align(center + horizon)
    #set text(font: "IBM Plex Sans", weight: 500)
    #it.body
    #v(1em)
  ]

#show heading.where(
  level: 2
): it => block(width: 100%, above: 2em, below: 1em)[
    #set align(center)
    #set text(font: "IBM Plex Sans", size: 26pt, weight: 500)
    #it.body
  ]


#show heading.where(
  level: 3
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



#show outline.entry.where(
  level: 1,
  body: [Distinguished Contributions]
): it => {
  set text(font: "IBM Plex Sans", size: 12pt, stretch: 75%, weight: 300)
  link(it.element.location(), box(width: 100%)[
    #v(2em)
    #it.body
    #v(1em)
  ])
}

#show outline.entry.where(
  level: 2,
  body: [Varieties of Belief in \ _The Brothers Karamazov_]
): it => {
  set text(font: "IBM Plex Sans", size: 12pt, stretch: 75%, weight: 500)
  link(it.element.location(), box(width: 100%)[
    Varieties of Belief in _The Brothers Karamazov_:
    #set text(font: "IBM Plex Sans", stretch: 75%, size: 10pt, weight: 300)
    \ _by_ 
    #set text(font: "IBM Plex Sans", stretch: 75%, size: 12pt, weight: 300)
    Gary Saul Morson
    #box(width: 1fr, repeat([.]))
    #it.page
  ])
}

#show outline.entry.where(
  level: 2,
  body: [Momentous Intersections]
): it => {
  v(1em)
  set par(leading: .5em)
  set text(font: "IBM Plex Sans", size: 12pt, stretch: 75%, weight: 500)
  link(it.element.location(), box(width: 100%)[
    Momentous Intersections: \
    A Comparative View on Russian and Jewish
    Spiritual Traditions
    #set text(font: "IBM Plex Sans", stretch: 75%, size: 10pt, weight: 300)
    \ _by_ 
    #set text(font: "IBM Plex Sans", stretch: 75%, size: 12pt, weight: 300)
    Mikhail Epstein
    #box(width: 1fr, repeat([.]))
    #it.page
  ])
}

// Import and display copyright page
#let copyright-content = include("./copyright-page.typ")
#copyright-content

#pagebreak()

#outline(
  title: [
  #set text(font: "IBM Plex Sans", size: 20pt, spacing: 180%, stretch: 75%, weight: 500)
    TABLE OF CONTENTS
  ],
  indent: auto,
  depth: 2
)
#pagebreak()

#v(25em)
#align(center)[#heading(level: 1)[Distinguished Contributions]]
#let article2_content = include("./article2.typ")
#article2_content

#let momentous-intersections = include("./momentous-intersections.typ")
#momentous-intersections

#pagebreak()



