load("@io_bazel_rules_docker//container:container.bzl", "container_image")

container_image(
  name = "image",
  base = "@debian//image",
  tars = ["grafana-7.0.6.linux-amd64.tar.gz"],
  workdir = "/grafana-7.0.6",
  entrypoint = [
    "./bin/grafana-server",
    "web",
    "cfg:default.paths.data=/data",
  ],
)
