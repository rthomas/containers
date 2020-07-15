## Bazel build for (some of) my home containers.

- Minecraft
- Prometheus
- Node Exporter
- Grafana

## Building

Build with the `$ bazel build prometheus/image.tar` target.

## Docker

Load them into docker with the `load` commannd.

`$ docker load -i ../bazel-bin/prometheus/image.tar`


