@react.component
let make = () => {
  let (progress, setProgress) = React.useState(() => 20.)

  React.useEffect0(() => {
    let interval = setInterval(() => setProgress(p => p >= 100. ? 0. : p +. 20.), 1000)
    Some(() => clearInterval(interval))
  })

  <Radix.Progress.Root className="progress" value={Nullable.make(progress)}>
    <Radix.Progress.Indicator
      className="progress-indicator"
      style={{transform: `translateX(-${Float.toString(100. -. progress)}%)`}}
    />
  </Radix.Progress.Root>
}
