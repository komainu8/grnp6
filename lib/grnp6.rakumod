# Copyright (C) 2023  Horimoto Yasuhiro <horimoto@clear-code.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this program.  If not, see
# <http://www.gnu.org/licenses/>.

use NativeCall;

constant LIBPATH = "/usr/lib/groonga/groonga";
sub grn_init() returns int32 is native(LIBPATH) { * }
sub grn_fin() returns int32 is native(LIBPATH) { * }

class Grnp6 {
  my Str $.version = "0.0.1";

  method new() {
    my $rc = grn_init();
    if $rc != 0 {
      die "Failed initialize Groonga!";
    }
  }

  submethod DESTROY {
    grn_fin();
  }
}
