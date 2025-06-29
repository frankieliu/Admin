# Setting up ssh-keys
ssh-keygen

Copy the pubkey in .ssh
to https://github.com/frankieliu/Admin/settings/keys

Copy the private key to c:/users/<users>/.ssh

# Clone the repository using git@github
Checkout the repository:
git clone git@github.com:

# vscode

In vscode need to set plugin remote-ssh

Remote-SSH : setup config

Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_<private_key_file>
