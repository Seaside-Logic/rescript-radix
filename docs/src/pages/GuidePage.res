@react.component
let make = (~guide: Guides.t) => {
  let index = Guides.all->Array.findIndex(g => g.slug == guide.slug)
  let next = Guides.all->Array.get(index + 1)

  <article className="page">
    <title> {React.string(`${guide.title} · rescript-radix`)} </title>
    <p className="eyebrow"> {React.string("Guide")} </p>
    <h1> {React.string(guide.title)} </h1>
    <p className="lead"> {React.string(guide.summary)} </p>
    <Markdown source=guide.body />
    {switch next {
    | Some(next) =>
      <Route.Link route=Guide(next.slug) className="pager">
        <span className="muted"> {React.string("Next")} </span>
        <span className="pager-title">
          {React.string(next.title)}
          <Icon.ArrowRight />
        </span>
      </Route.Link>
    | None => React.null
    }}
  </article>
}
