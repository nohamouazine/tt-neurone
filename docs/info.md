## How it works

When a signal arrives, the potential goes up by the weight.
At each clock tick, the potential loses one sixteenth of its value: it leaks.
When it reaches 100, spike goes to 1 and the potential goes back to 0.
At the next tick, spike goes back to 0 and it starts again.

## How to test

Set the weight with switches 1 to 6.
Turn on switch 0 to send a signal.
Watch the 8 output LEDs: they show the potential going up.
The uio[0] output goes to 1 for one tick each time the neuron fires.

## External hardware

None
