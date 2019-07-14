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

defmodule GoogleApi.DFAReporting.V28.Model.DirectorySiteContact do
  @moduledoc """
  Contains properties of a Site Directory contact.

  ## Attributes

  - address (String.t): Address of this directory site contact. Defaults to: `null`.
  - email (String.t): Email address of this directory site contact. Defaults to: `null`.
  - firstName (String.t): First name of this directory site contact. Defaults to: `null`.
  - id (String.t): ID of this directory site contact. This is a read-only, auto-generated field. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#directorySiteContact\&quot;. Defaults to: `null`.
  - lastName (String.t): Last name of this directory site contact. Defaults to: `null`.
  - phone (String.t): Phone number of this directory site contact. Defaults to: `null`.
  - role (String.t): Directory site contact role. Defaults to: `null`.
    - Enum - one of [ADMIN, EDIT, VIEW]
  - title (String.t): Title or designation of this directory site contact. Defaults to: `null`.
  - type (String.t): Directory site contact type. Defaults to: `null`.
    - Enum - one of [BILLING, OTHER, SALES, TECHNICAL]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => any(),
          :email => any(),
          :firstName => any(),
          :id => any(),
          :kind => any(),
          :lastName => any(),
          :phone => any(),
          :role => any(),
          :title => any(),
          :type => any()
        }

  field(:address)
  field(:email)
  field(:firstName)
  field(:id)
  field(:kind)
  field(:lastName)
  field(:phone)
  field(:role)
  field(:title)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.DirectorySiteContact do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.DirectorySiteContact.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.DirectorySiteContact do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end