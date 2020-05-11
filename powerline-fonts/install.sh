DEST="powerline"
# clone
git clone https://github.com/powerline/fonts.git --depth=1 $DEST
# install
cd $DEST
./install.sh
# clean-up a bit
cd ..
rm -rf $DEST
