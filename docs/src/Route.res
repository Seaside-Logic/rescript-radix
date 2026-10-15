/** The site's pages. Slugs are looked up by the page that renders them, so an unknown slug
shows a not-found message instead of failing to parse. */
type t =
  | Home
  | Guide(string)
  | Component(string)
  | NotFound

let fromUrl = (url: RescriptReactRouter.url) =>
  switch url.path {
  | list{} => Home
  | list{"guides", slug} => Guide(slug)
  | list{"components", slug} => Component(slug)
  | _ => NotFound
  }

let toHref = route =>
  switch route {
  | Home => "/"
  | NotFound => "/not-found"
  | Guide(slug) => `/guides/${slug}`
  | Component(slug) => `/components/${slug}`
  }

/** An `<a>` that navigates client-side, leaving modified clicks (new tab, etc.) to the browser. */
module Link = {
  @react.component
  let make = (~route, ~className=?, ~ariaCurrent=?, ~children) => {
    let href = toHref(route)
    let onClick = event => {
      open ReactEvent.Mouse
      if !(metaKey(event) || ctrlKey(event) || shiftKey(event) || altKey(event)) {
        preventDefault(event)
        RescriptReactRouter.push(href)
      }
    }
    <a href ?className onClick ?ariaCurrent> children </a>
  }
}
