filename = "/home/somakrdas/result.log"

filelines = open(filename,"r").read().splitlines();

for fileline in filelines:
  if "real\t" in fileline:
    _, time = fileline.split("\t")
    minutes, seconds = time.split('m')
    seconds, _ = seconds.split('s')
    minutes = float(minutes)
    seconds = float(seconds)
    print (60 * minutes) + (seconds)
