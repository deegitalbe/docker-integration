## Prerequisites

- [docker](https://docs.docker.com/get-docker/)
- [mkcert](https://github.com/FiloSottile/mkcert)
- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Installation

### Clone repository

```
git clone git@github.com:henrotaym/docker-integration.git
```

### Install your ssl certificates

Go to ssl certificates folder

```
cd _includes/ssl/certs
```

Generate certificates

```
mkcert -key-file trustup.io.test.key \
        -cert-file trustup.io.test.crt \
        \*.trustup.io.test trustup.io.test
```

### Add projects to your [hosts file](https://docs.rackspace.com/support/how-to/modify-your-hosts-file)

```
127.0.0.1      messaging.trustup.io.test
127.0.0.1      media.trustup.io.test
127.0.0.1      environment.trustup.io.test
127.0.0.1      task.trustup.io.test
127.0.0.1      changelog.trustup.io.test
127.0.0.1      ticketing.trustup.io.test
127.0.0.1      voip.trustup.io.test
127.0.0.1      projects.trustup.io.test
```

### Clone projects

Go back to repository root directory

```
cd ../../../
```

Run `clone.sh` script

```
./clone.sh
```

### Bootstrap projects

```
./bootstrap.sh
```

## Available scripts

These scripts should run from repository root directory

### Start projects

```
./start.sh
```

### Shutdown projects

```
./stop.sh
```
