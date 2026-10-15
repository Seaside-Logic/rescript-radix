/** Renders trusted, bundled Markdown (the guides and component notes) with highlighted code fences. */

type codeToken = {text: string, lang?: string}
type renderer = {code: codeToken => string}
type options = {renderer: renderer}
type marked

@module("marked") @new external make: options => marked = "Marked"
@send external parse: (marked, string) => string = "parse"

let marked = make({
  renderer: {code: ({text, ?lang}) => Highlight.toHtml(text, ~lang=lang->Option.getOr("text"))},
})

@react.component
let make = (~source) => {
  let html = React.useMemo1(() => marked->parse(source), [source])
  <div className="prose" dangerouslySetInnerHTML={{"__html": html}} />
}
