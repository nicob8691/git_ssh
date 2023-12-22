# git_ssh
Automated script for connecting and cloning git

### GitClone
```bash
dnf install -y git
git clone https://github.com/nicob8691/git_ssh.git
cd git_ssh
```

### Configure git and ssh access
```bash
bash configure.sh
```

### Clone repos
```bash
bash git_clone.sh git_ssh
bash git_clone.sh linux
cd /home/git/linux
```
