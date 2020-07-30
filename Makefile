IMAGES=minecraft.img prometheus.img grafana.img node_exporter.img snmp_exporter.img

clean:
	bazel clean

images: $(IMAGES)

%.img:
	bazel build $(@:.img=):image.tar
	docker load -i bazel-bin/$(@:.img=)/image.tar
