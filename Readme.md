# Ununtu 12.04 + Chef solo

```
docker build -t dragisak/chef-solo
```

```
docker run -i -t -P -v /Users/dragisak/Ticketfly/chef:/opt/ticketfly/chef dragisak/chef-solo bash -l
```
