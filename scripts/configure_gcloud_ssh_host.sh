gcloud compute config-ssh

sed -i '' '/^.*CheckHost.*/a\'$'\n''    User=jupyter'$'\n' ~/.ssh/config
