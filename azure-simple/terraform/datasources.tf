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

data "template_file" "bastion_tempalte_script" {
  template = file("scripts/database-template.sh.tpl")

  vars = {
    db_admin_password     = var.db_admin_password
    db_connection_strings = azurerm_mysql_server.wso2_mysql_instance.fqdn
  }

}

data "template_file" "compute_template_script" {
  template = file("cloudinit/compute-template.yaml.tpl")

  vars = {
    db_connection_strings = azurerm_mysql_server.wso2_mysql_instance.fqdn
    storage_access_key    = azurerm_storage_account.wso2_storage_account.primary_access_key
  }
}
