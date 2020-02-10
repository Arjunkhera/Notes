## Kafka

- Publish subscribe messaging system
- Distributed commit log
- Distributed streaming platform


#### Introduction :
- Database commit logs provide a durable record of all transactions so that they can be replayed to consistently build the state of the system
- Data withing Kafka is stored durably, in order and can be read deterministically
- Unit of data in Kafka is message
- Message can optionally contain metadata, and is know as **key**
- Keys and message data have no specific meaning to Kafka
- You can use keys to control the distribution of messages to partitions for a given topic
- This can be done by using hash of the key and deciding partition number by taking modulo of the hash

#### Batches :
- Messages in Kafka are written in batches, wherein a batch is just a collection of messages
- All the messages in a batch should belong to same topic and partition
- Why batches :
    - Roundtrips for individual messages leads to increased overheads, which is avoided by batches
    - This requires a tradeoff between latency and throughput
    - Larges batches, means more messages per unit of time. But also increases the delay in propogation
- Batches are compressed, so we have efficient data transfer and storage at the cost of some processing power

#### Schemas :
- Using a schema is preferable
- JSON and XML are easy to use and human readable, however they lack robust type handling and compatibility between schema versions
- Popularly used Apache Avro : serilisation framework developed for Hadoop
- Avro provides :
    - Compact serialisation format
    - Schemas that are separate from message payloads and do not require code to be generated when they change
    - Strong data typing
    - Schema evolution with backward and forward compatiblity
- Consistent data format allows writing and reading messages to be decoupled. An important underlying concept for Kafka
- Using well defined schemas and storing them in a common repository, the messages in kafka can be understood without coordination

#### Topics and Partitions :
- Messages in Kafka are categorised into topics
- Topics are similar to database table or folder in filesystem
- Topics are broken down into a number of partitions
- A partition is a single log
- Messages are written to partitions in append only manner
- There is no time ordering across the entire topic, just within a single partition
- Paritions give Kafka its redundancy and scalability
- A single topic can be scaled horizontally across multiple servers
- Most often, a stream is considered to be a single topic of data, regardless of the number of partitions

#### Producers and Consumers :
- Clients are users of the system
- There are two basic types, that is producers and consumers
- **Producers** :
    - create new messages
    - aka publishers or writers
    - by default publisher does not care what partition a specific message is written to and will balance over all partitions of a topic evenly
- **Consumers** :
    - reads new messages
    - aka subscribers or readers
    - reads the messages in the order in which they were produced
    - each message has a unique offset
    - Offset can be maintained either in Zookeeper or in Kafka itself
    - consumers work as a part of a consumer group
    - the group assures that each partition is only consumed by one member

#### Brokers :
- A single Kafka server is called a broker
- It receives messages from producers, assigns offsets and commits the messages to storage on disk
- It also services consumers, responding to fetch requests for paritions and responding with messages that have been committed to disk

#### Clusters :
- Kafka brokers operate in clusters
- Within a cluster, one broker operates a cluster controller
- The controller is responsible for administrative operations
- A parition is owned by a single broker in the cluster, but can be replicated on multiple brokers
- Producers and Consumers will always communicate with the lead broker of a given partition

#### Retention :
- Durable storage of messages for some period of time
- can be configured on the basis of time or storage constraints
- Individual topics can also be configured with their own retention settings
- Topics can also be configured to be **log compacted**, wherein Kafka only retains the last message produced with a specific key


















      

