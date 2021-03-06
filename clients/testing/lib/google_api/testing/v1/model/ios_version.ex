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

defmodule GoogleApi.Testing.V1.Model.IosVersion do
  @moduledoc """
  An iOS version

  ## Attributes

  - tags ([String.t]): Output only. Tags for this dimension. Examples: \&quot;default\&quot;, \&quot;preview\&quot;, \&quot;deprecated\&quot; Defaults to: `null`.
  - id (String.t): Output only. An opaque id for this iOS version. Use this id to invoke the TestExecutionService. Defaults to: `null`.
  - majorVersion (integer()): Output only. An integer representing the major iOS version. Examples: \&quot;8\&quot;, \&quot;9\&quot; Defaults to: `null`.
  - minorVersion (integer()): Output only. An integer representing the minor iOS version. Examples: \&quot;1\&quot;, \&quot;2\&quot; Defaults to: `null`.
  - supportedXcodeVersionIds ([String.t]): Output only. The available Xcode versions for this version. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tags => list(any()),
          :id => any(),
          :majorVersion => any(),
          :minorVersion => any(),
          :supportedXcodeVersionIds => list(any())
        }

  field(:tags, type: :list)
  field(:id)
  field(:majorVersion)
  field(:minorVersion)
  field(:supportedXcodeVersionIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.IosVersion do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.IosVersion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.IosVersion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
