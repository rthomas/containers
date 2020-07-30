load("@io_bazel_rules_docker//container:container.bzl", "container_image")

container_image(
  name = "image",
  base = "@alpine_linux_amd64//image",
  tars = ["snmp_exporter-0.18.0.linux-amd64.tar.gz"],
  entrypoint = [
    "/snmp_exporter-0.18.0.linux-amd64/snmp_exporter",
  ],
)
