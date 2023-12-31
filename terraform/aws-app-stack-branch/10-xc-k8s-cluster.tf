resource "volterra_k8s_cluster" "mk8s" {
  name      = "aws-${var.environment}-mk8s"
  namespace = "system"

  cluster_wide_app_list {
    cluster_wide_apps {
        dashboard {}
    }
  }

  use_default_cluster_role_bindings = true

  use_default_cluster_roles = true

  cluster_scoped_access_deny = true

  global_access_enable = true

  no_insecure_registries = true

  local_access_config {
    local_domain = "buytime.internal"
  }

  use_default_psp = true
}