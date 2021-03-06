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

defmodule GoogleApi.Plus.V1.Model.ActivityObjectAttachments do
  @moduledoc """


  ## Attributes

  - content (String.t): If the attachment is an article, this property contains a snippet of text from the article. It can also include descriptions for other types. Defaults to: `null`.
  - displayName (String.t): The title of the attachment, such as a photo caption or an article title. Defaults to: `null`.
  - embed (ActivityObjectEmbed):  Defaults to: `null`.
  - fullImage (ActivityObjectFullImage):  Defaults to: `null`.
  - id (String.t): The ID of the attachment. Defaults to: `null`.
  - image (ActivityObjectImage):  Defaults to: `null`.
  - objectType (String.t): The type of media object. Possible values include, but are not limited to, the following values:   - \&quot;photo\&quot; - A photo.  - \&quot;album\&quot; - A photo album.  - \&quot;video\&quot; - A video.  - \&quot;article\&quot; - An article, specified by a link. Defaults to: `null`.
  - thumbnails ([ActivityObjectThumbnails]): If the attachment is an album, this property is a list of potential additional thumbnails from the album. Defaults to: `null`.
  - url (String.t): The link to the attachment, which should be of type text/html. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => any(),
          :displayName => any(),
          :embed => GoogleApi.Plus.V1.Model.ActivityObjectEmbed.t(),
          :fullImage => GoogleApi.Plus.V1.Model.ActivityObjectFullImage.t(),
          :id => any(),
          :image => GoogleApi.Plus.V1.Model.ActivityObjectImage.t(),
          :objectType => any(),
          :thumbnails => list(GoogleApi.Plus.V1.Model.ActivityObjectThumbnails.t()),
          :url => any()
        }

  field(:content)
  field(:displayName)
  field(:embed, as: GoogleApi.Plus.V1.Model.ActivityObjectEmbed)
  field(:fullImage, as: GoogleApi.Plus.V1.Model.ActivityObjectFullImage)
  field(:id)
  field(:image, as: GoogleApi.Plus.V1.Model.ActivityObjectImage)
  field(:objectType)
  field(:thumbnails, as: GoogleApi.Plus.V1.Model.ActivityObjectThumbnails, type: :list)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.Plus.V1.Model.ActivityObjectAttachments do
  def decode(value, options) do
    GoogleApi.Plus.V1.Model.ActivityObjectAttachments.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Plus.V1.Model.ActivityObjectAttachments do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
