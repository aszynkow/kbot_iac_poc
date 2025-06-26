resource "oci_database_autonomous_database" "adb" {
    #Required
    compartment_id           = var.compartment_ocid
    admin_password           = var.adb_admin_password
    autonomous_maintenance_schedule_type = "REGULAR"
    #backup_retention_period_in_days = "60"
    character_set = "AL32UTF8"
    ncharacter_set = "AL16UTF16"

    compute_count = var.adb_cpu_core_count
	compute_model = "ECPU"
	
    customer_contacts {
		email = var.adb_email_ids
	}

    db_tools_details {
		is_enabled = "true"
		name = "APEX"
	}
	db_tools_details {
		is_enabled = "true"
		name = "ORDS"
	}
	db_tools_details {
		is_enabled = "true"
		name = "DATABASE_ACTIONS"
	}

    
    #cpu_core_count           = var.adb_cpu_core_count
    data_storage_size_in_tbs = var.adb_data_storage_size_in_tbs
    db_name                  = var.adb_db_name
    #nsg_ids                  = [local.Bgl_Oci_Ora_Uat_Syd_Nsg_Default_id] 
    license_model            = var.ATP_database_license_model
    db_version               = var.ATP_database_db_version
    #is_data_guard_enabled    = var.ATP_is_data_guard_enabled
    #private_endpoint_label   = var.ATP_private_endpoint_label

    #Optional
    display_name             = var.adb_display_name
    subnet_id =              var.subnet_ocid
#    autonomous_container_database_id = 
#    clone_type               = 
    db_workload              = var.adb_db_workload
    is_auto_scaling_enabled  = tobool(lower(var.adb_is_auto_scaling_enabled))
    is_auto_scaling_for_storage_enabled = "true"
#    is_dedicated             = tobool(lower())
    #is_free_tier             = tobool(lower(var.adb_is_free_tier))
#    is_preview_version_with_service_terms_accepted = 
#    license_model = 
#    source = 
#    source_id = 
    # freeform_tags            = var.adb_freeform_tags
  lifecycle {
    ignore_changes = [
      db_tools_details,
    ]
  }
}

resource "random_string" "wallet_password" {
  length  = 16
  special = true
}

#resource "oci_database_autonomous_database_wallet" "Bgl_ATP_database_wallet" {
 # autonomous_database_id = oci_database_autonomous_database.adb.id
 # password               = var.adb_admin_password#random_string.wallet_password.result
#}

#resource "local_file" "ATP_database_wallet_file" {
#  content  = oci_database_autonomous_database_wallet.Bgl_ATP_database_wallet.content
#  filename = "${path.module}/DBwallet/${var.adb_db_name}_wallet.zip"
#}
