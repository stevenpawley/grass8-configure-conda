export PREFIX=$(python3 -c 'import sys; print(sys.prefix)')
export PATH=$PREFIX/bin:/usr/bin:/bin:/usr/sbin:/etc:/usr/lib
export GRASS_PYTHON=$(which pythonw)
export CC=$PREFIX/bin/clang
export CXX=$PREFIX/bin/clang++

export LDFLAGS="-Wl,-rpath,$PREFIX/lib"
export CFLAGS="-O2 -pipe -arch x86_64 -DGL_SILENCE_DEPRECATION"
export CXXFLAGS="-O2 -pipe -stdlib=libc++ -arch x86_64"

./configure \
    --with-macosx-sdk=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk \
    --enable-64bit \
    --with-macosx-archs="x86_64" \
    --with-opengl=aqua \
    --prefix=$PREFIX \
    --with-freetype \
    --with-freetype-includes=$PREFIX/include/freetype2 \
    --with-freetype-libs=$PREFIX/lib \
    --with-gdal=$PREFIX/bin/gdal-config \
    --with-gdal-libs=$PREFIX/lib \
    --with-proj=$PREFIX/bin/proj \
    --with-proj-includes=$PREFIX/include \
    --with-proj-libs=$PREFIX/lib \
    --with-proj-share=$PREFIX/share/proj \
    --with-geos=$PREFIX/bin/geos-config \
    --with-jpeg-includes=$PREFIX/include \
    --with-jpeg-libs=/$PREFIX/lib \
    --with-png-includes=$PREFIX/include \
    --with-png-libs=$PREFIX/lib \
    --with-tiff-includes=$PREFIX/include \
    --with-tiff-libs=$PREFIX/lib \
    --with-postgres=yes \
    --with-postgres-includes=$PREFIX/include \
    --with-postgres-libs=$PREFIX/lib \
    --without-mysql \
    --with-sqlite \
    --with-sqlite-libs=$PREFIX/lib \
    --with-sqlite-includes=$PREFIX/include \
    --with-fftw-includes=$PREFIX/include \
    --with-fftw-libs=$PREFIX/lib \
    --with-cxx \
    --with-cairo \
    --with-cairo-includes=$PREFIX/include/cairo \
    --with-cairo-libs=$PREFIX/lib \
    --with-cairo-ldflags="-lcairo" \
    --with-zstd \
    --with-zstd-libs=$PREFIX/lib \
    --with-zstd-includes=$PREFIX/include \
    --with-bzlib \
    --with-bzlib-libs=$PREFIX/lib \
    --with-bzlib-includes=$PREFIX/include \
    --with-netcdf=$PREFIX/bin/nc-config \
    --with-blas \
    --with-blas-libs=$PREFIX/lib \
    --with-blas-includes=$PREFIX/include \
    --with-lapack \
    --with-lapack-includes=$PREFIX/include \
    --with-lapack-libs=$PREFIX/lib \
    --with-netcdf=$PREFIX/bin/nc-config \
    --with-nls \
    --with-libs=$PREFIX/lib \
    --with-includes=$PREFIX/include \
    --with-pdal=$PREFIX/bin/pdal-config \
    --with-pdal-libs=$PREFIX/lib \
    --with-readline \
    --with-readline-includes=$PREFIX/include/readline \
    --with-readline-libs=$PREFIX/lib
