# On MacOS, ssh-agent will "forget" this key, once it gets restarted during reboots.
# But you can import your SSH keys into Keychain using this command:

/usr/bin/ssh-add -K ~/.ssh/id_rsa &> /dev/null
