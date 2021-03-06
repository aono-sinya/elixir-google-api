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

defmodule GoogleApi.Blogger.V3.Model.PostUserInfosList do
  @moduledoc """


  ## Attributes

  - items ([PostUserInfo]): The list of Posts with User information for the post, for this Blog. Defaults to: `null`.
  - kind (String.t): The kind of this entity. Always blogger#postList Defaults to: `null`.
  - nextPageToken (String.t): Pagination token to fetch the next page, if one exists. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.Blogger.V3.Model.PostUserInfo.t()),
          :kind => any(),
          :nextPageToken => any()
        }

  field(:items, as: GoogleApi.Blogger.V3.Model.PostUserInfo, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.PostUserInfosList do
  def decode(value, options) do
    GoogleApi.Blogger.V3.Model.PostUserInfosList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.PostUserInfosList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
