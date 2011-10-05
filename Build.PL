
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'Dancer' => '0',
    'English' => '0',
    'File::Find' => '0',
    'File::Path' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'Test::More' => '0'
  },
  'configure_requires' => {
    'ExtUtils::MakeMaker' => '6.30',
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'JSON session backend for Dancer',
  'dist_author' => [
    'Sawyer X <xsawyerx@cpan.org>'
  ],
  'dist_name' => 'Dancer-Session-JSON',
  'dist_version' => '0.001',
  'license' => 'perl',
  'module_name' => 'Dancer::Session::JSON',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
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
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
