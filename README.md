# rplrt-typst

This is a typst implementation of the layout for _Studies in Russian Philosophy, Literature, and Religious Thought_.

You can also think of this as
Rendering
Processing
Layout
Review
Typography

## Creating a new volume/issue

For every article in a volume, you are going to want to transform it to markdown first, as markdown is much easier to work with. As some researchers will not properly use Microsoft Word's markup features, you will have to compare the original to the markdown to see what they were trying to go for.

Once the markdown is complete, you can set up a template for the typst version of the document.

First, you can run:
`pandoc -i <path/to/file.md> -o <path/to/file.typ>`

This will give you a relatively clean markup of the document with typst syntax.

Then, you can add all the fancy stuff you want to the document:

```typst

#import "elements.typ": *

#abstract(
  [Title of article goes here],
  abstract-author: [authors, separated, by, commas],
  [Abstract goes here]
)

// This section sets the headers for the article
#set page(
  header-ascent: 40%,
  header: context {
    set text(8pt, font: "IBM Plex Sans", stretch: 75%, weight: 400)
    let first-page = locate(<first-page-article>).page()
    if here().page() == first-page [
      #grid(
        columns: (45%, 45%),
        gutter: 10%,
        [
          NORTHWESTERN UNIVERSITY STUDIES IN RUSSIAN\ // You can change the header title to whatever you like
          PHILOSOPHY, LITERATURE, AND RELIGIOUS THOUGHT
        ],
        align(right)[
          Volume 1 (2024): #first-page#sym.dash.en#locate(<end-of-ymca>).page() \ // Same thing for this
          DOI: 111.111.111/example
        ]
      )
    ] else if calc.even(here().page()) [
      #set align(center)
      #set text(font: "IBM Plex Sans", size: 11pt, weight: 600)
      #upper([Matthew Lee Miller])
    ] else [
      #set align(center)
      #set text(font: "IBM Plex Sans", size: 11pt, weight: 300, tracking: .1em)
  #upper([Paul B. Anderson, Nikolai Berdyaev, and Russian Christian
Culture])
    ]
  },
  footer: context {
  if calc.even(here().page()) [
    #align(right)[#here().page()]
  ]
  else [
    #align(left)[#here().page()]
  ]
 
  }

)

#v(2em)
#set align(center)
#image("articlestart.png", width: 30pt)
#set align(left)

#set par(justify: true)

#heading(level: 2, outlined: true)[Title of article goes here, you may need to add line breaks depending on the length of the title]


<first-page-article>
#v(1em)

#author[Author(s) goes here again]

// INSERT THE CONTENT OF article.typ HERE
<end-page-article>

```
