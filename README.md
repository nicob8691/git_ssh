# git_ssh
Automated script for connecting and cloning git

### Initialisation
Install git and clone git_ssh repo
```bash
dnf install -y git
git clone https://github.com/nicob8691/git_ssh.git
cd git_ssh
```

### Configuration
Configure /home/git dir and ssh token
```bash
. configure.sh
```

### Clone repos
```bash
. clone.sh [REPONAME]
```
