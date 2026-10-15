@react.component
let make = () =>
  <Radix.Dialog.Root>
    <Radix.Dialog.Trigger className="button primary"> {React.string("Edit profile")} </Radix.Dialog.Trigger>
    <Radix.Dialog.Portal>
      <Radix.Dialog.Overlay className="overlay" />
      <Radix.Dialog.Content className="dialog">
        <Radix.Dialog.Title className="dialog-title"> {React.string("Edit profile")} </Radix.Dialog.Title>
        <Radix.Dialog.Description className="dialog-description">
          {React.string("Make changes to your profile here. Click save when you're done.")}
        </Radix.Dialog.Description>
        <label className="field">
          <span className="label"> {React.string("Name")} </span>
          <input className="input" defaultValue="Pedro Duarte" />
        </label>
        <label className="field">
          <span className="label"> {React.string("Username")} </span>
          <input className="input" defaultValue="@peduarte" />
        </label>
        <div className="dialog-actions">
          <Radix.Dialog.Close className="button primary"> {React.string("Save changes")} </Radix.Dialog.Close>
        </div>
        <Radix.Dialog.Close asChild=true>
          <button className="icon-button dialog-close" ariaLabel="Close"> <Icon.Close /> </button>
        </Radix.Dialog.Close>
      </Radix.Dialog.Content>
    </Radix.Dialog.Portal>
  </Radix.Dialog.Root>
