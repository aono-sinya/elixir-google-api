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

defmodule GoogleApi.AndroidManagement.V1.Model.Display do
  @moduledoc """
  Device display information.

  ## Attributes

  - density (integer()): Display density expressed as dots-per-inch. Defaults to: `null`.
  - displayId (integer()): Unique display id. Defaults to: `null`.
  - height (integer()): Display height in pixels. Defaults to: `null`.
  - name (String.t): Name of the display. Defaults to: `null`.
  - refreshRate (integer()): Refresh rate of the display in frames per second. Defaults to: `null`.
  - state (String.t): State of the display. Defaults to: `null`.
    - Enum - one of [DISPLAY_STATE_UNSPECIFIED, OFF, ON, DOZE, SUSPENDED]
  - width (integer()): Display width in pixels. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :density => any(),
          :displayId => any(),
          :height => any(),
          :name => any(),
          :refreshRate => any(),
          :state => any(),
          :width => any()
        }

  field(:density)
  field(:displayId)
  field(:height)
  field(:name)
  field(:refreshRate)
  field(:state)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.Display do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.Display.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.Display do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
