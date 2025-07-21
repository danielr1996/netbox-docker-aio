# Add your plugins and plugin settings here.
# Of course uncomment this file out.

# To learn how to build images with your required plugins
# See https://github.com/netbox-community/netbox-docker/wiki/Using-Netbox-Plugins
PLUGINS = ["netbox_floorplan","netbox_topology_views","netbox_prometheus_sd","netbox_qrcode","netbox_reorder_rack","nb_service","netbox_data_flows"]

PLUGINS_CONFIG = {
  "netbox_topology_views": {
      "allow_coordinates_saving": True,
      "always_save_coordinates": True,
  }
}
