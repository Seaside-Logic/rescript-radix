@react.component
let make = () =>
  <Radix.PasswordToggleField.Root>
    <div className="password-field">
      <Radix.PasswordToggleField.Input
        className="input" placeholder="Password" autoComplete=#"current-password"
      />
      <Radix.PasswordToggleField.Toggle className="icon-button">
        <Radix.PasswordToggleField.Icon visible={<Icon.EyeOpen />} hidden={<Icon.EyeClosed />} />
      </Radix.PasswordToggleField.Toggle>
    </div>
  </Radix.PasswordToggleField.Root>
