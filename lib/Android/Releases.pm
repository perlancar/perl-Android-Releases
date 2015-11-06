package Android::Releases;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Perinci::Sub::Gen::AccessTable qw(gen_read_table_func);

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
                       list_android_releases
               );

our %SPEC;

# BEGIN FRAGMENT id=meta
# note: This section is generated by a script. Do not edit manually!
# src-file: /mnt/home/s1/repos/gudangdata/table/android_release/meta.yaml
# src-revision: bcd38551cd0cf53ff658d0eb432d480b80dd5fcf
# revision-date: Fri Nov 6 11:58:56 2015 +0700
# generate-date: Fri Nov  6 12:04:52 2015
# generated-by: /mnt/home/s1/repos/gudangdata/bin/gen-perl-meta-snippet
our $meta = {
  fields => {
    api_level => { pos => 2, schema => "int*", sortable => 1, summary => "API level" },
    code_name => { pos => 1, schema => "str*", sortable => 1, summary => "Code name", unique => 1 },
    reldate   => { pos => 3, schema => "date*", sortable => 1, summary => "Release date" },
    version   => { pos => 0, schema => "str*", sortable => 1, summary => "Version", unique => 1 },
  },
  pk => "version",
  summary => "Android releases",
};
# END FRAGMENT id=meta
# BEGIN FRAGMENT id=data
# note: This section is generated by a script. Do not edit manually!
# src-file: /mnt/home/s1/repos/gudangdata/table/android_release/data.csv
# src-revision: bcd38551cd0cf53ff658d0eb432d480b80dd5fcf
# revision-date: Fri Nov 6 11:58:56 2015 +0700
# generate-date: Fri Nov  6 12:04:52 2015
# generated-by: /mnt/home/s1/repos/gudangdata/bin/gen-perl-data-snippet
our $data = [
    ['1.0','','1','2008-09-23'],
    ['1.1','Petit Four','2','2009-02-09'],
    ['1.5','Cupcake','3','2009-04-27'],
    ['1.6','Donut','4','2009-09-15'],
    ['2.0','Eclair','5','2009-10-26'],
    ['2.0.1','Eclair','6','2009-12-03'],
    ['2.1','Eclair','7','2010-01-12'],
    ['2.2','Froyo','8','2010-05-20'],
    ['2.3','Gingerbread','9','2010-12-06'],
    ['2.3.3','Gingerbread','10','2011-02-09'],
    ['3.0','Honeycomb','11','2011-02-22'],
    ['3.1','Honeycomb','12','2011-05-10'],
    ['3.2','Honeycomb','13','2011-07-15'],
    ['4.0','Ice Cream Sandwich','14','2011-10-18'],
    ['4.0.3','Ice Cream Sandwich','15','2011-12-16'],
    ['4.1','Jelly Bean','16','2012-07-19'],
    ['4.2','Jelly Bean','17','2012-11-13'],
    ['4.3','Jelly Bean','18','2013-07-24'],
    ['4.4','KitKat','19','2013-10-31'],
    ['4.4W','KitKat','20','2014-06-25'],
    ['5.0','Lollipop','21','2014-11-12'],
    ['5.1','Lollipop','22','2015-03-09'],
    ['6.0','Marshmallow','23','2015-10-05'],
]
;
# END FRAGMENT id=data

my $res = gen_read_table_func(
    name => 'list_android_releases',
    table_data => $data,
    table_spec => $meta,
    #langs => ['en_US', 'id_ID'],
);
die "BUG: Can't generate func: $res->[0] - $res->[1]" unless $res->[0] == 200;

1;
# ABSTRACT: List Android releases

=head1 SYNOPSIS

 use Android::Releases;
 my $res = list_android_releases(detail=>1);
 # raw data is in $Android::Releases::data;


=head1 DESCRIPTION

This module contains list of Android releases. Data source is currently at:
https://github.com/perlancar/gudangdata (table/android_release).


=head1 SEE ALSO

L<Debian::Releases>

L<Ubuntu::Releases>

=cut
