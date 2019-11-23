# cpython-flatpak

A nightly cpython flatpak builder.

### Usage:

#### installation:

This will install flatpak SDK, fetch the cpython [source from github](https://github.com/python/cpython), build it, and install it locally as a flatpak repo.

```bash
sh build.sh  # or ./build.sh
```

#### running :

```bash
flatpak run org.flatpak.Python
```

To make it easier to run it, I suggest setting up an alias for the run command
by adding the following lines to `.bashrc`:

```bash
[ `alias | grep "python3.9" | wc -l` == 0 ] && alias python3.9='flatpak run org.flatpak.Python'
```

after that, `python3.9` command is available:

```bash
$ python3.9
Python 3.9.0a1+ (heads/master:041d8b4, Nov 23 2019, 20:20:23)
[GCC 8.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import sys; print(sys.version_info)
sys.version_info(major=3, minor=9, micro=0, releaselevel='alpha', serial=1)
```

### binary location:

After installtion, the binary is found under the following dir-tree:

```bash
~/.local/share/flatpak/app/org.flatpak.Python/.../bin/python3.9
```
