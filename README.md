# gco

Golang cross compile options shell script.

### Installation

To download gco.sh with cURL:
```bash
curl https://raw.githubusercontent.com/songjiayang/gco/master/gco.sh -o  /usr/local/bin/gco
```

Or Wget:

```bash
wget https://raw.githubusercontent.com/songjiayang/gco/master/gco.sh -O /usr/local/bin/gco
```

Then make it runnable:

```bash
chmod +x /usr/local/bin/gco
```

### Usage

```
gco example 0.1 main.go
```

- example is app name.
- 0.1 is app version.
- main.go is app build path.


### Example

Go to exmaple folder, run `../gco.sh example 0.1 main.go` , you will see

```
--> building pkg/example_0.1.darwin_386 main.go
--> building pkg/example_0.1.darwin_amd64 main.go
--> building pkg/example_0.1.freebsd_386 main.go
--> building pkg/example_0.1.freebsd_amd64 main.go
--> building pkg/example_0.1.freebsd_arm main.go
--> building pkg/example_0.1.linux_386 main.go
--> building pkg/example_0.1.linux_amd64 main.go
.......
```
