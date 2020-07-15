load("@io_bazel_rules_docker//container:container.bzl", "container_image")

container_image(
  name = "image",
  base = "@alpine_linux_amd64//image",
  tars = ["prometheus-2.19.2.linux-amd64.tar.gz"],
  cmd = [
    "/prometheus-2.19.2.linux-amd64/prometheus",
    "--config.file=/config/prometheus.yml",
    "--storage.tsdb.path=/data"
  ],
)
