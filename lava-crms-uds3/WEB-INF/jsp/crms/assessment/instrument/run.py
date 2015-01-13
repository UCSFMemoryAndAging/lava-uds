from glob import glob
import codecs

for fname in glob('*.jsp'):
  print fname
  f=codecs.open(fname,'r','utf-8')
  s=f.read()
  f.close()

  s=s.replace('"left"','"top"')
 
  f=codecs.open(fname,'w','utf-8')
  f.write(s)
  f.close()
