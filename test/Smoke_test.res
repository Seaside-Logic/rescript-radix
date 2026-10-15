open Vitest

let s = React.string

/** Each case renders a primitive to HTML on the server; a wrong `@scope`/`@module` or export name throws here. */
let cases: array<(string, React.element, string)> = [
  ("Tabs", <Tabs.Root defaultValue="a"> <Tabs.List> <Tabs.Trigger value="a"> {s("A")} </Tabs.Trigger> </Tabs.List> <Tabs.Content value="a"> {s("Panel")} </Tabs.Content> </Tabs.Root>, `role="tablist"`),
  ("Accordion.Single", <Accordion.Single type_=#single defaultValue="x" collapsible=true> <Accordion.Item value="x"> <Accordion.Header> <Accordion.Trigger> {s("T")} </Accordion.Trigger> </Accordion.Header> <Accordion.Content> {s("C")} </Accordion.Content> </Accordion.Item> </Accordion.Single>, `data-state="open"`),
  ("Accordion.Multiple", <Accordion.Multiple type_=#multiple defaultValue=["x"]> <Accordion.Item value="x"> <Accordion.Trigger> {s("T")} </Accordion.Trigger> </Accordion.Item> </Accordion.Multiple>, `data-state="open"`),
  ("AlertDialog", <AlertDialog.Root open_=true> <AlertDialog.Trigger> {s("Open")} </AlertDialog.Trigger> <AlertDialog.Content> <AlertDialog.Title> {s("Sure?")} </AlertDialog.Title> <AlertDialog.Cancel> {s("No")} </AlertDialog.Cancel> <AlertDialog.Action> {s("Yes")} </AlertDialog.Action> </AlertDialog.Content> </AlertDialog.Root>, `role="alertdialog"`),
  ("Checkbox", <Checkbox.Root defaultChecked=Shared.Indeterminate> <Checkbox.Indicator> {s("-")} </Checkbox.Indicator> </Checkbox.Root>, `aria-checked="mixed"`),
  ("Switch", <Switch.Root defaultChecked=true> <Switch.Thumb /> </Switch.Root>, `role="switch"`),
  ("RadioGroup", <RadioGroup.Root defaultValue="1"> <RadioGroup.Item value="1"> <RadioGroup.Indicator /> </RadioGroup.Item> </RadioGroup.Root>, `role="radiogroup"`),
  ("Collapsible", <Collapsible.Root defaultOpen=true> <Collapsible.Trigger> {s("T")} </Collapsible.Trigger> <Collapsible.Content> {s("C")} </Collapsible.Content> </Collapsible.Root>, `data-state="open"`),
  ("Separator", <Separator.Root orientation=#vertical />, `aria-orientation="vertical"`),
  ("Label", <Label.Root htmlFor="x"> {s("Name")} </Label.Root>, `for="x"`),
  ("Toggle", <Toggle.Root defaultPressed=true> {s("B")} </Toggle.Root>, `aria-pressed="true"`),
  ("ToggleGroup", <ToggleGroup.Single type_=#single defaultValue="l"> <ToggleGroup.Item value="l"> {s("L")} </ToggleGroup.Item> </ToggleGroup.Single>, `role="radiogroup"`),
  ("Toolbar", <Toolbar.Root> <Toolbar.Button> {s("B")} </Toolbar.Button> <Toolbar.Separator /> <Toolbar.Link href="#"> {s("L")} </Toolbar.Link> </Toolbar.Root>, `role="toolbar"`),
  ("Progress", <Progress.Root value={Nullable.make(40.)} max=100.> <Progress.Indicator /> </Progress.Root>, `role="progressbar"`),
  ("Avatar", <Avatar.Root> <Avatar.Fallback> {s("JM")} </Avatar.Fallback> </Avatar.Root>, "JM"),
  ("AspectRatio", <AspectRatio.Root ratio={16. /. 9.}> <div /> </AspectRatio.Root>, "padding-bottom"),
  ("Slider", <Slider.Root defaultValue=[50.]> <Slider.Track> <Slider.Range /> </Slider.Track> <Slider.Thumb /> </Slider.Root>, `role="slider"`),
  ("ScrollArea", <ScrollArea.Root> <ScrollArea.Viewport> {s("x")} </ScrollArea.Viewport> </ScrollArea.Root>, "data-radix-scroll-area-viewport"),
  ("Form", <Form.Root> <Form.Field name="email"> <Form.Label> {s("Email")} </Form.Label> <Form.Control type_="email" required=true /> <Form.Message match={Form.Validity("valueMissing")}> {s("Required")} </Form.Message> </Form.Field> <Form.Submit> {s("Go")} </Form.Submit> </Form.Root>, `<form`),
  ("VisuallyHidden", <VisuallyHidden.Root> {s("hidden")} </VisuallyHidden.Root>, "clip:"),
  ("AccessibleIcon", <AccessibleIcon.Root label="Close"> <svg /> </AccessibleIcon.Root>, "Close"),
  ("Direction", <Direction.Provider dir=#rtl> <Tabs.Root> <Tabs.List> <Tabs.Trigger value="a"> {s("A")} </Tabs.Trigger> </Tabs.List> </Tabs.Root> </Direction.Provider>, `dir="rtl"`),
  ("Slot", <Slot.Root className="from-slot"> <button /> </Slot.Root>, `class="from-slot"`),
  ("Popover", <Popover.Root> <Popover.Trigger> {s("P")} </Popover.Trigger> <Popover.Anchor /> </Popover.Root>, `aria-haspopup="dialog"`),
  ("Tooltip", <Tooltip.Provider> <Tooltip.Root> <Tooltip.Trigger> {s("T")} </Tooltip.Trigger> </Tooltip.Root> </Tooltip.Provider>, `data-state="closed"`),
  ("HoverCard", <HoverCard.Root> <HoverCard.Trigger href="#"> {s("H")} </HoverCard.Trigger> </HoverCard.Root>, `data-state="closed"`),
  ("DropdownMenu", <DropdownMenu.Root> <DropdownMenu.Trigger> {s("M")} </DropdownMenu.Trigger> </DropdownMenu.Root>, `aria-haspopup="menu"`),
  ("ContextMenu", <ContextMenu.Root> <ContextMenu.Trigger> {s("Right click")} </ContextMenu.Trigger> </ContextMenu.Root>, `data-state="closed"`),
  ("Menubar", <Menubar.Root> <Menubar.Menu> <Menubar.Trigger> {s("File")} </Menubar.Trigger> </Menubar.Menu> </Menubar.Root>, `role="menubar"`),
  ("NavigationMenu", <NavigationMenu.Root> <NavigationMenu.List> <NavigationMenu.Item> <NavigationMenu.Link href="#"> {s("Home")} </NavigationMenu.Link> </NavigationMenu.Item> </NavigationMenu.List> </NavigationMenu.Root>, `aria-label="Main"`),
  ("Select", <Select.Root defaultValue="a"> <Select.Trigger> <Select.Value /> <Select.Icon /> </Select.Trigger> </Select.Root>, `role="combobox"`),
  ("Toast", <Toast.Provider> <Toast.Root open_=true> <Toast.Title> {s("Saved")} </Toast.Title> <Toast.Close> {s("x")} </Toast.Close> </Toast.Root> <Toast.Viewport /> </Toast.Provider>, `aria-label="Notifications`),
  ("Portal", <Portal.Root> {s("p")} </Portal.Root>, ""),
  ("PasswordToggleField", <PasswordToggleField.Root> <PasswordToggleField.Input /> <PasswordToggleField.Toggle> <PasswordToggleField.Slot visible={s("Hide")} hidden={s("Show")} /> </PasswordToggleField.Toggle> </PasswordToggleField.Root>, `type="password"`),
  ("OneTimePasswordField", <OneTimePasswordField.Root> <OneTimePasswordField.Input /> <OneTimePasswordField.HiddenInput /> </OneTimePasswordField.Root>, `inputMode="numeric"`),
]

describe("server render", () => {
  cases->Array.forEach(((name, element, needle)) =>
    it(name, () => expect(Render.toString(element))->toContain(needle))
  )
})
