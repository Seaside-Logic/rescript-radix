let items = [
  ("bindings", "What does it bind?", "Every Radix Primitive and utility, from the unified radix-ui package."),
  ("runtime", "Does it add runtime code?", "No. Every part is an external, so you ship exactly what radix-ui ships."),
  ("styling", "Is it styled?", "No. Style each part with your own classes and Radix's data attributes."),
]

@react.component
let make = () =>
  <Radix.Accordion.Single type_=#single defaultValue="bindings" collapsible=true className="accordion">
    {items
    ->Array.map(((value, question, answer)) =>
      <Radix.Accordion.Item key=value value className="accordion-item">
        <Radix.Accordion.Header className="accordion-header">
          <Radix.Accordion.Trigger className="accordion-trigger">
            {React.string(question)}
            <Icon.ChevronDown />
          </Radix.Accordion.Trigger>
        </Radix.Accordion.Header>
        <Radix.Accordion.Content className="accordion-content">
          <p className="accordion-text"> {React.string(answer)} </p>
        </Radix.Accordion.Content>
      </Radix.Accordion.Item>
    )
    ->React.array}
  </Radix.Accordion.Single>
