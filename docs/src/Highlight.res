/** Syntax highlighting with Shiki. The highlighter loads once at startup (top-level await),
so `toHtml` is synchronous everywhere else. */

type highlighter
type grammar
type theme
type engine

@module("shiki/core") external createHighlighterCore: {..} => promise<highlighter> = "createHighlighterCore"
@module("shiki/engine/javascript") external createEngine: unit => engine = "createJavaScriptRegexEngine"

// Shiki ships no ReScript grammar; this one is vendored from rescript-lang/rescript-vscode (MIT).
@module("./rescript.tmLanguage.json") external rescript: grammar = "default"
@module("shiki/langs/json.mjs") external json: grammar = "default"
@module("shiki/langs/shellscript.mjs") external shell: grammar = "default"
@module("shiki/langs/css.mjs") external css: grammar = "default"
@module("shiki/themes/github-light.mjs") external light: theme = "default"
@module("shiki/themes/github-dark.mjs") external dark: theme = "default"

let highlighter = await createHighlighterCore({
  "langs": [rescript, json, shell, css],
  "themes": [light, dark],
  "langAlias": {"rescript": "ReScript", "res": "ReScript"},
  "engine": createEngine(),
})

@send external codeToHtml: (highlighter, string, {..}) => string = "codeToHtml"
@send external getLoadedLanguages: highlighter => array<string> = "getLoadedLanguages"

let loaded = highlighter->getLoadedLanguages

/** Highlighted HTML for `code`. Both themes are emitted as CSS variables; styles.css picks one. */
let toHtml = (code, ~lang) =>
  highlighter->codeToHtml(
    code,
    {
      "lang": loaded->Array.includes(lang) ? lang : "text",
      "themes": {"light": "github-light", "dark": "github-dark"},
      "defaultColor": false,
    },
  )
