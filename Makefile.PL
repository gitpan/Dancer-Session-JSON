
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'JSON session backend for Dancer',
  'AUTHOR' => 'Sawyer X <xsawyerx@cpan.org>',
  'BUILD_REQUIRES' => {
    'Dancer' => '0',
    'English' => '0',
    'File::Find' => '0',
    'File::Path' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'Test::More' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.30',
    'Module::Build' => '0.3601'
  },
  'DISTNAME' => 'Dancer-Session-JSON',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Dancer::Session::JSON',
  'PREREQ_PM' => {
    'Carp' => '0',
    'Dancer' => '1.3012',
    'Dancer::Config' => '0',
    'Dancer::FileUtils' => '0',
    'Dancer::Logger' => '0',
    'Dancer::ModuleLoader' => '0',
    'Dancer::Session::Abstract' => '0',
    'Fcntl' => '0',
    'JSON' => '0'
  },
  'VERSION' => '0.001',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



