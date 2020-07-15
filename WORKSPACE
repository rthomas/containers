load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
  name = "io_bazel_rules_docker",
  sha256 = "4521794f0fba2e20f3bf15846ab5e01d5332e587e9ce81629c7f96c793bb7036",
  strip_prefix = "rules_docker-0.14.4",
  urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.14.4/rules_docker-v0.14.4.tar.gz"],
)

load("@io_bazel_rules_docker//repositories:repositories.bzl", container_repositories = "repositories")
container_repositories()

load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")
container_deps()

load("@io_bazel_rules_docker//container:pull.bzl", "container_pull")
container_pull(
  name = "alpine_linux_amd64",
  registry = "index.docker.io",
  repository = "library/alpine",
  tag = "3.12",
)

container_pull(
  name = "openjdk",
  registry = "index.docker.io",
  repository = "library/openjdk",
  digest = "sha256:a62bad440a4459d35f6410de15a6fd8e68689044f37e6ce66dcbc379f644bfc8",
)  

container_pull(
  name = "debian",
  registry = "index.docker.io",
  repository = "library/debian",
  # tag = "bullseye-slim",
  digest = "sha256:19b8d640b8e542cf9e1ed259907cc196dcd4b2da031e8100e32a4aeb0d297120",
)


load("@io_bazel_rules_docker//repositories:repositories.bzl", container_repositories = "repositories",)
container_repositories()

load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")
container_deps()

load("@io_bazel_rules_docker//repositories:pip_repositories.bzl", "pip_deps")
pip_deps()
