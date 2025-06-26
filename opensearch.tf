## Copyright (c) 2022, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

resource "oci_opensearch_opensearch_cluster" "my_opensearch_cluster" {

    #Required
    compartment_id = var.compartment_ocid
    data_node_count = var.opensearch_cluster_data_node_count
    data_node_host_memory_gb = var.opensearch_cluster_data_node_host_memory_gb
    data_node_host_ocpu_count = var.opensearch_cluster_data_node_host_ocpu_count
    data_node_host_type = var.opensearch_cluster_data_node_host_type
    data_node_storage_gb = var.opensearch_cluster_data_node_storage_gb
    display_name = var.opensearch_cluster_display_name
    master_node_count = var.opensearch_cluster_master_node_count
    master_node_host_memory_gb = var.opensearch_cluster_master_node_host_memory_gb
    master_node_host_ocpu_count = var.opensearch_cluster_master_node_host_ocpu_count
    master_node_host_type = var.opensearch_cluster_master_node_host_type
    opendashboard_node_count = var.opensearch_cluster_opendashboard_node_count
    opendashboard_node_host_memory_gb = var.opensearch_cluster_opendashboard_node_host_memory_gb
    opendashboard_node_host_ocpu_count = var.opensearch_cluster_opendashboard_node_host_ocpu_count
    #opendashboard_node_host_shape      = var.opendashboard_node_host_shape

    software_version = var.opensearch_cluster_software_version
    
    security_master_user_name      = var.security_master_user_name
    security_master_user_password_hash =  var.security_master_user_password
    security_mode  = var.security_mode

    subnet_compartment_id = var.network_compartment_ocid
    subnet_id = var.subnet_ocid
    vcn_compartment_id = var.network_compartment_ocid
    vcn_id = var.vcn_ocid #oci_core_vcn.opensearch_vcn.id

    maintenance_details {
    notification_email_ids = [var.opensearch_notification_email_ids] 
    }

    #Optional
    #defined_tags = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
}
