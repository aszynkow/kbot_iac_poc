## Copyright (c) 2022 Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

variable "user_ocid" {
  description = "User OCID"
  default = ""
}

variable "fingerprint" {
  description = "Fingerprint"
  default = ""
}

variable "private_key_path" {
  description = "API private key path"
  default = ""
}

variable "release" {
  default = "1.0"
}

variable "availability_domain_name" {
  default = ""
}

variable "tenancy_ocid" {
  description = "Tenancy OCID"
}

variable "compartment_ocid" {
  description = "OCID of the compartment where VCN will be created"
}

variable "region" {
  description = "OCI Region"
}

variable "vcn" {
  description = "VCN Name"
  default     = "opensearch-vcn"
}

variable "vcn_cidr" {
  description = "VCN's CIDR IP Block"
  default     = "10.0.0.0/16"
}

variable "node_image_id" {
  description = "The OCID of an image for a node instance to use."
  default     = ""
}

variable "node_shape" {
description = "Instance shape to use for master instance."
 default     = "VM.GPU.A10.1"
}

variable "node_flex_shape_ocpus" {
  description = "Flex Instance shape OCPUs"
  default = 15
}

variable "node_flex_shape_memory" {
  description = "Flex Instance shape Memory (GB)"
  default = 240
}

variable "instance_os" {
  description = "Operating system for compute instances"
  default     = "Oracle Linux"
}

variable "linux_os_version" {
  description = "Operating system version for all Linux instances"
  default     = "9"
}

variable "ssh_authorized_keys" {
  description = "Public SSH keys path to be included in the ~/.ssh/authorized_keys file for the default user on the instance. DO NOT FILL WHEN USING RESOURCE MANAGER STACK!"
  default     = ""
}

variable "ssh_private_key_path" {
  description = "The private key path to access instance. DO NOT FILL WHEN USING RESOURCE MANAGER STACK!"
  default     = ""
}

variable ssh_public_key {
  description = "The private key path to access instance."
  default     = ""
}

variable "vm_instance_name" {
  description = "Name of the compute instance"
  default     = ["llm-instance1","llm_instnce2"]
}

variable "opensearch_cluster_data_node_count" {
  default = 3
}

variable "opensearch_cluster_data_node_host_memory_gb" {
  default = 244
}

variable "opensearch_cluster_data_node_host_ocpu_count" {
  default = 32
}

variable "opensearch_cluster_data_node_host_type" {
  default = "FLEX"
}

variable "opensearch_cluster_data_node_storage_gb" {
  default = 50
}

variable "opensearch_cluster_display_name" {
  default = "kbotopencluster"
}

variable "opensearch_cluster_master_node_count" {
  default = 3
}

variable "opensearch_cluster_master_node_host_memory_gb" {
  default = 32
}

variable "opensearch_cluster_master_node_host_ocpu_count" {
  default = 2
}

variable "opensearch_cluster_master_node_host_type" {
  default = "FLEX"
}

variable "opensearch_cluster_opendashboard_node_count" {
  default = 1
}

variable "opensearch_cluster_opendashboard_node_host_memory_gb" {
  default = 16
}

variable "opensearch_cluster_opendashboard_node_host_ocpu_count" {
  default = 2
}

variable "opensearch_cluster_software_version" {
  default = "2.19.1"
}

variable opendashboard_node_host_shape  {
  default = "VM.Standard.E4.Flex"
}

variable security_master_user_name    {}
variable security_master_user_password     {}
variable security_mode                     {
  default = "ENFORCING"
}
variable opensearch_notification_email_ids {}

variable network_compartment_ocid {}
variable vcn_ocid {}
variable subnet_ocid {}
variable llm_vm_count {
  default = 2
}

#ADB
variable "adb_display_name" {
  default = "kbotdb"
}
variable "adb_db_name" {
  default = "kbotdb"
}
variable "adb_admin_password" {}
variable "adb_data_storage_size_in_tbs" {
  default = "1"
}
variable "adb_cpu_core_count" {
  default = "2"
}
variable "adb_db_workload" {
  default = "APEX"
}
variable "adb_is_auto_scaling_enabled" {
  default = "true"
}
variable "adb_is_free_tier" {
  default = "false"
}
variable "adb_email_ids" {}
#variable "adb_freeform_tags" {}

variable "ATP_database_license_model" {
  default = "LICENSE_INCLUDED"
}
variable "ATP_database_db_version" {
  default = "23ai"
}
variable "ATP_is_data_guard_enabled" {
  default = "false"
}
variable "ATP_private_endpoint_label" {
  default = "kbotPrivateEndpoint"
}
#variable "adb_name" {}
variable "adb_storage_tier" {
  default = "Standard"
}
variable "adb_public_access_type" {
  default = "NoPublicAccess"
}

#Object Storage
variable "osb1_storage_tier" {
  default = "Standard"
}
variable "osb1_public_access_type" {
  default = "NoPublicAccess"
}#
#variable "osb1_freeform_tags" {}
variable osb1_name {
  default = "kbotosb1"
}

#IAM
variable iam_compartment_ocid {}

#BAstion
variable bastion_client_cidr_block_allow_list {
  default = ["0.0.0.0/0"]
}
variable bastion_name {
  default = "kbotbs1"
}