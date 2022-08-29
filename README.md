## Prerequisites

- [docker](https://docs.docker.com/get-docker/)
- [mkcert](https://github.com/FiloSottile/mkcert)
- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Installation

### Clone repository

```
git clone git@github.com:henrotaym/docker-integration.git && cd docker-integration
```

### Install your mkcert certificates

```
cd _/includes/ssl/certs \
    && mkcert -key-file trustup.io.test.key \
        -cert-file trustup.io.test.crt \
        *.trustup.io.test trustup.io.test
```

### Add projects to your [hosts file](https://docs.rackspace.com/support/how-to/modify-your-hosts-file)

```
127.0.0.1      messaging.trustup.io.test
127.0.0.1      media.trustup.io.test
127.0.0.1      environment.trustup.io.test
```

### Bootstrap projects

```
./bootstrap.sh
```

### Start projects

```
./start.sh
```

### Shutdown projects

```
./stop.sh
```