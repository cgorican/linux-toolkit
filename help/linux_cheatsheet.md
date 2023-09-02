# Linux Cheatsheet

## Files

### Ownership

```sh
sudo chown user:group <FILE>
sudo chown -R user:group <DIR>
```

### Permissions

_Modify file's read/write/execute permissions._

```sh
sudo chmod +x <FILE>
```

## Aliases

```sh
nano ~/.bashrc
```

_You will need to edit the `~/.bashrc` file to set aliases for the current user._<br/>
_For the system-wide aliases you will need to edit `/etc/bash.bashrc` or `/etc/bashrc`._

```sh
alias <ALIAS_VALUE>='<COMMAND>'
```

Example:

```sh
alias reload='source ~/.bashrc'
```

Apply the changes by reloading the `.bashrc` file:

```sh
source ~/.bashrc
```

## Using executables

Add the source folder of your executables to the `PATH`.

_Here, we are adding the `script/` folder inside user's home directory to the `PATH`._
_Again, if we want to preserve these changes we should add the following line to our `.bashrc` file!_

Example:

```sh
export PATH="$PATH:$HOME/scripts"
alias <ALIAS_VALUE>="bash script.sh"
```

## SSH

_First we need to generate our private and public keys._

### Generate keys

```sh
ssh-keygen
```

A new folder will appear in the user's home directory `.ssh/`.<br/>
Inside it, among other files, we will find:

- `id_rsa`: private key (**NEVER SHARE THIS**)
- `id_rsa.pub`: public key
- `authorized_keys`: whitelisted public keys, used to access the device

### Connect to ssh

_First, we must add our `public` key (`id_rsa.pub`) to the `authorized_keys` file, on the remote device!_

```sh
ssh <REMOTE_USERNAME>@<REMOTE_IP_ADDRESS>
```

### Copy files

_Not sure how that works with Windows..._

From remote:

```sh
scp <REMOTE_USERNAME>@<REMOTE_IP_ADDR>:<REMOTE_FILE_PATH> <LOCAL_DEST_DIR>
```

To remote:

```sh
scp <LOCAL_FILE_PATH> <REMOTE_USERNAME>@<REMOTE_IP_ADDR>:<REMOTE_DEST_DIR>
```
