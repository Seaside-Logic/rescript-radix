@react.component
let make = () =>
  <div className="aspect-ratio">
    <Radix.AspectRatio.Root ratio={16. /. 9.}>
      <div className="aspect-ratio-fill"> {React.string("16 : 9")} </div>
    </Radix.AspectRatio.Root>
  </div>
