@react.component
let make = () =>
  <Radix.AlertDialog.Root>
    <Radix.AlertDialog.Trigger className="button"> {React.string("Delete account")} </Radix.AlertDialog.Trigger>
    <Radix.AlertDialog.Portal>
      <Radix.AlertDialog.Overlay className="overlay" />
      <Radix.AlertDialog.Content className="dialog">
        <Radix.AlertDialog.Title className="dialog-title">
          {React.string("Are you absolutely sure?")}
        </Radix.AlertDialog.Title>
        <Radix.AlertDialog.Description className="dialog-description">
          {React.string(
            "This action cannot be undone. This will permanently delete your account and remove your data from our servers.",
          )}
        </Radix.AlertDialog.Description>
        <div className="dialog-actions">
          <Radix.AlertDialog.Cancel className="button"> {React.string("Cancel")} </Radix.AlertDialog.Cancel>
          <Radix.AlertDialog.Action className="button danger">
            {React.string("Yes, delete account")}
          </Radix.AlertDialog.Action>
        </div>
      </Radix.AlertDialog.Content>
    </Radix.AlertDialog.Portal>
  </Radix.AlertDialog.Root>
