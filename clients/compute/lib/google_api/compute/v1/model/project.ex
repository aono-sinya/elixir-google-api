# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.Project do
  @moduledoc """
  A Project resource. For an overview of projects, see  Cloud Platform Resource Hierarchy. (&#x3D;&#x3D; resource_for v1.projects &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for beta.projects &#x3D;&#x3D;)

  ## Attributes

  - commonInstanceMetadata (Metadata): Metadata key/value pairs available to all instances contained in this project. See Custom metadata for more information. Defaults to: `null`.
  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - defaultNetworkTier (String.t): This signifies the default network tier used for configuring resources of the project and can only take the following values: PREMIUM, STANDARD. Initially the default network tier is PREMIUM. Defaults to: `null`.
    - Enum - one of [PREMIUM, STANDARD]
  - defaultServiceAccount (String.t): [Output Only] Default service account used by VMs running in this project. Defaults to: `null`.
  - description (String.t): An optional textual description of the resource. Defaults to: `null`.
  - enabledFeatures ([String.t]): Restricted features enabled for use on this project. Defaults to: `null`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. This is not the project ID, and is just a unique ID used by Compute Engine to identify resources. Defaults to: `null`.
  - kind (String.t): [Output Only] Type of the resource. Always compute#project for projects. Defaults to: `null`.
  - name (String.t): The project ID. For example: my-example-project. Use the project ID to make requests to Compute Engine. Defaults to: `null`.
  - quotas ([Quota]): [Output Only] Quotas assigned to this project. Defaults to: `null`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to: `null`.
  - usageExportLocation (UsageExportLocation): The naming prefix for daily usage reports and the Google Cloud Storage bucket where they are stored. Defaults to: `null`.
  - xpnProjectStatus (String.t): [Output Only] The role this project has in a shared VPC configuration. Currently only HOST projects are differentiated. Defaults to: `null`.
    - Enum - one of [HOST, UNSPECIFIED_XPN_PROJECT_STATUS]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commonInstanceMetadata => GoogleApi.Compute.V1.Model.Metadata.t(),
          :creationTimestamp => any(),
          :defaultNetworkTier => any(),
          :defaultServiceAccount => any(),
          :description => any(),
          :enabledFeatures => list(any()),
          :id => any(),
          :kind => any(),
          :name => any(),
          :quotas => list(GoogleApi.Compute.V1.Model.Quota.t()),
          :selfLink => any(),
          :usageExportLocation => GoogleApi.Compute.V1.Model.UsageExportLocation.t(),
          :xpnProjectStatus => any()
        }

  field(:commonInstanceMetadata, as: GoogleApi.Compute.V1.Model.Metadata)
  field(:creationTimestamp)
  field(:defaultNetworkTier)
  field(:defaultServiceAccount)
  field(:description)
  field(:enabledFeatures, type: :list)
  field(:id)
  field(:kind)
  field(:name)
  field(:quotas, as: GoogleApi.Compute.V1.Model.Quota, type: :list)
  field(:selfLink)
  field(:usageExportLocation, as: GoogleApi.Compute.V1.Model.UsageExportLocation)
  field(:xpnProjectStatus)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Project do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Project.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Project do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
