woman(mia).
woman(jody).
woman(yolanda).
playsAirGuitar(jody).
party.

happy(yolanda).
listens2music(mia).
listens2music(yolanda):-happy(yolanda).
playsAirGuitar(mia):-listens2music(mia).
playsAirGuitar(yolanda):-listens2music(yolanda).
