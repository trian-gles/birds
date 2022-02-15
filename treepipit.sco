rtsetparams(44100, 2)
load("FMINST")

minindex = 0
maxindex = 5


pitch = maketable("curve", 1000, 0, 12.07, -3, 1, 12.04)
wave = maketable("wave", 1000, 1)
st = 0

guide = maketable("line", 1000, 0, 1, 1, 0.1)

for (i = 0; i < 6; i = i + 1)
{
	FMINST(st, 0.15, 10000, pitch, 20, minindex, maxindex, 0.5, wave, guide)
	st += 0.2
}
