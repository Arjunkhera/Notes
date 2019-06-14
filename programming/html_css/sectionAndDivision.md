## Difference between section and header elements


<section>, means that the content inside is grouped (i.e. relates to a single theme), and should appear as an entry in an outline of the page.  

<div>, on the other hand, does not convey any meaning, aside from any found in its class, lang and title attributes.  

So no: using a <div> does not define a section in HTML.  

From the spec:

<section>
The <section> element represents a generic section of a document or application. A section, in this context, is a thematic grouping of content. Each section should be identified, typically by including a heading (h1-h6 element) as a child of the <section> element.

Examples of sections would be chapters, the various tabbed pages in a tabbed dialog box, or the numbered sections of a thesis. A Web site’s home page could be split into sections for an introduction, news items, and contact information.


The <section> element is not a generic container element. When an element is needed only for styling purposes or as a convenience for scripting, authors are encouraged to use the <div> element instead. A general rule is that the <section> element is appropriate only if the element’s contents would be listed explicitly in the document’s outline.


<div>
The <div> element has no special meaning at all. It represents its children. It can be used with the class, lang, and title attributes to mark up semantics common to a group of consecutive elements.

Note: Authors are strongly encouraged to view the <div> element as an element of last resort, for when no other element is suitable. Use of more appropriate elements instead of the <div> element leads to better accessibility for readers and easier maintainability for authors.o
[stackoverflow](https://stackoverflow.com/questions/6939864/what-is-the-difference-between-section-and-div)
