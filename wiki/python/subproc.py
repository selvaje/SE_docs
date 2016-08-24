#!/usr/bin/env python
from subprocess import Popen, call, check_output, STDOUT, PIPE

#### bash: ls -l
status = call(['ls', '-l'])

status = call('ls -l', shell=True)

#### bash: s=$(echo $USER)
s = check_output('echo $USER', shell=True).rstrip()
print s

# this does *not* work since "$USER" is substituted since shell is not used
s = check_output(['echo', '$USER']).rstrip()
print s

# to capture both stdout and stderr, set "stderr" option to "STDOUT"
s = check_output('echo $USER 1>&2', stderr=STDOUT, shell=True).rstrip()
print s

#### bash: ls | wc -l
p = Popen(["ls"], stdout=PIPE)
status = call(["wc", "-l"], stdin=p.stdout)
status = p.wait()
