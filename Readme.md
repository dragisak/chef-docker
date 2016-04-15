# Ununtu 12.04 + Chef solo


## Running container

```
docker run -i -t --name chef -p 19999:19999 -p 19998:19998 -v /Users/dragisak/Ticketfly/chef/tfly-alluxio:/opt/ticketfly/chef/tfly-alluxio dragisak/chef-docker bash -l
docker start -i chef
```

## Working with cookbooks

```
berks vendor -b /opt/ticketfly/chef/tfly-alluxio/Berksfile $COOKBOOK_PATH
chef-client -l info -r "recipe[tfly-alluxio::master]"
```

## Building loally

```
docker build -t dragisak/chef-docker
```