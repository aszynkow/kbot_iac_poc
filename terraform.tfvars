# Authentication
#tenancy_ocid         = ocid1.tenancy.oc1..aaaaaaaajznex5attydtrmrgudwayqu7kn4krasw2ct4h4pwz7nwbfxoyd4q
#user_ocid            = ocid1.user.oc1..aaaaaaaahaozyr2pae4kuw6cgflqrkfei5mhmvtqeipzmzkvtgj5t6ytv46q
#fingerprint          = 5c:66:af:2a:0d:26:37:59:83:6e:df:6d:e8:95:e4:dd
#private_key_path     = /Users/nunogoncalves/.oci/oci_api_key.pem

# Region
#region = ap-saopaulo-1

#availability_domain_name = GrCh:SA-SAOPAULO-1-AD-1
#Bastion
bastion_client_cidr_block_allow_list = ["0.0.0.0/0"]
bastion_name = "kbotb1"
# Compartment
compartment_ocid = "ocid1.compartment.oc1..aaaaaaaaxglpyyad63ziqutwu77w3eg7gh7zf3cpx332ssr6gtz22yldvdbq"
network_compartment_ocid = "ocid1.compartment.oc1..aaaaaaaatez6tvibuybiywdb7s4pltjrvrpyhjijlzkls2hdiieye52lreaq"
iam_compartment_ocid = "ocid1.compartment.oc1..aaaaaaaatez6tvibuybiywdb7s4pltjrvrpyhjijlzkls2hdiieye52lreaq"
#opensearch-tf
vcn_ocid = "ocid1.vcn.oc1.ap-melbourne-1.amaaaaaajlkbyliauvy4z4xdhaot64jj7oz7qvh6es5yv4ma3aqcgh5ksa6a"#"ocid1.vcn.oc1.ap-sydney-1.amaaaaaajlkbylia5ihdd3u35qim3k2qyez34543g4cvcg2jayp72ihfaiga"
subnet_ocid = "ocid1.subnet.oc1.ap-melbourne-1.aaaaaaaaijcc2ini7cicmps6apmhvpfydlg7rhiik4zq3z527oifajfaavja"#"ocid1.subnet.oc1.ap-sydney-1.aaaaaaaablp5r3hwmwdoj7ydn3t67uixq4yvn3iofkgxckvdhtssr56wcqna"

# PostgreSQL Password
#postgresql_password     = Password2022#

# PostgreSQL Version (supported versions 9.6, 10, 11, 12, 13)
#postgresql_version      = 13
#LLM VMs
node_shape = "VM.GPU.A10.1"
vm_instance_name = ["llm-instance1","llm_instnce2"]
node_flex_shape_ocpus  = 15
node_flex_shape_memory = 240
llm_vm_count = 2

#create_in_private_subnet = false
#OPEN Search
opensearch_cluster_data_node_count = 3
opensearch_cluster_data_node_host_memory_gb = 244
opensearch_cluster_data_node_host_ocpu_count = 32
opensearch_cluster_data_node_host_type = "FLEX"
opensearch_cluster_data_node_storage_gb = 50
opensearch_cluster_display_name = "kbotopencluster"
opensearch_cluster_master_node_count = 3
opensearch_cluster_master_node_host_memory_gb = 32
opensearch_cluster_master_node_host_ocpu_count = 2
opensearch_cluster_master_node_host_type = "FLEX"
opensearch_cluster_opendashboard_node_count = 1
opensearch_cluster_opendashboard_node_host_memory_gb = 16
opensearch_cluster_opendashboard_node_host_ocpu_count  = 2
opendashboard_node_host_shape      = "VM.Standard.E4.Flex"
opensearch_cluster_software_version = "2.19.1"
opensearch_notification_email_ids = "adam.szynkowski@oracle.com"
   

security_master_user_name          = "orasearch"
security_master_user_password      = "ChangeMe1234____"
security_mode                      = "ENFORCING"
#ADB
adb_display_name = "KbotADB"
adb_db_name = "kbot"
adb_admin_password = "JWBvRr7I90ftNUgRZIgXKi1DaRxEAF"
adb_data_storage_size_in_tbs = "1"
adb_cpu_core_count = "2"
adb_db_workload = "APEX"
adb_is_auto_scaling_enabled = "true"
adb_is_free_tier = "false"
#adb_freeform_tags = {"Environment": "OCI_TRIAL"}
ATP_database_license_model = "LICENSE_INCLUDED"
ATP_database_db_version = "23ai"
#ATP_is_data_guard_enabled = "true"
ATP_private_endpoint_label = "kbotPrivateEndpoint"
adb_storage_tier = "Standard"
adb_public_access_type = "NoPublicAccess"
adb_email_ids = "adam.szynkowski@oracle.com"
#OS
osb1_name = "kbor_b1"
osb1_storage_tier = "Standard"
osb1_public_access_type = "NoPublicAccess"
#osb1_freeform_tags = ""