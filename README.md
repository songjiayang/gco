# gco

Golang cross compile options shell script.

### Usage

```
./gco.sh example 0.1 main.go
```

- example is app name.
- 0.1 is app version.
- main.go is app build path.


### Example

Go to exmaple folder, run `./gco.sh example 0.1 main.go` , you will see

```
--> building pkg/example-0.1.darwin-386 main.go
--> building pkg/example-0.1.darwin-amd64 main.go
--> building pkg/example-0.1.darwin-arm main.go
--> building pkg/example-0.1.darwin-arm64 main.go
--> building pkg/example-0.1.dragonfly-amd64 main.go
--> building pkg/example-0.1.freebsd-386 main.go
--> building pkg/example-0.1.freebsd-amd64 main.go
--> building pkg/example-0.1.freebsd-arm main.go
--> building pkg/example-0.1.linux-386 main.go
--> building pkg/example-0.1.linux-amd64 main.go
--> building pkg/example-0.1.linux-arm main.go
--> building pkg/example-0.1.linux-arm64 main.go
.......
```

### Best practice

copy `./gco.sh` to the user local bin then you can use it everywhere.
