# Manage users

## Create a new user

Create a new user with a home directory

```sh
sudo useradd -m <USERNAME>
```

Add user to a group

```sh
sudo usermod -aG <GROUP_NAME> <USERNAME>
```

## Delete the user

_The `-r` flag deletes user's home directory!_

```sh
sudo userdel -r <USERNAME>
```

Remove user from the group

```sh
sudo gpasswd -d <USERNAME> <GROUP_NAME>
```

## Sudo permissions

_Edit the `/etc/sudoers` file._

```sh
sudo visudo
```

We can also include external files<br/>
Example: `/etc/sudoers.d/bob`

```
bob ALL=(ALL:ALL) ALL
```

We then include the files from `/etc/sudoers.d/` inside the `/etc/sudoers`:

```sh
@includedir /etc/sudoers.d # Arch & Debian
#includedir /etc/sudoers.d # Oracle Linux
```

## Switch to another user

```sh
su - <USERNAME>
```

## Set bash as user's default shell

```sh
sudo chsh -s /bin/bash <USERNAME>
```
