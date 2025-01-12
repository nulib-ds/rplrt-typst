// journal.typ - Custom Typst library for journal formatting

// Define a macro for the journal title
#let journal-title(title) = {
    set text(size: 20pt)
    set align(center)
    set page-align(center)
    strong[#journal-title]
}

#let title(body) = {
  set text(font: "IBM Plex Sans",
  weight: 400,
  size: 28pt)
  set align(center)
  image("articlestart.png", width: 30pt)
  [#body]
}

#let subtitle(body) = {
  set align(center)
  set text(font: "IBM Plex Sans", size: 20pt, weight: 500)
  [#body]
}

#let author(body) = {
  set align(center)
  set text(font: "IBM Plex Sans", size: 14pt, weight: 500)
  [#body #block(below: 2em) ]
}
// Define a macro for the author name
#let author-name(name) = {
    set text(font: "IBM Plex Sans",
    size: 18pt,
    weight: 400)
    set align(center)
    [#name]
}

#let epigraph(body) = {
  set align(right)
  [#body]
}

#let blockquote(content) = {
    blockquote[content]
    // Prevent indentation for the next paragraph
    set par(indent: 0pt)
}

#let abstract(abstract-title, abstract-subtitle: none, abstract-author: none, body) = {
  set text(font: "Adobe Text Pro", size: 12pt)
  set par(justify: true)
  
  rect(
    width: 100%,
    height: 100%,
    fill: rgb(227, 224, 224),
    inset: 5%
  )[
    #set align(center)
    #set par(first-line-indent: 0pt)
    #text(font: "IBM Plex Sans", size: 12pt, weight: 600)[#[#abstract-title]]
    #if abstract-subtitle != none [
      #v(0.5em)
      #text(font: "IBM Plex Sans", size: 12pt, weight: 600)[#[#abstract-subtitle]]
    ]
    #if abstract-author != none [
      #v(0.5em)
      #text(font: "IBM Plex Sans", size: 8pt)[#emph[by]] #text(font: "IBM Plex Sans", size: 12pt)[#[#abstract-author]]
    ]
    #set align(left)
    #v(1em)
    #[#body]
    #v(2em)
    #set align(center)
    #image("articlend.png", width: 30pt)
    #set align(center)
  ]
}

#show outline.entry.where(
  level: 1
): it => {
  v(12pt, weak: true)
  strong(it)
}

#let biobox(body) = {
  set align(center) 
  v(1em)
  image("articlend.png", width: 25pt)
  set align(left)
  v(1em)
  rect(width: auto,
  height: auto,
  stroke: none,
  fill: rgb(227, 224, 224),
  inset: 7.5%,
  body)
}

#let article-start-image = {
  set align(center)
  image("articlestart.png", width: 30pt)}

#set heading(numbering: "I.")
#show heading.where(
level: 2
): it => block(width: 100% )[
    #set align(center)
    #set text(font: "IBM Plex Sans", weight: 500)
  ]

#set text(
  font: "IBM Plex Sans",
)

#let article(article-header, content) = {
  article-header
  content
}

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

#set footnote.entry(
  separator: repeat[.]
)

