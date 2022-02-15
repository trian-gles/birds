rtsetparams(44100, 2)

load("WAVETABLE")

wavetable = maketable("wave", 1000, 1, 0.1, 0.05)

amp = maketable("window", 1000, "hanning")


WAVETABLE(0, 0.05, 10000 * amp, 8.07, 0.5, wavetable)

st = 0.05
pitch = 9.01
for (i = 0; i < 5; i = i + 1)
{
	WAVETABLE(st, 0.1, 15000 * amp, pitch, 0.5, wavetable)
	st += 0.1
	pitch -= 0.002
}

WAVETABLE(st, 0.05, 10000 * amp, 8.10, 0.5, wavetable)

