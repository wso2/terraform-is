# ----------------------------------------------------------------------------
#
# Copyright (c) 2020, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
#
# WSO2 Inc. licenses this file to you under the Apache License,
# Version 2.0 (the "License"); you may not use this file except
# in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#
# ----------------------------------------------------------------------------

# Define variables.
variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

variable "product" {
  default = "identity-server"
}

variable "product_name" {
  default = "wso2is"
}

variable "route_table_name" {
  default = "dmz-route-table"
}

variable "resource_group_name" {
  default = "WSO2-installers"
}

variable "location" {
  default = "East US"
}

variable "virtual_network_name" {
  default = "wso2network"
}

variable "virtual_network_address_space" {
  default = ["10.0.0.0/16"]
}

variable "subnet_address_space_mapping" {
  type = "map"
  default = {
    public_prefix_01 = "10.0.0.0/24"
    public_prefix_02 = "10.0.1.0/24"
  }
}

variable "db_server_version" {
  default = "5.7"
}

variable "loadbalancer_name" {
  default = "islb"
}

variable "instance_size" {
  //  default = "Standard_D2s_v3"
  default = "Standard_DS1_v2"
}

variable "instance_disksize" {
  default = "30"
}

variable "baseimage" {
  default = "<AZURE-BASE-IMAGE>"
}

variable "admin_username" {
  default = "centos"
}

variable "admin_password" {
  default = "Password1234!"
}

variable "db_admin_password" {
  default = "H@Sh1CoR3!"
}
