use ExtUtils::MakeMaker;

WriteMakefile(
  ABSTRACT => "Parsing tab delimited files",
  AUTHOR   => 'Phil Pollard <bennie@cpan.org>',
  LICENSE  => 'artistic_2',
  NAME     => 'Text::TabFile',
  VERSION  => '1.12',

  PREREQ_PM => {
          'Test' => '0',
          'Text::Delimited' => '2.00'
        }
,

  ( $ExtUtils::MakeMaker::VERSION < 6.46
        ? ()
        : ( META_MERGE => {
                requires  => {perl => '5.006'},
                resources => {
                    # homepage => 'http://FIXME.org',
                    # license  => 'http://dev.perl.org/licenses/',
                    # MailingList => 'http://FIXME',
                    repository => {
                        type => 'git',
                        url  => 'git://github.com/bennie/perl-Text-TabFile.git',
                        web  => 'http://github.com/bennie/perl-Text-TabFile',
                    },
                    bugtracker => {
                        # mailto => '...',
                        web => 'https://rt.cpan.org/Dist/Display.html?Name=Text-TabFile',
                    },

                },
                no_index => {directory => [qw/t/]},
            },
            META_ADD => {
                build_requires     => {},
                configure_requires => {}
            },
        )
    )

);