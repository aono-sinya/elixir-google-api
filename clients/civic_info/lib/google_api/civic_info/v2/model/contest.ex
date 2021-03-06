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

defmodule GoogleApi.CivicInfo.V2.Model.Contest do
  @moduledoc """
  Information about a contest that appears on a voter&#39;s ballot.

  ## Attributes

  - ballotPlacement (String.t): A number specifying the position of this contest on the voter&#39;s ballot. Defaults to: `null`.
  - ballotTitle (String.t): The official title on the ballot for this contest, only where available. Defaults to: `null`.
  - candidates ([Candidate]): The candidate choices for this contest. Defaults to: `null`.
  - district (ElectoralDistrict): Information about the electoral district that this contest is in. Defaults to: `null`.
  - electorateSpecifications (String.t): A description of any additional eligibility requirements for voting in this contest. Defaults to: `null`.
  - id (String.t): An ID for this object. IDs may change in future requests and should not be cached. Access to this field requires special access that can be requested from the Request more link on the Quotas page. Defaults to: `null`.
  - level ([String.t]): The levels of government of the office for this contest. There may be more than one in cases where a jurisdiction effectively acts at two different levels of government; for example, the mayor of the District of Columbia acts at \&quot;locality\&quot; level, but also effectively at both \&quot;administrative-area-2\&quot; and \&quot;administrative-area-1\&quot;. Defaults to: `null`.
  - numberElected (String.t): The number of candidates that will be elected to office in this contest. Defaults to: `null`.
  - numberVotingFor (String.t): The number of candidates that a voter may vote for in this contest. Defaults to: `null`.
  - office (String.t): The name of the office for this contest. Defaults to: `null`.
  - primaryParty (String.t): If this is a partisan election, the name of the party it is for. Defaults to: `null`.
  - referendumBallotResponses ([String.t]): The set of ballot responses for the referendum. A ballot response represents a line on the ballot. Common examples might include \&quot;yes\&quot; or \&quot;no\&quot; for referenda. This field is only populated for contests of type &#39;Referendum&#39;. Defaults to: `null`.
  - referendumBrief (String.t): Specifies a short summary of the referendum that is typically on the ballot below the title but above the text. This field is only populated for contests of type &#39;Referendum&#39;. Defaults to: `null`.
  - referendumConStatement (String.t): A statement in opposition to the referendum. It does not necessarily appear on the ballot. This field is only populated for contests of type &#39;Referendum&#39;. Defaults to: `null`.
  - referendumEffectOfAbstain (String.t): Specifies what effect abstaining (not voting) on the proposition will have (i.e. whether abstaining is considered a vote against it). This field is only populated for contests of type &#39;Referendum&#39;. Defaults to: `null`.
  - referendumPassageThreshold (String.t): The threshold of votes that the referendum needs in order to pass, e.g. \&quot;two-thirds\&quot;. This field is only populated for contests of type &#39;Referendum&#39;. Defaults to: `null`.
  - referendumProStatement (String.t): A statement in favor of the referendum. It does not necessarily appear on the ballot. This field is only populated for contests of type &#39;Referendum&#39;. Defaults to: `null`.
  - referendumSubtitle (String.t): A brief description of the referendum. This field is only populated for contests of type &#39;Referendum&#39;. Defaults to: `null`.
  - referendumText (String.t): The full text of the referendum. This field is only populated for contests of type &#39;Referendum&#39;. Defaults to: `null`.
  - referendumTitle (String.t): The title of the referendum (e.g. &#39;Proposition 42&#39;). This field is only populated for contests of type &#39;Referendum&#39;. Defaults to: `null`.
  - referendumUrl (String.t): A link to the referendum. This field is only populated for contests of type &#39;Referendum&#39;. Defaults to: `null`.
  - roles ([String.t]): The roles which this office fulfills. Defaults to: `null`.
  - sources ([Source]): A list of sources for this contest. If multiple sources are listed, the data has been aggregated from those sources. Defaults to: `null`.
  - special (String.t): \&quot;Yes\&quot; or \&quot;No\&quot; depending on whether this a contest being held outside the normal election cycle. Defaults to: `null`.
  - type (String.t): The type of contest. Usually this will be &#39;General&#39;, &#39;Primary&#39;, or &#39;Run-off&#39; for contests with candidates. For referenda this will be &#39;Referendum&#39;. For Retention contests this will typically be &#39;Retention&#39;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ballotPlacement => any(),
          :ballotTitle => any(),
          :candidates => list(GoogleApi.CivicInfo.V2.Model.Candidate.t()),
          :district => GoogleApi.CivicInfo.V2.Model.ElectoralDistrict.t(),
          :electorateSpecifications => any(),
          :id => any(),
          :level => list(any()),
          :numberElected => any(),
          :numberVotingFor => any(),
          :office => any(),
          :primaryParty => any(),
          :referendumBallotResponses => list(any()),
          :referendumBrief => any(),
          :referendumConStatement => any(),
          :referendumEffectOfAbstain => any(),
          :referendumPassageThreshold => any(),
          :referendumProStatement => any(),
          :referendumSubtitle => any(),
          :referendumText => any(),
          :referendumTitle => any(),
          :referendumUrl => any(),
          :roles => list(any()),
          :sources => list(GoogleApi.CivicInfo.V2.Model.Source.t()),
          :special => any(),
          :type => any()
        }

  field(:ballotPlacement)
  field(:ballotTitle)
  field(:candidates, as: GoogleApi.CivicInfo.V2.Model.Candidate, type: :list)
  field(:district, as: GoogleApi.CivicInfo.V2.Model.ElectoralDistrict)
  field(:electorateSpecifications)
  field(:id)
  field(:level, type: :list)
  field(:numberElected)
  field(:numberVotingFor)
  field(:office)
  field(:primaryParty)
  field(:referendumBallotResponses, type: :list)
  field(:referendumBrief)
  field(:referendumConStatement)
  field(:referendumEffectOfAbstain)
  field(:referendumPassageThreshold)
  field(:referendumProStatement)
  field(:referendumSubtitle)
  field(:referendumText)
  field(:referendumTitle)
  field(:referendumUrl)
  field(:roles, type: :list)
  field(:sources, as: GoogleApi.CivicInfo.V2.Model.Source, type: :list)
  field(:special)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.Contest do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.Contest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.Contest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
