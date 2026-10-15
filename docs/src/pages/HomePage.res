let switchExample = `
@react.component
let make = () =>
  <Radix.Switch.Root className="switch" defaultChecked=true>
    <Radix.Switch.Thumb className="switch-thumb" />
  </Radix.Switch.Root>
`

module Card = {
  @react.component
  let make = (~route, ~title, ~children) =>
    <Route.Link route className="card">
      <h3 className="card-title"> {React.string(title)} </h3>
      <p className="card-text"> {React.string(children)} </p>
      <span className="card-more">
        {React.string("Read more")}
        <Icon.ArrowRight />
      </span>
    </Route.Link>
}

@react.component
let make = () =>
  <>
    <title> {React.string("rescript-radix")} </title>
    <section className="hero">
      <h1> {React.string("ReScript bindings for Radix Primitives")} </h1>
      <p className="lead">
        {React.string(
          "Use Radix's accessible, unstyled React components from ReScript, with typed props and an API that stays close to the underlying primitives.",
        )}
      </p>
      <div className="hero-actions">
        <Route.Link route=Guide("installation") className="button primary pill">
          {React.string("Get started")}
          <Icon.ArrowRight />
        </Route.Link>
        <Route.Link route=Component("accordion") className="button pill">
          {React.string("Browse components")}
        </Route.Link>
      </div>
    </section>
    <section className="section">
      <h2> {React.string("Getting started")} </h2>
      <p>
        {React.string(
          "Radix handles behavior, keyboard navigation, focus management and accessibility. ReScript gives you typed props and exhaustive variants. Install both packages:",
        )}
      </p>
      <Code lang="sh" code="npm install rescript-radix radix-ui" />
      <p>
        {React.string("Add ")}
        <code> {React.string("rescript-radix")} </code>
        {React.string(" to the dependencies in rescript.json, then use any primitive under the ")}
        <code> {React.string("Radix")} </code>
        {React.string(" namespace:")}
      </p>
      <Code code=switchExample />
    </section>
    <section className="section">
      <h2 className="section-heading"> {React.string("Guides")} </h2>
      <div className="cards">
        {Guides.all
        ->Array.map(guide =>
          <Card key=guide.slug route=Guide(guide.slug) title=guide.title> {guide.summary} </Card>
        )
        ->React.array}
      </div>
    </section>
    <section className="section">
      <h2 className="section-heading"> {React.string("Components")} </h2>
      <div className="cards">
        {Catalog.components
        ->Array.map(entry =>
          <Card key=entry.name route=Component(Catalog.slug(entry)) title=entry.title>
            {entry.description}
          </Card>
        )
        ->React.array}
      </div>
    </section>
  </>
