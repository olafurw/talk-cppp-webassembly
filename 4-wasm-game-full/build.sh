mkdir -p build;
pushd build;
emmake make clean || emcmake cmake .. && emmake make;
popd;