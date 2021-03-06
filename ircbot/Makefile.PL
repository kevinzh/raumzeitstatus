use inc::Module::Install;

name     'RaumZeitStatus-IRCBot';
all_from 'lib/RaumZeitLabor/Status/IRCBot.pm';
author   q{Simon Elsbrock <simon@iodev.org>};
license  'gpl';

build_requires 'Test::More';

requires 'AnyEvent';
requires 'AnyEvent::HTTP::Stream';
requires 'AnyEvent::IRC::Client';
requires 'IO::All';
requires 'JSON::XS';
requires 'Data::Dumper';

install_script 'scripts/raumzeitstatus-ircbot';

auto_install;

WriteAll;

