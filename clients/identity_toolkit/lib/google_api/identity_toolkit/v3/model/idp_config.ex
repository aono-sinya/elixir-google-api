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

defmodule GoogleApi.IdentityToolkit.V3.Model.IdpConfig do
  @moduledoc """
  Template for a single idp configuration.

  ## Attributes

  - clientId (String.t): OAuth2 client ID. Defaults to: `null`.
  - enabled (boolean()): Whether this IDP is enabled. Defaults to: `null`.
  - experimentPercent (integer()): Percent of users who will be prompted/redirected federated login for this IDP. Defaults to: `null`.
  - provider (String.t): OAuth2 provider. Defaults to: `null`.
  - secret (String.t): OAuth2 client secret. Defaults to: `null`.
  - whitelistedAudiences ([String.t]): Whitelisted client IDs for audience check. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientId => any(),
          :enabled => any(),
          :experimentPercent => any(),
          :provider => any(),
          :secret => any(),
          :whitelistedAudiences => list(any())
        }

  field(:clientId)
  field(:enabled)
  field(:experimentPercent)
  field(:provider)
  field(:secret)
  field(:whitelistedAudiences, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.IdentityToolkit.V3.Model.IdpConfig do
  def decode(value, options) do
    GoogleApi.IdentityToolkit.V3.Model.IdpConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdentityToolkit.V3.Model.IdpConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
