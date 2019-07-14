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

defmodule GoogleApi.DFAReporting.V28.Api.PlacementGroups do
  @moduledoc """
  API calls for all endpoints tagged `PlacementGroups`.
  """

  alias GoogleApi.DFAReporting.V28.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets one placement group by ID.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String.t): User profile ID associated with this request.
  - id (String.t): Placement group ID.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.PlacementGroup{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_placement_groups_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V28.Model.PlacementGroup.t()} | {:error, Tesla.Env.t()}
  def dfareporting_placement_groups_get(
        connection,
        profile_id,
        id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/dfareporting/v2.8/userprofiles/{profileId}/placementGroups/{id}", %{
        "profileId" => URI.encode_www_form(profile_id),
        "id" => URI.encode_www_form(id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V28.Model.PlacementGroup{}])
  end

  @doc """
  Inserts a new placement group.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String.t): User profile ID associated with this request.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (PlacementGroup): 

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.PlacementGroup{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_placement_groups_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V28.Model.PlacementGroup.t()} | {:error, Tesla.Env.t()}
  def dfareporting_placement_groups_insert(
        connection,
        profile_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/dfareporting/v2.8/userprofiles/{profileId}/placementGroups", %{
        "profileId" => URI.encode_www_form(profile_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V28.Model.PlacementGroup{}])
  end

  @doc """
  Retrieves a list of placement groups, possibly filtered. This method supports paging.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String.t): User profile ID associated with this request.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :advertiserIds ([String.t]): Select only placement groups that belong to these advertisers.
    - :archived (boolean()): Select only archived placements. Don&#39;t set this field to select both archived and non-archived placements.
    - :campaignIds ([String.t]): Select only placement groups that belong to these campaigns.
    - :contentCategoryIds ([String.t]): Select only placement groups that are associated with these content categories.
    - :directorySiteIds ([String.t]): Select only placement groups that are associated with these directory sites.
    - :ids ([String.t]): Select only placement groups with these IDs.
    - :maxEndDate (String.t): Select only placements or placement groups whose end date is on or before the specified maxEndDate. The date should be formatted as \&quot;yyyy-MM-dd\&quot;.
    - :maxResults (integer()): Maximum number of results to return.
    - :maxStartDate (String.t): Select only placements or placement groups whose start date is on or before the specified maxStartDate. The date should be formatted as \&quot;yyyy-MM-dd\&quot;.
    - :minEndDate (String.t): Select only placements or placement groups whose end date is on or after the specified minEndDate. The date should be formatted as \&quot;yyyy-MM-dd\&quot;.
    - :minStartDate (String.t): Select only placements or placement groups whose start date is on or after the specified minStartDate. The date should be formatted as \&quot;yyyy-MM-dd\&quot;.
    - :pageToken (String.t): Value of the nextPageToken from the previous result page.
    - :placementGroupType (String.t): Select only placement groups belonging with this group type. A package is a simple group of placements that acts as a single pricing point for a group of tags. A roadblock is a group of placements that not only acts as a single pricing point but also assumes that all the tags in it will be served at the same time. A roadblock requires one of its assigned placements to be marked as primary for reporting.
    - :placementStrategyIds ([String.t]): Select only placement groups that are associated with these placement strategies.
    - :pricingTypes ([String.t]): Select only placement groups with these pricing types.
    - :searchString (String.t): Allows searching for placement groups by name or ID. Wildcards (*) are allowed. For example, \&quot;placement*2015\&quot; will return placement groups with names like \&quot;placement group June 2015\&quot;, \&quot;placement group May 2015\&quot;, or simply \&quot;placements 2015\&quot;. Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \&quot;placementgroup\&quot; will match placement groups with name \&quot;my placementgroup\&quot;, \&quot;placementgroup 2015\&quot;, or simply \&quot;placementgroup\&quot;.
    - :siteIds ([String.t]): Select only placement groups that are associated with these sites.
    - :sortField (String.t): Field by which to sort the list.
    - :sortOrder (String.t): Order of sorted results.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.PlacementGroupsListResponse{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_placement_groups_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V28.Model.PlacementGroupsListResponse.t()}
          | {:error, Tesla.Env.t()}
  def dfareporting_placement_groups_list(
        connection,
        profile_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :advertiserIds => :query,
      :archived => :query,
      :campaignIds => :query,
      :contentCategoryIds => :query,
      :directorySiteIds => :query,
      :ids => :query,
      :maxEndDate => :query,
      :maxResults => :query,
      :maxStartDate => :query,
      :minEndDate => :query,
      :minStartDate => :query,
      :pageToken => :query,
      :placementGroupType => :query,
      :placementStrategyIds => :query,
      :pricingTypes => :query,
      :searchString => :query,
      :siteIds => :query,
      :sortField => :query,
      :sortOrder => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/dfareporting/v2.8/userprofiles/{profileId}/placementGroups", %{
        "profileId" => URI.encode_www_form(profile_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.DFAReporting.V28.Model.PlacementGroupsListResponse{}]
    )
  end

  @doc """
  Updates an existing placement group. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String.t): User profile ID associated with this request.
  - id (String.t): Placement group ID.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (PlacementGroup): 

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.PlacementGroup{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_placement_groups_patch(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V28.Model.PlacementGroup.t()} | {:error, Tesla.Env.t()}
  def dfareporting_placement_groups_patch(
        connection,
        profile_id,
        id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/dfareporting/v2.8/userprofiles/{profileId}/placementGroups", %{
        "profileId" => URI.encode_www_form(profile_id)
      })
      |> Request.add_param(:query, :id, id)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V28.Model.PlacementGroup{}])
  end

  @doc """
  Updates an existing placement group.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String.t): User profile ID associated with this request.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (PlacementGroup): 

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.PlacementGroup{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_placement_groups_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V28.Model.PlacementGroup.t()} | {:error, Tesla.Env.t()}
  def dfareporting_placement_groups_update(
        connection,
        profile_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/dfareporting/v2.8/userprofiles/{profileId}/placementGroups", %{
        "profileId" => URI.encode_www_form(profile_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V28.Model.PlacementGroup{}])
  end
end