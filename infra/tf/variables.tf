# # # # # # # # # # # # # 
# Cluster Configuration # 
# # # # # # # # # # # # # 

# The name of the cluster
variable "cluster_name" {
    type    = string
    default = "llm_boilerplate"
    description = "The name of the cluster to create"
}

# the GPU node instance to use for the cluster
variable "cluster_node_size" {
    type    = string
    # default = "g4g.40.kube.small"  # A100 40gb
    # default = "g4g.kube.small" # A100 80gb
    default = "an.g1.l40s.x1"  # L40s 46gb
    description = "The size of the GPU node required for the cluster"
}

# the number of nodes to provision in the cluster
variable "cluster_node_count" {
  type        = number
  default     = "1"
  description = "The number of nodes to provision in the cluster"

}

# # # # # # # # # # # 
# Civo configuration # 
# # # # # # # # # # # 

# The Civo API token, this is set in terraform.tfvars
variable "civo_token" {}

# The Civo Region to deploy the cluster in
variable "region" {
  type        = string
  default     = "LON1"
  description = "The region to provision the cluster against"
}


# # # # # # # # # # # # # # # # # # 
# LLM Boilerplate deployment flags # 
# # # # # # # # # # # # # # # # # # 

# Deploy the Ollama Helm chart
variable "deploy_ollama" {
  description = "Deploy the Ollama inference server."
  type        = bool
  default     = true
}

# Deploy the Ollama UI
variable "deploy_ollama_ui" {
  description = "Deploy the Ollama Web UI."
  type        = bool
  default     = true
}

# deploy the example application 
variable "deploy_app" {
  description = "Deploy the example application."
  type        = bool
  default     = true
}

# deploy the Nvidia Device plugin to enable GPU Support
variable "deploy_nv_device_plugin_ds" {
  description = "Deploy the Nvidia GPU Device Plugin for enabling GPU support."
  type        = bool
  default     = true
}