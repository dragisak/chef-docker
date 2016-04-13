# Ununtu 12.04 + Chef solo

```
docker build -t dragisak/chef-docker
```

```
docker run -i -t -P -v /Users/dragisak/Ticketfly/chef:/opt/ticketfly/chef dragisak/chef-docker bash -l
docker start -i chef
```

```
berks vendor -b /opt/ticketfly/chef/tfly-alluxio/Berksfile $COOKBOOK_PATH
chef-client -r "recipe[tfly-alluxio]"
```