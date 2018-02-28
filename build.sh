export PATH=/home/chris/git/mxe/usr/bin:$PATH

rm -r _build
mkdir -p _build && cd _build

#cmake -DCMAKE_TOOLCHAIN_FILE=../Toolchain-mingw64.cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
x86_64-w64-mingw32.static.posix-cmake ... -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
make -j8
mv ../bin/ssr-binaural.exe ../bin/ssr-binaural-release.exe

x86_64-w64-mingw32.static.posix-cmake ... -DCMAKE_BUILD_TYPE=DEBUG -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
make -j8
mv ../bin/ssr-binaural.exe ../bin/ssr-binaural-debug.exe

cd ..
