load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")

pkg_tar (
  name = "minecraft",
  srcs = [
    "minecraft-server-1.16.2.jar",
    "data",
  ],
  package_dir = "/"
)

container_image(
  name = "image",
  base = "@openjdk//image",
  tars = [":minecraft"],
  workdir = "/data",
  entrypoint = [
    "java",
    "-Xms2G",
    "-Xmx2G",
    "-jar",
    "/minecraft-server-1.16.2.jar",
    "-nogui",
  ],
)
