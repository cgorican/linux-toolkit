# Create your own system service

Navigate to the `/etc/systemd/system`:

```sh
cd /etc/systemd/system
```

Create a new file with the `.service` extension:

```sh
sudo nano /etc/systemd/system/<SERVICE_NAME>.service
nano ~/.config/systemd/user/<SERVICE_NAME>.service
```

The file structure of the new service file should look something like:
_For a `user session-based` service we can use `default.target` or `graphical.target`. However, if we want to apply our service `system-wide` then we should use `multi-user.target`._

```toml
[Unit]
Description=Service name

[Service]
ExecStart=/path/to/your/script.sh

[Install]
WantedBy=default.target
# Service starts after the target is reachable

## RequiredBy=network-online.target
# Service starts before the target is reachable

## Also=graphical.target
# Specify aditional targets

## Alias=my-service.service
# Alternative name for the service
```

To get the list of available targets run:

```sh
sudo systemctl list-units --type=target
```

To get more information about the target run:

```sh
sudo systemctl show <TARGET_NAME>
```

After you are done configuring your service it is time to reload the _systemctl daemon_:

```sh
sudo systemctl daemon-reload
```

Most likely, the service you have just created will be dead, so you will need to `start it manually`:

```sh
sudo systemctl start <SERVICE_NAME>.service
```

Also, if you would like the service to start automatically on powerup, you need to `enable` it:

```sh
sudo systemctl enable <SERVICE_NAME>.service
```
