# gpdb6-docker

Dockerfile for gpdb6 env. 

This is a Docker image file to deploy an single node open source Greenplum Database for test purpose.

This image will use Greenplum 6.22.2 source code and compiling the binary, which runs on both x86 and arm (Including Mac M1) chips. 
The Greenplum version will be deployed is "Greenplum Database 6.22.2". 


Deploy steps:

1. Install Docker Desktop
2. Download this repo
3. execute run.sh

```
unzip gpdb6-docker.zip
cd gpdb6-docker
./run.sh
```

To use:

1. Connect to container from hosting machine:
```
ssh gpadmin@localhost (Password：Hashdata@123)
```
OR
```
docker exec -it <container-id> /bin/bash
```
If success, it will be like this:
```
[gpadmin@mdw ~]$
```
2. Log in database within the docker:
```
[root@mdw /]# su - gpadmin
Last login: Wed Nov 16 17:04:08 CST 2022 on pts/1
[gpadmin@mdw ~]$ psql
psql (9.4.26)
Type "help" for help.

gpadmin=# select version();
                                                                                                               version

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------
 PostgreSQL 9.4.26 (Greenplum Database 6.22.2 build commit:696a149425d88961d38cb2254e82a92a7f4f9424) on aarch64-unknown-linux-gnu, compiled by gcc (GCC) 10.2.1 20210130 (Red
Hat 10.2.1-11), 64-bit compiled on Dec 13 2022 09:42:56
(1 row)
```

Now you got a Greenplum database for testing, enjoy!