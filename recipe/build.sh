# prepare the environment
cd extra/libseabreeze/SeaBreeze
if [ "$(uname)" == "Darwin" ]; then
    # osx: define install_name
    OSX_EXTRA="install_name=${PREFIX}/lib/libseabreeze${SHLIB_EXT}"
fi

# compile the library
SB_ARCH=${ARCH} SB_DEBUG=0 make ${OSX_EXTRA} lib/libseabreeze${SHLIB_EXT}
cp lib/libseabreeze${SHLIB_EXT} ${PREFIX}/lib
cd ../../..

# compile and install the python module
python setup.py install --single-version-externally-managed --record record.txt
