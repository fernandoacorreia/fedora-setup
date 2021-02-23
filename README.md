# fedora-setup
Automated setup for Fedora systems

## Requirements

Fedora 33.

See https://alt.fedoraproject.org/cloud/ for cloud images.

## Usage

1. Download https://github.com/fernandoacorreia/fedora-setup/blob/master/setup:

```
curl -O https://raw.githubusercontent.com/fernandoacorreia/fedora-setup/master/setup
```

2. Run `setup`:

```
bash ./setup
```

3. Add the new machine's private key to your GitHub account so that you can access your GitHub repositories from your new machine.

- Open https://github.com/settings/profile
- SSH and GPG keys
- New SSH Key
- Copy and paste the public key that was displayed by `setup` under "New ssh key created".
- Press Add SSH key

4. Finish the setup:

```
bash ./setup
```

That will clone this project into `~/fedora-setup` and install everything.

## After first setup

Log off and log back in so that user profile changes are applied.
