# Installing a new project
##  Add project to your [hosts file](https://docs.rackspace.com/support/how-to/modify-your-hosts-file)

```shell
127.0.0.1      YOUR_PROJECT_URL
```

## In root directory

```shell
./_includes/scripts/create_network.sh && cd _private/environment && docker-compose up -d && cd ../../
```

## In project directory

First relative path depends on your project location (nested twice here).

```shell
../../_includes/scripts/bootstrap/copy_env.sh && ../../_includes/scripts/bootstrap/copy_certs.sh && ../../_includes/scripts/bootstrap/sail.sh && cd ../../_private/environment && docker-compose down && cd ../../ && ./_includes/scripts/remove_network.sh
```
