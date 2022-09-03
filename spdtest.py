pi = 3.14159265358979323846264338327950288

def fnsin(_in):
 _in += pi*0.5
 return fns(_in/pi)

def fn_s(_in):
 i = _in-int(_in)
 r = (0.5-abs( i-0.5 ) )*0.7
 return ( i*i * 2 )*(1-r) + i*r

def fns(_in):
 _in = abs(_in)
 if int(_in) & 1:
  _in = 1-(_in-int(_in))
 else:
  _in=_in-int(_in)
 if _in<0.5:
  out = fn_s(_in)
 else:
  out = 1-fn_s(1-_in)
 return out * 2 - 1

i=0
s=0
while i < 2010000:
 s=s+fnsin(i)
 i=i+1

print(s)