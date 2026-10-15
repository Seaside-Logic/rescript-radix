@react.component
let make = () =>
  <Radix.OneTimePasswordField.Root className="otp">
    {Array.fromInitializer(~length=6, index =>
      <Radix.OneTimePasswordField.Input key={Int.toString(index)} className="input otp-input" />
    )->React.array}
    <Radix.OneTimePasswordField.HiddenInput />
  </Radix.OneTimePasswordField.Root>
