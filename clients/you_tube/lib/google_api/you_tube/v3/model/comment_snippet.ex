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

defmodule GoogleApi.YouTube.V3.Model.CommentSnippet do
  @moduledoc """
  Basic details about a comment, such as its author and text.

  ## Attributes

  - authorChannelId (String.t): The id of the author&#39;s YouTube channel, if any. Defaults to: `null`.
  - authorChannelUrl (String.t): Link to the author&#39;s YouTube channel, if any. Defaults to: `null`.
  - authorDisplayName (String.t): The name of the user who posted the comment. Defaults to: `null`.
  - authorProfileImageUrl (String.t): The URL for the avatar of the user who posted the comment. Defaults to: `null`.
  - canRate (boolean()): Whether the current viewer can rate this comment. Defaults to: `null`.
  - channelId (String.t): The id of the corresponding YouTube channel. In case of a channel comment this is the channel the comment refers to. In case of a video comment it&#39;s the video&#39;s channel. Defaults to: `null`.
  - likeCount (integer()): The total number of likes this comment has received. Defaults to: `null`.
  - moderationStatus (String.t): The comment&#39;s moderation status. Will not be set if the comments were requested through the id filter. Defaults to: `null`.
    - Enum - one of [heldForReview, likelySpam, published, rejected]
  - parentId (String.t): The unique id of the parent comment, only set for replies. Defaults to: `null`.
  - publishedAt (DateTime.t): The date and time when the comment was orignally published. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. Defaults to: `null`.
  - textDisplay (String.t): The comment&#39;s text. The format is either plain text or HTML dependent on what has been requested. Even the plain text representation may differ from the text originally posted in that it may replace video links with video titles etc. Defaults to: `null`.
  - textOriginal (String.t): The comment&#39;s original raw text as initially posted or last updated. The original text will only be returned if it is accessible to the viewer, which is only guaranteed if the viewer is the comment&#39;s author. Defaults to: `null`.
  - updatedAt (DateTime.t): The date and time when was last updated . The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. Defaults to: `null`.
  - videoId (String.t): The ID of the video the comment refers to, if any. Defaults to: `null`.
  - viewerRating (String.t): The rating the viewer has given to this comment. For the time being this will never return RATE_TYPE_DISLIKE and instead return RATE_TYPE_NONE. This may change in the future. Defaults to: `null`.
    - Enum - one of [dislike, like, none, unspecified]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorChannelId => any(),
          :authorChannelUrl => any(),
          :authorDisplayName => any(),
          :authorProfileImageUrl => any(),
          :canRate => any(),
          :channelId => any(),
          :likeCount => any(),
          :moderationStatus => any(),
          :parentId => any(),
          :publishedAt => DateTime.t(),
          :textDisplay => any(),
          :textOriginal => any(),
          :updatedAt => DateTime.t(),
          :videoId => any(),
          :viewerRating => any()
        }

  field(:authorChannelId)
  field(:authorChannelUrl)
  field(:authorDisplayName)
  field(:authorProfileImageUrl)
  field(:canRate)
  field(:channelId)
  field(:likeCount)
  field(:moderationStatus)
  field(:parentId)
  field(:publishedAt, as: DateTime)
  field(:textDisplay)
  field(:textOriginal)
  field(:updatedAt, as: DateTime)
  field(:videoId)
  field(:viewerRating)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.CommentSnippet do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.CommentSnippet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.CommentSnippet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
