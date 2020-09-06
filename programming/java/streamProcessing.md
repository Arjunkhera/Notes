## Stream Processing

Allows for transferring data between program and sources

**Broad Types**
1. Input streams
2. Output stream

1. Byte streams
2. Char streams


**Character Streams**
Reader is the super class extended by the following depending on the source of input stream 
- FileReader
- CharArrayReader
- StringReader

Some common methods of reader are
```java
// Reads a single character
int read()

// Reads characters into array
int read(char[] cbuf) 

// Reads characters into a portion of array
int read(char[] cbuf, int off, int len) 

// Reads characters into CharBuffer
int read(CharBuffer target) 
```

We receive -1 when we reach end of stream of an exception occurs. For array based reads, we receive the numbers of characters read


**Byte Stream**
InputStream is the super class exteneded by the following depending on the source of the input stream
- ByteArrayInputStream
- FileInputStream
- AudioInputStream

Some common methods of inputstream are
```java
// Reads a single byte
abstract int read() 

// Reads some number of bytes and stores them in byte array
int read(byte[] b) 

// Reads up to len bytes and stores them in byte array
int read(byte[] b, int off, int len) 

// Read all bytes
byte[] readAllBytes() 

// Reads the requested number of bytes and stores them in byte array
int readNBytes(byte[] b, int off, int len) 

// Reads the requested number of bytes
byte[] readNBytes(int len) 
```

readAllBytes stops at either end of file or end of stream, whereas readNBytes ends only at end of stream


**Buffered Streams**

```java

// For byte input streams:
BufferedInputStream(InputStream in)
BufferedInputStream(InputStream in, int size)

// For character input stream:
BufferedReader(Reader in)
BufferedReader(Reader in, int size)
```

