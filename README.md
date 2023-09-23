# git_ssh
Automated script for connecting and cloning git

### GitClone
```bash
mkdir -p /home/git && cd $_
dnf install -y git
git clone git@github.com:nicob8691/git_ssh.git
```

### Configure and ssh
```bash
bash configure.sh
bash ssh_keying.sh0
```

### Clone
```bash
bash git_clone.sh ${REPO}
```
