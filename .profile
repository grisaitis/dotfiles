for file in $(ls ~/.profile.d/*.sh); do
    source $file
done

complete -C /usr/local/bin/terraform terraform
