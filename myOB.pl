
undef $/;open(_,$0);/ \dx([\dA-F]*)/while(<_>);@&=split(//,$1);@/=@&;
$".=chr(hex(join("",splice(@&,0,2))))while(@&); eval$"; 

($C,$_,@\)=(($a=$/[1]*4)*5+1, q| |x(0x20).q|\||.chr(32)x(0x10).q$*$.
chr(0x20)x(0x10).(pack("CC",124,10)), sub{s/.\|(\s*?)(\S)./\|$1 $2/},
sub{s/\|(\s*?).(\S)/ \|$1$2 /}, sub{$2.$1.$3},sub{$tt=(3*$tt+7)%$C},
sub{$1.$3.$2});
while ($_) {
  select $/, undef, $/, $C/1E3;
  (sysread(STDIN, $k, 1), s/(.)(\*)(.)/(&{$\[(ord($k)-44&2)+2]})/e)
  if (select($a=chr(1),$/,$/,0));

  print 0x75736520504F5349583B2024743D6E657720504F5349583A3A5465726D696F733B24742D3E676574617474722828303D3E2A5F3D5C2423292F32293B2024742D3E7365746C666C61672824742D3E6765746C666C6167267E284543484F7C4543484F4B7C4943414E4F4E29293B2024742D3E7365746363285654494D452C31293B24742D3E7365746174747228302C544353414E4F57293B24643D224352415348215C6E223B0A;

  ($p?(/.{70}\|$/):(/^\|/))||(&{$\[3]}<$/[0])?($p=!$p):&{$\[$p]}||die("$d");
  (&{$\[3]}<$/[1])&&(s/ \|$/\|/);
  (/\|.*\*.*\|$/)||die("$d");
}
