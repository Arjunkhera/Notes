# MongoDB

For installation check [this]() out.

1. Starting and stopping the database
```bash

# start the service
sudo service mongod start

# stop the service
sudo service mongod stop

# restarting the service
sudo service mongod restart

# connect to the service
mongo

# list the databases
db

# connect to a dababase
use nameOfDatabase

```

[MongoDb quick reference guide](https://docs.mongodb.com/manual/reference/mongo-shell/#mongo-shell-quick-reference)


## Miscellaneous

1. In order to use the database through golang, there are two available drivers. One is official and the other which was till now in popular use is not being maintained anymore due to the introduction of the official driver.

```bash
# the unofficial driver
go get gopkg.in/mgo.v2 

# the official driver
go get github.com/mongodb/mongo-go-driver

```
