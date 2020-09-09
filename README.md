## Bazel build for (some of) my home containers.

- Minecraft
- Prometheus
- Node Exporter
- SNMP Exporter
- Grafana

## Building

Build with the `$ bazel build prometheus/image.tar` target. Or use the Makefile and `make prometheus.img`.

Make them all with: `$ make images`. This will make the images, load them to docker, and tag them as `$name:latest`.

## Docker

Load them into docker with the `load` command, Or use the Makefile.

`$ docker load -i ../bazel-bin/prometheus/image.tar`


