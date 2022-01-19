gcloud compute config-ssh

sed -i '' '/^Host notebook2.*/a\'$'\n''    User=jupyter'$'\n' ~/.ssh/config
