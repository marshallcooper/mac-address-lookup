use LWP::Simple;

my $macAddress;

print "\nPlease enter your MAC address: \n\n";
chomp($macAddress = <STDIN>);

$contents = get("http://api.macvendors.com/$macAddress");

print "\n$contents\n\n";
