pi=3.14159265358979323846264338327950288
i=0
s=0

function FN_s( _in )
 local i,r
 i=_in-math.floor(_in)
 r=( 0.5-math.abs(i-0.5) )*0.7
 return (i*i*2)*(1-r)+i*r
end

function FNs( _in )
 local out
 _in=math.abs(_in)
 if math.floor(_in % 2) == 1 then 
  _in=1-(_in-math.floor(_in))
 else
  _in=_in-math.floor(_in)
 end
 if _in < 0.5 then
  out=FN_s(_in)
 else
  out=1-FN_s(1-_in)
 end
 return out*2-1
end

function FNsin( _in )
 _in=_in+pi*0.5
 return FNs( _in/pi )
end

while i < 2010000 do
 s=s+FNsin(i)
 i=i+1
end
print(s)

