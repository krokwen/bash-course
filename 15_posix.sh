#!/usr/bin/env bash

# in unix OSes you wokring with posix system
# posix is a combination of owner/group/other users acls on files

# i.e. files has an owner and group, by default the group is save as owner

# and files has combination of RWX parameters per owner/group/others

# R = 4
# W = 2
# X = 1

# full access is 7, read and execute only is 5, etc...

# you can see acls like 755 on files, it means that owner has a full access on this file, but group and others has a read only
# if it like 644, this means that file is not executable, and you can't run it before you fix access.
# NOTE that directories MUST have an execution bit, otherwise you can't get into it, even if you have a read and write access

# to check acls on file you can use ls with flag -l
ls -l ./path/to/file/or/dir

# to manipulate of ownership and group on file you can use a chown and chgrp utils

# this will change owner on file to 'me'
chown me ./path/to/file/or/dir

# this will change owner on file to 'me' and group to 'we'
chown me:we ./path/to/file/or/dir

# this will change group on file to 'we'
chgrp we ./path/to/file/or/dir

# this will set acls to 755 on file
chmod 755 ./path/to/file/or/dir

# or if you need to remove and executable flag
chmod -x ./path/to/file/or/dir

# ... or add
chmod +x ./path/to/file/or/dir

# or add write access only to owner
chmod u+w ./path/to/file/or/dir

#... or remove read for others
chmod o-r ./path/to/file/or/dir

# ... or add executable to group
chmod g+x ./path/to/file/or/dir

# if you need sed rights on directory recursively with any of these tools, you can add -R flag
# like this
chown -R me ....
chgrp -R we ....
chmor -R 755 ....

