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

defmodule GoogleApi.Slides.V1.Model.BatchUpdatePresentationRequest do
  @moduledoc """
  Request message for PresentationsService.BatchUpdatePresentation.

  ## Attributes

  - requests ([Request]): A list of updates to apply to the presentation. Defaults to: `null`.
  - writeControl (WriteControl): Provides control over how write requests are executed. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :requests => list(GoogleApi.Slides.V1.Model.Request.t()),
          :writeControl => GoogleApi.Slides.V1.Model.WriteControl.t()
        }

  field(:requests, as: GoogleApi.Slides.V1.Model.Request, type: :list)
  field(:writeControl, as: GoogleApi.Slides.V1.Model.WriteControl)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.BatchUpdatePresentationRequest do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.BatchUpdatePresentationRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.BatchUpdatePresentationRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
