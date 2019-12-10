# cpython-flatpak

A nightly cpython flatpak builder.

For official cpython [releases](https://github.com/python/cpython/tags),
please refer to [tags](https://github.com/ammarnajjar/cpython-flatpak/tags),
they match the official cpython releases.

### Requirements:

- Fedora based:

```console
sudo dnf install flatpak flatpak-builder
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

- Debian based:

```console
sudo apt install flatpak flatpak-builder
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

### Usage:

#### installation:

This will install flatpak SDK, fetch the cpython [source from github](https://github.com/python/cpython), build it, and install it locally as a flatpak repo.

```bash
sh build.sh  # or ./build.sh
```

### locations:

After installtion, the binary is found under the following path:

```bash
$HOME/.local/share/flatpak/app/org.flatpak.Python/current/active/files/bin/python3.8 /usr/local/bin/python3.8
```

and a symlink to it is created under `/usr/local/bin/python3.8`.

### running :

directly in terminal:

```console
$ python3.8
Python 3.8.1rc1 (tags/v3.8.1rc1:b00a2b5, Dec 10 2019, 16:05:52)
[GCC 8.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import sys; print(sys.version_info)
sys.version_info(major=3, minor=8, micro=1, releaselevel='candidate', serial=1)
```
