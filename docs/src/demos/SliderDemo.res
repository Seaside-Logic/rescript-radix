@react.component
let make = () =>
  <Radix.Slider.Root className="slider" defaultValue=[50.] max=100. step=1.>
    <Radix.Slider.Track className="slider-track">
      <Radix.Slider.Range className="slider-range" />
    </Radix.Slider.Track>
    <Radix.Slider.Thumb className="slider-thumb" ariaLabel="Volume" />
  </Radix.Slider.Root>
