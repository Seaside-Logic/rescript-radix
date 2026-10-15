/** Minimal DOM driver for interaction tests (happy-dom). Events run inside `act` so React flushes state. */
%%raw(`globalThis.IS_REACT_ACT_ENVIRONMENT = true`)

@module("react") external act: (unit => unit) => unit = "act"
@val @scope("document") external createElement: string => Dom.element = "createElement"
@val @scope(("document", "body")) external appendChild: Dom.element => unit = "appendChild"
@val @scope("document") external find: string => Dom.element = "querySelector"
@send external click: Dom.element => unit = "click"

let clearBody: unit => unit = %raw(`() => { document.body.innerHTML = "" }`)

let mount = element => {
  clearBody()
  let container = createElement("div")
  appendChild(container)
  act(() => ReactDOM.Client.createRoot(container)->ReactDOM.Client.Root.render(element))
}

let clickOn = selector => act(() => find(selector)->click)

let dispatchMouseDown: string => unit = %raw(`s => document.querySelector(s).dispatchEvent(new MouseEvent("mousedown", {bubbles: true, button: 0}))`)
let dispatchKeyDown: (string, string) => unit = %raw(`(s, key) => document.querySelector(s).dispatchEvent(new KeyboardEvent("keydown", {bubbles: true, key}))`)

let mouseDownOn = selector => act(() => dispatchMouseDown(selector))
let keyDownOn = (selector, key) => act(() => dispatchKeyDown(selector, key))
