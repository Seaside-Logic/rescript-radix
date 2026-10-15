open Vitest
open Browser

let s = React.string

/** Collects every value a callback receives. */
let recorder = () => {
  let calls = []
  (calls, v => calls->Array.push(v))
}

describe("callbacks deliver correctly typed values", () => {
  it("Checkbox: Indeterminate -> Bool(true)", () => {
    let (calls, record) = recorder()
    mount(<Checkbox.Root defaultChecked=Shared.Indeterminate onCheckedChange=record />)
    clickOn("button")
    expect(calls)->toEqual([Shared.Bool(true)])
  })

  it("Checkbox: controlled Bool(true) -> Bool(false)", () => {
    let (calls, record) = recorder()
    mount(<Checkbox.Root checked=Shared.Bool(true) onCheckedChange=record />)
    clickOn("button")
    expect(calls)->toEqual([Shared.Bool(false)])
  })

  it("Switch: bool", () => {
    let (calls, record) = recorder()
    mount(<Switch.Root onCheckedChange=record />)
    clickOn("button")
    expect(calls)->toEqual([true])
  })

  it("Toggle: bool", () => {
    let (calls, record) = recorder()
    mount(<Toggle.Root onPressedChange=record> {s("B")} </Toggle.Root>)
    clickOn("button")
    expect(calls)->toEqual([true])
  })

  it("Collapsible: bool", () => {
    let (calls, record) = recorder()
    mount(<Collapsible.Root onOpenChange=record> <Collapsible.Trigger> {s("T")} </Collapsible.Trigger> </Collapsible.Root>)
    clickOn("button")
    expect(calls)->toEqual([true])
  })

  it("Dialog: bool", () => {
    let (calls, record) = recorder()
    mount(<Dialog.Root onOpenChange=record> <Dialog.Trigger> {s("Open")} </Dialog.Trigger> </Dialog.Root>)
    clickOn("button")
    expect(calls)->toEqual([true])
  })

  it("Tabs: string", () => {
    let (calls, record) = recorder()
    mount(
      <Tabs.Root defaultValue="a" onValueChange=record>
        <Tabs.List>
          <Tabs.Trigger value="a"> {s("A")} </Tabs.Trigger>
          <Tabs.Trigger value="b" id="b"> {s("B")} </Tabs.Trigger>
        </Tabs.List>
      </Tabs.Root>,
    )
    mouseDownOn("#b")
    expect(calls)->toEqual(["b"])
  })

  it("RadioGroup: string", () => {
    let (calls, record) = recorder()
    mount(<RadioGroup.Root onValueChange=record> <RadioGroup.Item value="2" /> </RadioGroup.Root>)
    clickOn("button")
    expect(calls)->toEqual(["2"])
  })

  it("ToggleGroup.Single: string", () => {
    let (calls, record) = recorder()
    mount(<ToggleGroup.Single type_=#single onValueChange=record> <ToggleGroup.Item value="l"> {s("L")} </ToggleGroup.Item> </ToggleGroup.Single>)
    clickOn("button")
    expect(calls)->toEqual(["l"])
  })

  it("ToggleGroup.Multiple: array<string>", () => {
    let (calls, record) = recorder()
    mount(
      <ToggleGroup.Multiple type_=#multiple onValueChange=record>
        <ToggleGroup.Item value="a" id="a"> {s("A")} </ToggleGroup.Item>
        <ToggleGroup.Item value="b" id="b"> {s("B")} </ToggleGroup.Item>
      </ToggleGroup.Multiple>,
    )
    clickOn("#a")
    clickOn("#b")
    expect(calls)->toEqual([["a"], ["a", "b"]])
  })

  it("Accordion.Multiple: array<string>", () => {
    let (calls, record) = recorder()
    mount(
      <Accordion.Multiple type_=#multiple onValueChange=record>
        <Accordion.Item value="x"> <Accordion.Trigger id="x"> {s("X")} </Accordion.Trigger> </Accordion.Item>
        <Accordion.Item value="y"> <Accordion.Trigger id="y"> {s("Y")} </Accordion.Trigger> </Accordion.Item>
      </Accordion.Multiple>,
    )
    clickOn("#x")
    clickOn("#y")
    expect(calls)->toEqual([["x"], ["x", "y"]])
  })

  it("Slider: array<float>", () => {
    let (calls, record) = recorder()
    mount(<Slider.Root defaultValue=[50.] onValueChange=record> <Slider.Track> <Slider.Range /> </Slider.Track> <Slider.Thumb /> </Slider.Root>)
    keyDownOn(`[role="slider"]`, "ArrowRight")
    expect(calls)->toEqual([[51.]])
  })

  it("Select: open bool, then string value", () => {
    let (opens, recordOpen) = recorder()
    let (values, recordValue) = recorder()
    mount(
      <Select.Root onOpenChange=recordOpen onValueChange=recordValue>
        <Select.Trigger> <Select.Value /> </Select.Trigger>
        <Select.Portal>
          <Select.Content>
            <Select.Viewport>
              <Select.Item value="apple"> <Select.ItemText> {s("Apple")} </Select.ItemText> </Select.Item>
            </Select.Viewport>
          </Select.Content>
        </Select.Portal>
      </Select.Root>,
    )
    keyDownOn("button", "Enter")
    clickOn(`[role="option"]`)
    expect(opens)->toEqual([true, false])
    expect(values)->toEqual(["apple"])
  })
})
