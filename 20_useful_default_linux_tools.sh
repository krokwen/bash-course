#!/usr/bin/env bash

# getting help
# most linux commands has help info
# you can get it by calling command with one of these flags: -h --help -help help

# i think you all know about 'cd' 'cp' 'rm' 'ls' tools, so i will skip this part
# but two words about 'ln'

# if you need a symbolic link, do that
ln -s /source/file/or/dir /target/path
# if you will use a relative path with ln, so, the link will work with relative paths.


TEXT="string a
string b
string c
string 1
string 2
string 3
string foo
string bar
string baz
string qwe
string asd
string zxc
string 123
string 456
string 678"

# sort strings from stdin or file
echo "$TEXT" | sort
# or
sort ./path/to/file

# see more info at sort --help

# count strings from stdin or file
echo "$TEXT" | wc -l
# or
wc -l ./path/to/file


# fitler strings for uniquness from stdin or file
echo "$TEXT" | sort | uniq
# sort needed because uniq is sequence sensitive

# count unique strings
echo "$TEXT" | sort | uniq -c

# if you want use uniq on file, just run uniq ./path/to/file

# search for substring or regex in text
echo "$TEXT" | grep "foo"
# exlude substring
echo "$TEXT" | grep -v -e "bar"
# recursively serarch in directory
grep -r ./path/to/dir/ -e "expr"

# with grep you can use regex like this
echo "$TEXT" | grep -e "b$" -e "^string" -e "b.[rz]"


# replace substring
# you can use any symbol instead of %, it just a separator
# also you can use other perl-like expressions
echo "$TEXT" | sed -e 's%string%STRING%g'
# replace in file
sed -i ./path/to/file -e 's%from%to%g'

# writing multistring text to file
cat > ./path/to/file <<EOL
string 1
string 2
string 3
EOL

# working with text columns

# print 2nd column, then first
echo "$TEXT" | awk {'print $2 $1'}
# you can get a very reach formatting and calculating (awk is a cli excel alternative) with awk

# searching for files and operating on them

# this command will find all files by pattern *.tar.* at minimum 2 dirs and maximum 4 dirs depth in selected directory, then will copy these files to /backup/ directory
find ./path/to/dir -type f -mindepth 2 -maxdepth 4 -name *.tar.* -exec cp {} /backup/{} \;

# if you need just create file - use touch
touch /tmp/foo

# text truncating

# truncate from beginning
echo "$TEXT" | head # by default shows first 10 strings
echo "$TEXT" | head -n 5 # will show first 5 strings

# truncate from end
echo "$TEXT" | tail # by default shows last 10 strings
echo "$TEXT" | tail -n 5 # will show last 5 strings

tail -f /var/log/my_log # will read log file from last 10 strings and continiously  print new strings
