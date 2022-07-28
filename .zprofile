for file in $(ls ~/.zprofile.d/*.sh); do
    source $file
done
