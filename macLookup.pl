use LWP::Simple;

my $macAddress;
my $contents;

print "\nPlease enter your MAC address: \n\n";
chomp($macAddress = <STDIN>);

$contents = get("http://api.macvendors.com/$macAddress");

if ($contents) {
  print "\nVendor: $contents\n\n";
}
else {
  print "\nNot found.\n\n";
}
