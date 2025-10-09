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

# ssh keys
- testing ssh connection
  https://docs.github.com/en/authentication/connecting-to-github-with-ssh/testing-your-ssh-connection
- checking existing ssh keys
  https://docs.github.com/en/authentication/connecting-to-github-with-ssh/checking-for-existing-ssh-keys

  ls -al ~/.ssh
  # looking for id_rsa.pub, id_ecdsa.pub, id_ed25519.pub

- generating new ssh key
  https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

  ssh-keygen -t ed25519 -C "fyliu@apple.com"
  # save it
  # passphrase can be empty

  eval "$(ssh-agent -s)"
  open ~/.ssh/config
  Host github.com
    AddKeysToAgent yes
    UseKeychain yes # if your passphrase is empty omit
    IdentifyFile ~/.ssh/id_ed25519
  ssh-add --apple-use-keychain ~/.ssh/id_ed25519
  # you don't need --apple-use-keychain if you don't have a passphrase

- adding new ssh key to github account
  https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

  # copy to clipboard
  pbcopy < ~/.ssh/id_ed25519.pub
  open github settings (gear icon)
  open SSH and GPG keys
  open New SSH Key or Add SSH Key
  add a Title and paste the copied id_ed25519.pub content
  Add SSH key

- configure single sign on
  https://docs.github.com/en/enterprise-cloud@latest/authentication/authenticating-with-single-sign-on/authorizing-an-ssh-key-for-use-with-single-sign-on
  
  # this open doesn't show up at apple