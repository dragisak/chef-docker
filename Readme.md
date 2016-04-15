# Ununtu 12.04 + Chef solo


## Running container

```
docker run -i -t --name chef -P -v /Users/dragisak/Ticketfly/chef/tfly-alluxio:/opt/ticketfly/chef/tfly-alluxio dragisak/chef-docker bash -l
docker start -i chef
```

## Working with cookbooks

```
berks vendor -b /opt/ticketfly/chef/tfly-alluxio/Berksfile $COOKBOOK_PATH
chef-client -l info -r "recipe[tfly-alluxio]"
```

## Building loally

```
docker build -t dragisak/chef-docker
```