# Some random notes

## Symlink to make VSCode understand includes

The Atom extension allows you to set the directory used for `#include`.  Sadly, the VSCode extension does not.  But that's a quick fix.  You just make a symlink (directory junction) between the two directories.

In my case.  I use OneDrive to sync between the two computers I use.  Documentation on using mklink can be found [here](https://www.howtogeek.com/howto/16226/complete-guide-to-symbolic-links-symlinks-on-windows-or-linux/) on HowToGeek.

```cmd
mklink /J "c:\Users\xxx\Documents\Tabletop Simulator" "c:\Users\xxx\OneDrive\Documents\Tabletop Simulator"
```