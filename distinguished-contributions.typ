#show outline.entry.where(
  level: 1,
  body: [Varieties of Belief in _The Brothers Karamazov_]
): it => {
  set text(font: "IBM Plex Sans", size: 12pt, stretch: 75%, weight: 500)
  link(it.element.location(), box(width: 100%)[
    #it.body:
    #set text(font: "IBM Plex Sans", stretch: 75%, size: 10pt, weight: 300)
    \ _by_ 
    #set text(font: "IBM Plex Sans", stretch: 75%, size: 12pt, weight: 300)
    Gary Saul Morson
    #box(width: 1fr, repeat([.]))
    #it.page
  ])
}

= Distinguished Contributions

#show outline.entry.where(
  level: 1,
  body: [Varieties of Belief in _The Brothers Karamazov_]
): it => {
  set text(font: "IBM Plex Sans", size: 12pt, stretch: 75%, weight: 500)
  link(it.element.location(), box(width: 100%)[
    #it.body:
    #set text(font: "IBM Plex Sans", stretch: 75%, size: 10pt, weight: 300)
    \ _by_ 
    #set text(font: "IBM Plex Sans", stretch: 75%, size: 12pt, weight: 300)
    Gary Saul Morson
    #box(width: 1fr, repeat([.]))
    #it.page
  ])
}
