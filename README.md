# Minimal graphviz microservice

Based on Alpine Linux 3.15.4, Python 3 and the hug framework. Exposes a simple REST API for generating Graphviz visualizations from DOT files.

## Running

```bash
docker run -d -p 8000:8000 --name graphviz sseemayer/graphviz
```

## Usage

From the command line:
```bash
$ curl myhost.tld/viz.svg -F dot=@/path/to/a/dotfile.dot
```

In a web page:

```html
<img src="myhost.tld/viz.svg?dot=urlencoded-dot-data">
<img src="myhost.tld/viz.png?dot=urlencoded-dot-data">
```

## License
Graphviz is under the Eclipse Public License v1.0

This docker image is released under the MIT license.
See LICENSE for details.
