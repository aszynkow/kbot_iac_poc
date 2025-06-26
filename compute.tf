## Copyright (c) 2022, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

locals {
  is_flex_shape = length(regexall("Flex", var.node_shape)) > 0 ? true : false
}

resource "tls_private_key" "public_private_key_pair" {
  algorithm = "RSA"
}

#data "template_file" "key_script" {
 # template = file("${path.module}/scripts/sshkey.tpl")
 # vars = {
  #  ssh_public_key = tls_private_key.public_private_key_pair.public_key_openssh
  #}
#}

#data "template_cloudinit_config" "cloud_init" {
 # gzip          = true
 # base64_encode = true

 # part {
 #   filename     = "ainit.sh"
 #   content_type = "text/x-shellscript"
 #   content      = data.template_file.key_script.rendered
#  }
#}

resource "oci_core_instance" "llm_instance" {
  count = var.llm_vm_count
  availability_domain = var.availability_domain_name == "" ? data.oci_identity_availability_domains.ADs.availability_domains[0]["name"] : var.availability_domain_name
  compartment_id      = var.compartment_ocid
  display_name        = var.vm_instance_name[count.index]
  shape               = var.node_shape

  dynamic "shape_config" {
    for_each = local.is_flex_shape ? [1] : []
    content {
      memory_in_gbs = var.node_flex_shape_memory
      ocpus         = var.node_flex_shape_ocpus
    }
  }

  create_vnic_details {
    subnet_id        = var.subnet_ocid#oci_core_subnet.opensearch_public_subnet.id
    display_name     = var.vm_instance_name[count.index]
    assign_public_ip = false
  }

  source_details {
    source_id   = oci_core_image.cus_kbot_image.id #data.oci_core_images.kbot_image.images[0].id
    source_type = "image"
  }

  metadata = {
    ssh_authorized_keys = var.ssh_public_key#tls_private_key.public_private_key_pair.public_key_openssh#var.ssh_authorized_keys
    #user_data           = data.template_cloudinit_config.cloud_init.rendered
  }

  #defined tags

}

resource "oci_core_image" "cus_kbot_image" {
  # Required
  compartment_id = var.compartment_ocid
  display_name   = var.cus_image_name

  image_source_details {
          source_type = "objectStorageUri"
          source_uri = var.cus_image_url
      }
  
}