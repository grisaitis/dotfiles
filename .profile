for file in $(ls ~/.profile.d/*.sh); do
    source $file
done
