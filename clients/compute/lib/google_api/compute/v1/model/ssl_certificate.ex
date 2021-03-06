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

defmodule GoogleApi.Compute.V1.Model.SslCertificate do
  @moduledoc """
  An SslCertificate resource. This resource provides a mechanism to upload an SSL key and certificate to the load balancer to serve secure connections from the user. (&#x3D;&#x3D; resource_for beta.sslCertificates &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for v1.sslCertificates &#x3D;&#x3D;)

  ## Attributes

  - certificate (String.t): A local certificate file. The certificate must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert. Defaults to: `null`.
  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to: `null`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to: `null`.
  - kind (String.t): [Output Only] Type of the resource. Always compute#sslCertificate for SSL certificates. Defaults to: `null`.
  - name (String.t): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression &#x60;[a-z]([-a-z0-9]*[a-z0-9])?&#x60; which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to: `null`.
  - privateKey (String.t): A write-only private key in PEM format. Only insert requests will include this field. Defaults to: `null`.
  - selfLink (String.t): [Output only] Server-defined URL for the resource. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certificate => any(),
          :creationTimestamp => any(),
          :description => any(),
          :id => any(),
          :kind => any(),
          :name => any(),
          :privateKey => any(),
          :selfLink => any()
        }

  field(:certificate)
  field(:creationTimestamp)
  field(:description)
  field(:id)
  field(:kind)
  field(:name)
  field(:privateKey)
  field(:selfLink)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.SslCertificate do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SslCertificate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.SslCertificate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
