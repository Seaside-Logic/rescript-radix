@react.component
let make = () =>
  <Radix.Form.Root className="form" onSubmit={event => ReactEvent.Form.preventDefault(event)}>
    <Radix.Form.Field className="field" name="email">
      <div className="field-header">
        <Radix.Form.Label className="label"> {React.string("Email")} </Radix.Form.Label>
        <Radix.Form.Message className="form-message" match=Radix.Form.Validity("valueMissing")>
          {React.string("Please enter your email")}
        </Radix.Form.Message>
        <Radix.Form.Message className="form-message" match=Radix.Form.Validity("typeMismatch")>
          {React.string("Please provide a valid email")}
        </Radix.Form.Message>
      </div>
      <Radix.Form.Control className="input" type_="email" required=true />
    </Radix.Form.Field>
    <Radix.Form.Field className="field" name="question">
      <div className="field-header">
        <Radix.Form.Label className="label"> {React.string("Question")} </Radix.Form.Label>
        <Radix.Form.Message className="form-message" match=Radix.Form.Validity("valueMissing")>
          {React.string("Please enter a question")}
        </Radix.Form.Message>
      </div>
      <Radix.Form.Control asChild=true>
        <textarea className="input textarea" required=true />
      </Radix.Form.Control>
    </Radix.Form.Field>
    <Radix.Form.Submit className="button primary"> {React.string("Post question")} </Radix.Form.Submit>
  </Radix.Form.Root>
