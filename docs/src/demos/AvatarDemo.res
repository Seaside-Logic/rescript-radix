@react.component
let make = () =>
  <div className="row">
    <Radix.Avatar.Root className="avatar">
      <Radix.Avatar.Image
        className="avatar-image"
        src="https://images.unsplash.com/photo-1492633423870-43d1cd2775eb?&w=128&h=128&dpr=2&q=80"
        alt="Colm Tuite"
      />
      <Radix.Avatar.Fallback className="avatar-fallback" delayMs=600> {React.string("CT")} </Radix.Avatar.Fallback>
    </Radix.Avatar.Root>
    <Radix.Avatar.Root className="avatar">
      <Radix.Avatar.Fallback className="avatar-fallback"> {React.string("PD")} </Radix.Avatar.Fallback>
    </Radix.Avatar.Root>
  </div>
