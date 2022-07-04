gcloud compute config-ssh

sed -i '' '/^Host .*keen-dispatch-316219.*/a\'$'\n''    User=jupyter'$'\n' ~/.ssh/config
