open Vitest

describe("Dialog", () => {
  it("renders an open dialog with its parts", () => {
    let html = Render.toString(
      <Dialog.Root open_=true>
        <Dialog.Trigger className="trigger"> {React.string("Open")} </Dialog.Trigger>
        <Dialog.Overlay className="overlay" />
        <Dialog.Content className="content">
          <Dialog.Title> {React.string("Title")} </Dialog.Title>
          <Dialog.Description> {React.string("Desc")} </Dialog.Description>
          <Dialog.Close> {React.string("Close")} </Dialog.Close>
        </Dialog.Content>
      </Dialog.Root>,
    )
    expect(html)->toContain(`role="dialog"`)
    expect(html)->toContain(`class="trigger"`)
    expect(html)->toContain("Desc")
  })
})
