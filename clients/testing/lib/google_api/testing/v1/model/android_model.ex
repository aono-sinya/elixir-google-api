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

defmodule GoogleApi.Testing.V1.Model.AndroidModel do
  @moduledoc """
  A description of an Android device tests may be run on.

  ## Attributes

  - tags ([String.t]): Tags for this dimension. Examples: \&quot;default\&quot;, \&quot;preview\&quot;, \&quot;deprecated\&quot; Defaults to: `null`.
  - brand (String.t): The company that this device is branded with. Example: \&quot;Google\&quot;, \&quot;Samsung\&quot; @OutputOnly Defaults to: `null`.
  - codename (String.t): The name of the industrial design. This corresponds to android.os.Build.DEVICE @OutputOnly Defaults to: `null`.
  - form (String.t): Whether this device is virtual or physical. @OutputOnly Defaults to: `null`.
    - Enum - one of [DEVICE_FORM_UNSPECIFIED, VIRTUAL, PHYSICAL]
  - formFactor (String.t): Whether this device is a phone, tablet, wearable, etc. @OutputOnly Defaults to: `null`.
    - Enum - one of [DEVICE_FORM_FACTOR_UNSPECIFIED, PHONE, TABLET, WEARABLE]
  - id (String.t): The unique opaque id for this model. Use this for invoking the TestExecutionService. @OutputOnly Defaults to: `null`.
  - lowFpsVideoRecording (boolean()): True if and only if tests with this model are recorded by stitching together screenshots. See use_low_spec_video_recording in device config. @OutputOnly Defaults to: `null`.
  - manufacturer (String.t): The manufacturer of this device. @OutputOnly Defaults to: `null`.
  - name (String.t): The human-readable marketing name for this device model. Examples: \&quot;Nexus 5\&quot;, \&quot;Galaxy S5\&quot; @OutputOnly Defaults to: `null`.
  - screenDensity (integer()): Screen density in DPI. This corresponds to ro.sf.lcd_density @OutputOnly Defaults to: `null`.
  - screenX (integer()): Screen size in the horizontal (X) dimension measured in pixels. @OutputOnly Defaults to: `null`.
  - screenY (integer()): Screen size in the vertical (Y) dimension measured in pixels. @OutputOnly Defaults to: `null`.
  - supportedAbis ([String.t]): The list of supported ABIs for this device. This corresponds to either android.os.Build.SUPPORTED_ABIS (for API level 21 and above) or android.os.Build.CPU_ABI/CPU_ABI2. The most preferred ABI is the first element in the list.  Elements are optionally prefixed by \&quot;version_id:\&quot; (where version_id is the id of an AndroidVersion), denoting an ABI that is supported only on a particular version. @OutputOnly Defaults to: `null`.
  - supportedVersionIds ([String.t]): The set of Android versions this device supports. @OutputOnly Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tags => list(any()),
          :brand => any(),
          :codename => any(),
          :form => any(),
          :formFactor => any(),
          :id => any(),
          :lowFpsVideoRecording => any(),
          :manufacturer => any(),
          :name => any(),
          :screenDensity => any(),
          :screenX => any(),
          :screenY => any(),
          :supportedAbis => list(any()),
          :supportedVersionIds => list(any())
        }

  field(:tags, type: :list)
  field(:brand)
  field(:codename)
  field(:form)
  field(:formFactor)
  field(:id)
  field(:lowFpsVideoRecording)
  field(:manufacturer)
  field(:name)
  field(:screenDensity)
  field(:screenX)
  field(:screenY)
  field(:supportedAbis, type: :list)
  field(:supportedVersionIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.AndroidModel do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.AndroidModel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.AndroidModel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
