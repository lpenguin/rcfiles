if [[ `grep .bashrc.inc $HOME/.bashrc 2>/dev/null` ]] ; then
	echo '.bashrc already patched'
else
	echo 'patching .bashrc file'
	echo '. $HOME/.bashrc.inc' >> $HOME/.bashrc
fi

cd $HOME
git submodule init
git submodule update


