use LWP::Simple;

my $contents;

$contents = get("http://api.macvendors.com/@ARGV[0]");

if ($contents) {
  print "\nVendor: $contents\n\n";
}
else {
  print "\nNot found.\n\n";
}
