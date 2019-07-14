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

defmodule GoogleApi.ServiceBroker.V1.Model.GoogleTypeExpr do
  @moduledoc """
  Represents an expression text. Example:      title: \&quot;User account presence\&quot;     description: \&quot;Determines whether the request has a user account\&quot;     expression: \&quot;size(request.user) &gt; 0\&quot;

  ## Attributes

  - description (String.t): An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. Defaults to: `null`.
  - expression (String.t): Textual representation of an expression in Common Expression Language syntax.  The application context of the containing message determines which well-known feature set of CEL is supported. Defaults to: `null`.
  - location (String.t): An optional string indicating the location of the expression for error reporting, e.g. a file name and a position in the file. Defaults to: `null`.
  - title (String.t): An optional title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => any(),
          :expression => any(),
          :location => any(),
          :title => any()
        }

  field(:description)
  field(:expression)
  field(:location)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceBroker.V1.Model.GoogleTypeExpr do
  def decode(value, options) do
    GoogleApi.ServiceBroker.V1.Model.GoogleTypeExpr.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceBroker.V1.Model.GoogleTypeExpr do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end