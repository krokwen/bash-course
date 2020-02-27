#!/usr/bin/env bash

# bash IO redirection

# stdin

# standart input from file
cat <./file

# standart input from unix pipe

cat ./file | less

# stdout

# standart output to file

cat ./file >./another_file

# > will overwrite file every time
cat "qwe" > ./file

# if you need append to file, use >>
cat "asd" >> ./file


# standart output to unix pipe == input from unix pipe

cat < ./file | less

# stderr

# stderr to file

# will throw an error "cat: ./unexistent_file: No such file or directory"
cat ./unexistent_file 2>./file

# stderr to pipe

# this is a bit trickier, becaouse pipe catches only stdout, not stderr
# here you need redirect both stdin and stdout to /dev/null,
# then catch this stream and redirect to pipe
cat ./unexistent_file 2>&1 >/dev/null | cat

# redirect both stdout and stderr to same file
cat ./unexistent_file ./file 2>&1 >./another_file

# redirect stdout and stderr to different files
cat ./unexistent_file ./file >./another_file 2>./error_file

# use all redirections to files at same time

cat >./another_file 2>./error_file <./file

# or stdout to pipe

cat 2>./error_file <./file | cat
