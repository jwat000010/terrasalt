#   Copyright 2018 BigBitBus Inc. http://bigbitbus.com
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
variable "DO_PAT" {
  type        = "string"
  description = "Digital Ocean API token"
}


variable "region" {
  type        = "string"
  description = "Region to spin up infrastructure in"
}

variable "ssh_fingerprint" {
  type        = "string"
  description = "SSH Fingerprint of pub_key file"
}

variable "instance_type" {
  type = "string"
  description = "The size of the instance"
}

variable "image" {
  type        = "string"
  description = "The OS image to use"
}

variable "ssh_user" {
  type        = "string"
  description = "Username ssh connections"
}

variable "pvt_key" {
  type        = "string"
  description = "The ssh private key used in connections"
}

variable "salt_master" {
  type = "string"
  description = "FQDN or IP address of the salt master"
}

variable "platformgrain" {
  type = "string"
  description = "Example of a grain being set in the newly created minion host"
}