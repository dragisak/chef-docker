# Ununtu 12.04 + Chef solo

```
docker build -t dragisak/chef-docker
```

```
docker run -i -t --name chef -P -v /Users/dragisak/Ticketfly/chef/tfly-alluxio:/opt/ticketfly/chef/tfly-alluxio dragisak/chef-docker bash -l
docker start -i chef
```

```
berks vendor -b /opt/ticketfly/chef/tfly-alluxio/Berksfile $COOKBOOK_PATH
chef-client -r "recipe[tfly-alluxio]"
```