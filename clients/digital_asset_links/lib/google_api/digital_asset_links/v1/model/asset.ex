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

defmodule GoogleApi.DigitalAssetLinks.V1.Model.Asset do
  @moduledoc """
  Uniquely identifies an asset.  A digital asset is an identifiable and addressable online entity that typically provides some service or content.  Examples of assets are websites, Android apps, Twitter feeds, and Plus Pages.

  ## Attributes

  - androidApp (AndroidAppAsset): Set if this is an Android App asset. Defaults to: `null`.
  - web (WebAsset): Set if this is a web asset. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidApp => GoogleApi.DigitalAssetLinks.V1.Model.AndroidAppAsset.t(),
          :web => GoogleApi.DigitalAssetLinks.V1.Model.WebAsset.t()
        }

  field(:androidApp, as: GoogleApi.DigitalAssetLinks.V1.Model.AndroidAppAsset)
  field(:web, as: GoogleApi.DigitalAssetLinks.V1.Model.WebAsset)
end

defimpl Poison.Decoder, for: GoogleApi.DigitalAssetLinks.V1.Model.Asset do
  def decode(value, options) do
    GoogleApi.DigitalAssetLinks.V1.Model.Asset.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DigitalAssetLinks.V1.Model.Asset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end