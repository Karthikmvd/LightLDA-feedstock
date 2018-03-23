#/bin/bash
git submodule update --recursive
echo "Applying Patch"
#patch -t -p0<${RECIPE_DIR}/patch_third_party
git apply ${RECIPE_DIR}/patch_third_party
chmod 755 build.sh
env RECIPE_DIR=${RECIPE_DIR} ./build.sh
