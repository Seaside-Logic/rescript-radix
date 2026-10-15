@react.component
let make = (~entry: Catalog.t) =>
  <article className="page">
    <title> {React.string(`${entry.title} · rescript-radix`)} </title>
    <p className="eyebrow">
      {React.string(
        switch entry.kind {
        | Component => "Component"
        | Utility => "Utility"
        },
      )}
    </p>
    <h1> {React.string(entry.title)} </h1>
    <p className="lead"> {React.string(entry.description)} </p>
    <a className="button pill small" href={Catalog.radixUrl(entry)} target="_blank" rel="noreferrer">
      {React.string("Radix API reference")}
      <Icon.External />
    </a>
    {switch entry.demo {
    | Some(demo) =>
      <section className="example">
        <div className="preview"> demo </div>
        {switch Catalog.demoSource(entry) {
        | Some(code) => <Code code />
        | None => React.null
        }}
      </section>
    | None => React.null
    }}
    <h2> {React.string("Parts")} </h2>
    <p>
      {React.string("Each Radix part is a submodule of ")}
      <code> {React.string(`Radix.${entry.name}`)} </code>
      {React.string(". See the Radix API reference for what each part renders and the props it takes.")}
    </p>
    <ul className="parts">
      {entry.parts
      ->Array.map(part => <li key=part> <code> {React.string(`${entry.name}.${part}`)} </code> </li>)
      ->React.array}
    </ul>
    {switch entry.notes {
    | Some(notes) =>
      <>
        <h2> {React.string("Notes")} </h2>
        <Markdown source=notes />
      </>
    | None => React.null
    }}
  </article>
