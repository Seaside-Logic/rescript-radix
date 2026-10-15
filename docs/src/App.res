@val @scope("window") external scrollTo: (int, int) => unit = "scrollTo"

module NotFound = {
  @react.component
  let make = () =>
    <article className="page">
      <title> {React.string("Not found · rescript-radix")} </title>
      <h1> {React.string("Page not found")} </h1>
      <p className="lead">
        <Route.Link route=Home> {React.string("Back to the introduction")} </Route.Link>
      </p>
    </article>
}

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()
  let route = Route.fromUrl(url)

  React.useEffect1(() => {
    scrollTo(0, 0)
    None
  }, [url])

  let page = switch route {
  | Home => <HomePage />
  | Guide(slug) =>
    switch Guides.find(slug) {
    | Some(guide) => <GuidePage guide />
    | None => <NotFound />
    }
  | Component(slug) =>
    switch Catalog.find(slug) {
    | Some(entry) => <ComponentPage key=slug entry />
    | None => <NotFound />
    }
  | NotFound => <NotFound />
  }

  <Radix.Tooltip.Provider>
    <div className="layout">
      <aside className="sidebar">
        <Brand />
        <Sidebar current=route />
      </aside>
      <div className="main">
        <Header route />
        <main className="content"> page </main>
        <footer className="footer">
          {React.string(
            "MIT licensed. An independent community project, not affiliated with Radix or WorkOS.",
          )}
        </footer>
      </div>
    </div>
  </Radix.Tooltip.Provider>
}
