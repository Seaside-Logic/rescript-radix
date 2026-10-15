@module("vitest") external describe: (string, unit => unit) => unit = "describe"
@module("vitest") external it: (string, unit => unit) => unit = "it"
type expectation<'a>
@module("vitest") external expect: 'a => expectation<'a> = "expect"
@send external toContain: (expectation<string>, string) => unit = "toContain"
@send external toEqual: (expectation<'a>, 'a) => unit = "toEqual"
