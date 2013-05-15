rsync infi.c  a/ -n -i --times
>f.st...... infi.c

import commands
>>> test=commands.getoutput('rsync infi.c  a/ -n -i --times ')
>>> print test
