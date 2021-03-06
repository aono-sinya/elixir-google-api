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

defmodule GoogleApi.Composer.V1beta1.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.Composer.V1beta1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Create a new environment.

  ## Parameters

  - connection (GoogleApi.Composer.V1beta1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;parent&#x60;. The parent must be of the form \&quot;projects/{projectId}/locations/{locationId}\&quot;.
  - locations_id (String.t): Part of &#x60;parent&#x60;. See documentation of &#x60;projectsId&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (Environment): 

  ## Returns

  {:ok, %GoogleApi.Composer.V1beta1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec composer_projects_locations_environments_create(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Composer.V1beta1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def composer_projects_locations_environments_create(
        connection,
        projects_id,
        locations_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1beta1/projects/{projectsId}/locations/{locationsId}/environments", %{
        "projectsId" => URI.encode_www_form(projects_id),
        "locationsId" => URI.encode_www_form(locations_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.Operation{}])
  end

  @doc """
  Delete an environment.

  ## Parameters

  - connection (GoogleApi.Composer.V1beta1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;name&#x60;. The environment to delete, in the form: \&quot;projects/{projectId}/locations/{locationId}/environments/{environmentId}\&quot;
  - locations_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - environments_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.Composer.V1beta1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec composer_projects_locations_environments_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Composer.V1beta1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def composer_projects_locations_environments_delete(
        connection,
        projects_id,
        locations_id,
        environments_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url(
        "/v1beta1/projects/{projectsId}/locations/{locationsId}/environments/{environmentsId}",
        %{
          "projectsId" => URI.encode_www_form(projects_id),
          "locationsId" => URI.encode_www_form(locations_id),
          "environmentsId" => URI.encode_www_form(environments_id)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.Operation{}])
  end

  @doc """
  Get an existing environment.

  ## Parameters

  - connection (GoogleApi.Composer.V1beta1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;name&#x60;. The resource name of the environment to get, in the form: \&quot;projects/{projectId}/locations/{locationId}/environments/{environmentId}\&quot;
  - locations_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - environments_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.Composer.V1beta1.Model.Environment{}} on success
  {:error, info} on failure
  """
  @spec composer_projects_locations_environments_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Composer.V1beta1.Model.Environment.t()} | {:error, Tesla.Env.t()}
  def composer_projects_locations_environments_get(
        connection,
        projects_id,
        locations_id,
        environments_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/v1beta1/projects/{projectsId}/locations/{locationsId}/environments/{environmentsId}",
        %{
          "projectsId" => URI.encode_www_form(projects_id),
          "locationsId" => URI.encode_www_form(locations_id),
          "environmentsId" => URI.encode_www_form(environments_id)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.Environment{}])
  end

  @doc """
  List environments.

  ## Parameters

  - connection (GoogleApi.Composer.V1beta1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;parent&#x60;. List environments in the given project and location, in the form: \&quot;projects/{projectId}/locations/{locationId}\&quot;
  - locations_id (String.t): Part of &#x60;parent&#x60;. See documentation of &#x60;projectsId&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :pageSize (integer()): The maximum number of environments to return.
    - :pageToken (String.t): The next_page_token value returned from a previous List request, if any.

  ## Returns

  {:ok, %GoogleApi.Composer.V1beta1.Model.ListEnvironmentsResponse{}} on success
  {:error, info} on failure
  """
  @spec composer_projects_locations_environments_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.Composer.V1beta1.Model.ListEnvironmentsResponse.t()}
          | {:error, Tesla.Env.t()}
  def composer_projects_locations_environments_list(
        connection,
        projects_id,
        locations_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1beta1/projects/{projectsId}/locations/{locationsId}/environments", %{
        "projectsId" => URI.encode_www_form(projects_id),
        "locationsId" => URI.encode_www_form(locations_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.ListEnvironmentsResponse{}]
    )
  end

  @doc """
  Update an environment.

  ## Parameters

  - connection (GoogleApi.Composer.V1beta1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;name&#x60;. The relative resource name of the environment to update, in the form: \&quot;projects/{projectId}/locations/{locationId}/environments/{environmentId}\&quot;
  - locations_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - environments_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :updateMask (String.t): Required. A comma-separated list of paths, relative to &#x60;Environment&#x60;, of fields to update. For example, to set the version of scikit-learn to install in the environment to 0.19.0 and to remove an existing installation of argparse, the &#x60;updateMask&#x60; parameter would include the following two &#x60;paths&#x60; values: \&quot;config.softwareConfig.pypiPackages.scikit-learn\&quot; and \&quot;config.softwareConfig.pypiPackages.argparse\&quot;. The included patch environment would specify the scikit-learn version as follows:      {       \&quot;config\&quot;:{         \&quot;softwareConfig\&quot;:{           \&quot;pypiPackages\&quot;:{             \&quot;scikit-learn\&quot;:\&quot;&#x3D;&#x3D;0.19.0\&quot;           }         }       }     }  Note that in the above example, any existing PyPI packages other than scikit-learn and argparse will be unaffected.  Only one update type may be included in a single request&#39;s &#x60;updateMask&#x60;. For example, one cannot update both the PyPI packages and labels in the same request. However, it is possible to update multiple members of a map field simultaneously in the same request. For example, to set the labels \&quot;label1\&quot; and \&quot;label2\&quot; while clearing \&quot;label3\&quot; (assuming it already exists), one can provide the paths \&quot;labels.label1\&quot;, \&quot;labels.label2\&quot;, and \&quot;labels.label3\&quot; and populate the patch environment as follows:      {       \&quot;labels\&quot;:{         \&quot;label1\&quot;:\&quot;new-label1-value\&quot;         \&quot;label2\&quot;:\&quot;new-label2-value\&quot;       }     }  Note that in the above example, any existing labels that are not included in the &#x60;updateMask&#x60; will be unaffected.  It is also possible to replace an entire map field by providing the map field&#39;s path in the &#x60;updateMask&#x60;. The new value of the field will be that which is provided in the patch environment. For example, to delete all pre-existing user-specified PyPI packages and install botocore at version 1.7.14, the &#x60;updateMask&#x60; would contain the path \&quot;config.softwareConfig.pypiPackages\&quot;, and the patch environment would be the following:      {       \&quot;config\&quot;:{         \&quot;softwareConfig\&quot;:{           \&quot;pypiPackages\&quot;:{             \&quot;botocore\&quot;:\&quot;&#x3D;&#x3D;1.7.14\&quot;           }         }       }     }  &lt;strong&gt;Note:&lt;/strong&gt; Only the following fields can be updated:   &lt;table&gt;  &lt;tbody&gt;  &lt;tr&gt;  &lt;td&gt;&lt;strong&gt;Mask&lt;/strong&gt;&lt;/td&gt;  &lt;td&gt;&lt;strong&gt;Purpose&lt;/strong&gt;&lt;/td&gt;  &lt;/tr&gt;  &lt;tr&gt;  &lt;td&gt;config.softwareConfig.pypiPackages  &lt;/td&gt;  &lt;td&gt;Replace all custom custom PyPI packages. If a replacement  package map is not included in &#x60;environment&#x60;, all custom  PyPI packages are cleared. It is an error to provide both this mask and a  mask specifying an individual package.&lt;/td&gt;  &lt;/tr&gt;  &lt;tr&gt;  &lt;td&gt;config.softwareConfig.pypiPackages.&lt;var&gt;packagename&lt;/var&gt;&lt;/td&gt;  &lt;td&gt;Update the custom PyPI package &lt;var&gt;packagename&lt;/var&gt;,  preserving other packages. To delete the package, include it in  &#x60;updateMask&#x60;, and omit the mapping for it in  &#x60;environment.config.softwareConfig.pypiPackages&#x60;. It is an error  to provide both a mask of this form and the  \&quot;config.softwareConfig.pypiPackages\&quot; mask.&lt;/td&gt;  &lt;/tr&gt;  &lt;tr&gt;  &lt;td&gt;labels&lt;/td&gt;  &lt;td&gt;Replace all environment labels. If a replacement labels map is not  included in &#x60;environment&#x60;, all labels are cleared. It is an error to  provide both this mask and a mask specifying one or more individual  labels.&lt;/td&gt;  &lt;/tr&gt;  &lt;tr&gt;  &lt;td&gt;labels.&lt;var&gt;labelName&lt;/var&gt;&lt;/td&gt;  &lt;td&gt;Set the label named &lt;var&gt;labelName&lt;/var&gt;, while preserving other  labels. To delete the label, include it in &#x60;updateMask&#x60; and omit its  mapping in &#x60;environment.labels&#x60;. It is an error to provide both a  mask of this form and the \&quot;labels\&quot; mask.&lt;/td&gt;  &lt;/tr&gt;  &lt;tr&gt;  &lt;td&gt;config.nodeCount&lt;/td&gt;  &lt;td&gt;Horizontally scale the number of nodes in the environment. An integer  greater than or equal to 3 must be provided in the &#x60;config.nodeCount&#x60; field.  &lt;/td&gt;  &lt;/tr&gt;  &lt;tr&gt;  &lt;td&gt;config.softwareConfig.airflowConfigOverrides&lt;/td&gt;  &lt;td&gt;Replace all Apache Airflow config overrides. If a replacement config  overrides map is not included in &#x60;environment&#x60;, all config overrides  are cleared.  It is an error to provide both this mask and a mask specifying one or  more individual config overrides.&lt;/td&gt;  &lt;/tr&gt;  &lt;tr&gt;  &lt;td&gt;config.softwareConfig.airflowConfigOverrides.&lt;var&gt;section&lt;/var&gt;-&lt;var&gt;name  &lt;/var&gt;&lt;/td&gt;  &lt;td&gt;Override the Apache Airflow config property &lt;var&gt;name&lt;/var&gt; in the  section named &lt;var&gt;section&lt;/var&gt;, preserving other properties. To delete  the property override, include it in &#x60;updateMask&#x60; and omit its mapping  in &#x60;environment.config.softwareConfig.airflowConfigOverrides&#x60;.  It is an error to provide both a mask of this form and the  \&quot;config.softwareConfig.airflowConfigOverrides\&quot; mask.&lt;/td&gt;  &lt;/tr&gt;  &lt;tr&gt;  &lt;td&gt;config.softwareConfig.envVariables&lt;/td&gt;  &lt;td&gt;Replace all environment variables. If a replacement environment  variable map is not included in &#x60;environment&#x60;, all custom environment  variables  are cleared.  It is an error to provide both this mask and a mask specifying one or  more individual environment variables.&lt;/td&gt;  &lt;/tr&gt;  &lt;/tbody&gt;  &lt;/table&gt;
    - :body (Environment): 

  ## Returns

  {:ok, %GoogleApi.Composer.V1beta1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec composer_projects_locations_environments_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Composer.V1beta1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def composer_projects_locations_environments_patch(
        connection,
        projects_id,
        locations_id,
        environments_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url(
        "/v1beta1/projects/{projectsId}/locations/{locationsId}/environments/{environmentsId}",
        %{
          "projectsId" => URI.encode_www_form(projects_id),
          "locationsId" => URI.encode_www_form(locations_id),
          "environmentsId" => URI.encode_www_form(environments_id)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.Operation{}])
  end

  @doc """
  Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn&#39;t support this method, it returns &#x60;google.rpc.Code.UNIMPLEMENTED&#x60;.

  ## Parameters

  - connection (GoogleApi.Composer.V1beta1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;name&#x60;. The name of the operation resource to be deleted.
  - locations_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - operations_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.Composer.V1beta1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec composer_projects_locations_operations_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Composer.V1beta1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def composer_projects_locations_operations_delete(
        connection,
        projects_id,
        locations_id,
        operations_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url(
        "/v1beta1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
        %{
          "projectsId" => URI.encode_www_form(projects_id),
          "locationsId" => URI.encode_www_form(locations_id),
          "operationsId" => URI.encode_www_form(operations_id)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.Empty{}])
  end

  @doc """
  Gets the latest state of a long-running operation.  Clients can use this method to poll the operation result at intervals as recommended by the API service.

  ## Parameters

  - connection (GoogleApi.Composer.V1beta1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;name&#x60;. The name of the operation resource.
  - locations_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - operations_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.Composer.V1beta1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec composer_projects_locations_operations_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Composer.V1beta1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def composer_projects_locations_operations_get(
        connection,
        projects_id,
        locations_id,
        operations_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/v1beta1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
        %{
          "projectsId" => URI.encode_www_form(projects_id),
          "locationsId" => URI.encode_www_form(locations_id),
          "operationsId" => URI.encode_www_form(operations_id)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.Operation{}])
  end

  @doc """
  Lists operations that match the specified filter in the request. If the server doesn&#39;t support this method, it returns &#x60;UNIMPLEMENTED&#x60;.  NOTE: the &#x60;name&#x60; binding allows API services to override the binding to use different resource name schemes, such as &#x60;users/*/operations&#x60;. To override the binding, API services can add a binding such as &#x60;\&quot;/v1/{name&#x3D;users/*}/operations\&quot;&#x60; to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.

  ## Parameters

  - connection (GoogleApi.Composer.V1beta1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;name&#x60;. The name of the operation&#39;s parent resource.
  - locations_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :filter (String.t): The standard list filter.
    - :pageSize (integer()): The standard list page size.
    - :pageToken (String.t): The standard list page token.

  ## Returns

  {:ok, %GoogleApi.Composer.V1beta1.Model.ListOperationsResponse{}} on success
  {:error, info} on failure
  """
  @spec composer_projects_locations_operations_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.Composer.V1beta1.Model.ListOperationsResponse.t()}
          | {:error, Tesla.Env.t()}
  def composer_projects_locations_operations_list(
        connection,
        projects_id,
        locations_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :filter => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1beta1/projects/{projectsId}/locations/{locationsId}/operations", %{
        "projectsId" => URI.encode_www_form(projects_id),
        "locationsId" => URI.encode_www_form(locations_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Composer.V1beta1.Model.ListOperationsResponse{}]
    )
  end
end
