## Copyright (c) 2022 Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

output "llm_vm_ip" {
  value = oci_core_instance.llm_instance.*.private_ip
}

#output "generated_ssh_private_key" {
#  value     = tls_private_key.public_private_key_pair.private_key_pem
#  sensitive = true
#}

#output "generated_ssh_public_key" {
#  value     = tls_private_key.public_private_key_pair.public_key_openssh
#  sensitive = true
#}

output "opensearch_api_endpoint" {
  value = oci_opensearch_opensearch_cluster.my_opensearch_cluster.opensearch_fqdn != null ? "${oci_opensearch_opensearch_cluster.my_opensearch_cluster.opensearch_fqdn}:9200" : null
}

output "opensearch_dashboards_api_endpoint" {
  value = oci_opensearch_opensearch_cluster.my_opensearch_cluster.opendashboard_fqdn != null ? "${oci_opensearch_opensearch_cluster.my_opensearch_cluster.opendashboard_fqdn}:5601" : null
}

output "open_security_master_user_name" {
  value = oci_opensearch_opensearch_cluster.my_opensearch_cluster.security_master_user_name
}

output "open_security_master_user_password" {
  value = var.security_master_user_password
}

#output "wallet_password" {
#  value = oci_database_autonomous_database_wallet.Bgl_ATP_database_wallet.password
#  sensitive = true
#}

output "adb_admin_password" {
  value = var.adb_admin_password
}

output "os_bucket_name" {
  value = var.osb1_name
}

output kbot_image_id {
  value = data.oci_core_images.kbot_image.images[0].id
}