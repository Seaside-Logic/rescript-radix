@react.component
let make = () => {
  let (open_, setOpen) = React.useState(() => false)

  <Radix.Toast.Provider swipeDirection=#right>
    <button className="button" onClick={_ => setOpen(_ => true)}> {React.string("Add to calendar")} </button>
    <Radix.Toast.Root className="toast" open_ onOpenChange={value => setOpen(_ => value)}>
      <Radix.Toast.Title className="toast-title"> {React.string("Scheduled: Catch up")} </Radix.Toast.Title>
      <Radix.Toast.Description className="muted">
        {React.string("Friday at 5:00 PM")}
      </Radix.Toast.Description>
      <Radix.Toast.Action className="toast-action" asChild=true altText="Go to schedule to undo">
        <button className="button small"> {React.string("Undo")} </button>
      </Radix.Toast.Action>
    </Radix.Toast.Root>
    <Radix.Toast.Viewport className="toast-viewport" />
  </Radix.Toast.Provider>
}
