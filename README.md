About python-seabreeze
======================

Home: http://github.com/ap--/python-seabreeze

Package license: MIT

Feedstock license: BSD 3-Clause

Summary: Python module for Ocean Optics spectrometer



Current build status
====================

Linux: [![Circle CI](https://circleci.com/gh/ap--/python-seabreeze-feedstock.svg?style=shield)](https://circleci.com/gh/ap--/python-seabreeze-feedstock)
OSX: [![TravisCI](https://travis-ci.org/ap--/python-seabreeze-feedstock.svg?branch=master)](https://travis-ci.org/ap--/python-seabreeze-feedstock)
Windows: [![AppVeyor](https://ci.appveyor.com/api/projects/status/github/ap--/python-seabreeze-feedstock?svg=True)](https://ci.appveyor.com/project/ap--/python-seabreeze-feedstock/branch/master)

Current release info
====================
Version: [![Anaconda-Server Badge](https://anaconda.org/poehlmann/python-seabreeze/badges/version.svg)](https://anaconda.org/poehlmann/python-seabreeze)
Downloads: [![Anaconda-Server Badge](https://anaconda.org/poehlmann/python-seabreeze/badges/downloads.svg)](https://anaconda.org/poehlmann/python-seabreeze)

Installing python-seabreeze
===========================

Installing `python-seabreeze` from the `poehlmann` channel can be achieved by adding `poehlmann` to your channels with:

```
conda config --add channels poehlmann
```

Once the `poehlmann` channel has been enabled, `python-seabreeze` can be installed with:

```
conda install python-seabreeze
```

It is possible to list all of the versions of `python-seabreeze` available on your platform with:

```
conda search python-seabreeze --channel poehlmann
```




Updating python-seabreeze-feedstock
===================================

If you would like to improve the python-seabreeze recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`poehlmann` channel, whereupon the built conda packages will be available for
everybody to install and use from the `poehlmann` channel.
Note that all branches in the ap--/python-seabreeze-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](http://conda.pydata.org/docs/building/meta-yaml.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](http://conda.pydata.org/docs/building/meta-yaml.html#build-number-and-string)
   back to 0.
