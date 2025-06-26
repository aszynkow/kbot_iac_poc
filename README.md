# Getting Started with OCI KBOT 

This guide helps you install and use **KBOT Infrastructure** for the first time. You will:

1. Ensure you have the correct IAM policies in place.
2. Deploy a dedicated **KBOT INfrastructure** stack.
3. Clean up resources when you’re done.

---

## Step 1: Set Up Policies in Your Tenancy

1. If you are **not** a tenancy administrator, ask your admin to set up the required policies in the **root compartment** --> "allow <your_group> to manage all-resources in compartment <kbot_deployment_compartment>"
2. If you **are** a tenancy administrator, Resource Manager will typically deploy the minimal required policies automatically, but you can reference the same IAM policies as in #1 for advanced or custom configurations if needed.

---

## Step 2: Deploy the KBOT infrastructure

[![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://cloud.oracle.com/resourcemanager/stacks/create?region=home&zipUrl=https://github.com/aszynkow/kbot_iac/releases/download/v1.0.1/kbotiacv1.0.1.zip)

1. Click **Deploy to Oracle Cloud** above.
2. In **Create Stack**:
   - Give your stack a **name** (e.g., _oke-stack_).
   - Select the **compartment** where you want OCI AI Blueprints deployed.
   - Provide any additional parameters (such as node size, node count) according to your preferences.
3. Click **Next**, then **Create**, and finally choose **Run apply** to provision your cluster.
4. Monitor the progress in **Resource Manager → Stacks**. Once the status is **Succeeded**, you have a functional VCN and an OKE cluster ready to host OCI AI Blueprints.

## Cleanup

When you are finished, you can remove the resources you created in **two steps**, in this order:

1. **Destroy the OCI AI Blueprints Stack**

   - Go to **Resource Manager → Stacks** in the OCI Console.
   - Select the stack you used to install **OCI AI Blueprints** (from Step 3).
   - Choose **Terraform Actions → Destroy**, confirm, and wait until the job succeeds.

Following this order ensures you do not have leftover services or dependencies in your tenancy. Once both stacks are destroyed, your tenancy will be free of any OCI AI Blueprints-related resources.

---

## Need Help?

- For questions or additional support, contact [adam.szynkowski@oracle.com](mailto:adam.szynkowski@oracle.com).