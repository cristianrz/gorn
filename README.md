# gorn

## What is it?
gorn is a tool enabling one to put a "shebang" in the source code of a Go program to run it, or to run such a source code file explicitly. It was created in an attempt to simplify other tools that make the job way too complicated. gorn works on the simplest case and on the complex case you should probably be using `go build`.

## Example
As an example, copy the following content to a file named "hello.go" (or "hello", if you prefer):

```go
#!/usr/bin/env gorn

package main

func main() {
    println("Hello world!")
}
```

Then, simply run it:

```
$ chmod +x hello.go
$ ./hello.go
Hello world!
```

## Features

gorn will:

  * write files under `/tmp`, so that the actual script location isn't touched
  * avoid races between parallel executions of the same file
  * automatically clean up old compiled files
  * pass arguments to the compiled application

## Is it slow?

It's as fast as doing `go run`.

## Where are the compiled files kept?

They are kept under `/tmp` and deleted after execution.

## How to build and install gorn from source

```sh
make
make install
```

## License

See LICENSE file for details.
