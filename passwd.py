import crypt
import base64
import os,sys
from clipboard import *

if len(sys.argv) < 2:
    p=raw_input("Enter your wished password: ")
else:
    p=sys.argv[1]
    pass

salt=base64.b64encode(os.urandom(6))

c=crypt.crypt(p, "$6$"+salt)

if len(sys.argv) >= 3:
    copy(c)
    print "Successfuly copied to your clipboard!"
else:
    print("Your SHA512-hashed password is:\n\n"+c)
    pass
