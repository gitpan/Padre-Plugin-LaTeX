
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'Locale::Msgfmt' => '0.14',
    'Module::Build' => '0.3601',
    'Test::More' => '0'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'L<Padre> and LaTeX',
  'dist_author' => [
    'Zeno Gantner <zenog@cpan.org>',
    'Ahmad M. Zawawi <ahmad.zawawi@gmail.com>'
  ],
  'dist_name' => 'Padre-Plugin-LaTeX',
  'dist_version' => '0.03',
  'license' => 'perl',
  'module_name' => 'Padre::Plugin::LaTeX',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Padre' => '0.65'
  },
  'script_files' => [],
  'share_dir' => {
    'dist' => 'share'
  }
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
