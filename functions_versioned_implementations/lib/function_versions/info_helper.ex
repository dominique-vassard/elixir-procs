defmodule FunctionVersions.InfoHelpers do
  @moduledoc """
  Helpers for functions calls
  """

  @available_version [1, 2, 2.1]

  @doc """
  Call the right 'info' depending on the given version

  If function does not exists, search for an implementation in previous versions
  """
  def call_info(_, _, nil) do
    {:error, "Not implemented"}
  end

  def call_info(func_atom, data, version) do
    module = String.to_existing_atom("Elixir.FunctionVersions.Versions.V#{mod_version(version)}")

    if Keyword.has_key?(module.__info__(:functions), func_atom) do
      Kernel.apply(module, func_atom, [data])
    else
      call_info(func_atom, data, previous_version(version))
    end
  end

  @doc """
  Retrieve previous version
  """
  def previous_version(version) do
    @available_version
    |> Enum.take_while(&(&1 < version))
    |> List.last()
  end

  defp mod_version(version) do
    String.replace(stringify_version(version), ".", "_")
  end

  defp stringify_version(version) when is_float(version) do
    Float.to_string(version)
  end

  defp stringify_version(version) when is_integer(version) do
    Integer.to_string(version)
  end
end
