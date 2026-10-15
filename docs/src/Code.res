/** A highlighted code block with a copy button. */

@val @scope(("navigator", "clipboard")) external writeText: string => promise<unit> = "writeText"

@react.component
let make = (~code, ~lang="rescript") => {
  let html = React.useMemo2(() => Highlight.toHtml(String.trim(code), ~lang), (code, lang))
  let (copied, setCopied) = React.useState(() => false)

  let copy = async _ => {
    await writeText(String.trim(code))
    setCopied(_ => true)
    let _ = setTimeout(() => setCopied(_ => false), 1500)
  }

  <div className="code">
    <button className="code-copy" onClick={e => copy(e)->ignore} ariaLabel="Copy code">
      {copied ? <Icon.Check /> : <Icon.Copy />}
    </button>
    <div dangerouslySetInnerHTML={{"__html": html}} />
  </div>
}
