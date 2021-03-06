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

defmodule GoogleApi.Content.V2.Model.OrderShipment do
  @moduledoc """


  ## Attributes

  - carrier (String.t): The carrier handling the shipment.  Acceptable values for US are:   - \&quot;gsx\&quot;  - \&quot;ups\&quot;  - \&quot;usps\&quot;  - \&quot;fedex\&quot;  - \&quot;dhl\&quot;  - \&quot;ecourier\&quot;  - \&quot;cxt\&quot;  - \&quot;google\&quot;  - \&quot;ontrac\&quot;  - \&quot;emsy\&quot;  - \&quot;ont\&quot;  - \&quot;deliv\&quot;  - \&quot;dynamex\&quot;  - \&quot;lasership\&quot;  - \&quot;mpx\&quot;  - \&quot;uds\&quot;    Acceptable values for FR are:   - \&quot;colissimo\&quot;  - \&quot;chronopost\&quot; Defaults to: `null`.
  - creationDate (String.t): Date on which the shipment has been created, in ISO 8601 format. Defaults to: `null`.
  - deliveryDate (String.t): Date on which the shipment has been delivered, in ISO 8601 format. Present only if status is delivered Defaults to: `null`.
  - id (String.t): The id of the shipment. Defaults to: `null`.
  - lineItems ([OrderShipmentLineItemShipment]): The line items that are shipped. Defaults to: `null`.
  - status (String.t): The status of the shipment. Defaults to: `null`.
  - trackingId (String.t): The tracking id for the shipment. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :carrier => any(),
          :creationDate => any(),
          :deliveryDate => any(),
          :id => any(),
          :lineItems => list(GoogleApi.Content.V2.Model.OrderShipmentLineItemShipment.t()),
          :status => any(),
          :trackingId => any()
        }

  field(:carrier)
  field(:creationDate)
  field(:deliveryDate)
  field(:id)
  field(:lineItems, as: GoogleApi.Content.V2.Model.OrderShipmentLineItemShipment, type: :list)
  field(:status)
  field(:trackingId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrderShipment do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrderShipment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrderShipment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
