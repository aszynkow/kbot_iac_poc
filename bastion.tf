resource "oci_bastion_bastion" "test_bastion" {
    #Required
    bastion_type = "STANDARD"
    compartment_id = var.compartment_ocid
    target_subnet_id = var.subnet_ocid
    name = var.bastion_name
    #Optional
    client_cidr_block_allow_list = var.bastion_client_cidr_block_allow_list
}