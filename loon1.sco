rtsetparams(44100, 2)

load("WAVETABLE")
load("AMINST")

wavetable = maketable("wave", 1000, "sine")

amp = maketable("line", 1000, 0, 1, 10, 1, 13, 0)
pitch = maketable("line", "nonorm", 1000, 0, 8.02, 7, 8.03, 7.05, 8.07, 25, 8.06)

vib = makeLFO("sine", 2.5, 0.7, 1)

WAVETABLE(0, 5, 15000 * amp * vib, pitch, 0.5)
