defmodule FunctionVersions.Info do
  @moduledoc """
  Function-version of the Info Protocol
  """
  alias FunctionVersions.{InfoHelpers}

  @doc """
  Print info about the given data depending on its type
  """
  def info(data, version \\ 1) do
    do_info(data, version)
  end

  defp do_info(data, version) when is_integer(data) do
    InfoHelpers.call_info(:info_integer, data, version)
  end

  defp do_info(data, version) when is_atom(data) do
    InfoHelpers.call_info(:info_atom, data, version)
  end

  defp do_info(data, version) when is_bitstring(data) do
    InfoHelpers.call_info(:info_bitstring, data, version)
  end

  defp do_info(_, _) do
    {:error, "Not implemented"}
  end
end
