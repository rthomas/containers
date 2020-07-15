load("@io_bazel_rules_docker//container:container.bzl", "container_image")

container_image(
  name = "image",
  base = "@alpine_linux_amd64//image",
  tars = ["node_exporter-1.0.1.linux-amd64.tar.gz"],
  entrypoint = [
    "/node_exporter-1.0.1.linux-amd64/node_exporter",
  ],
)
