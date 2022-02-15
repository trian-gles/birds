rtsetparams(44100, 2)

load("WAVETABLE")

wavetable = maketable("wave", 1000, 0.2, 0.5, 0.9, 0.6, 1, 0.6, 0.5, 0.3, 0.1)

pitch = maketable("curve", "nonorm", 1000, 0, 10.04, 1, 3, 10.01)

st = 0

for (i = 0; i < 5; i = i + 1)
{
	st += 0.4 + rand() / 10
	WAVETABLE(st, 0.1, 10000, pitch, 0.5, wavetable)
}
