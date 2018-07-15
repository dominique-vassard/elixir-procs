defmodule FunctionVersions.Versions.V2 do
  @moduledoc """
  Info implementation V2
  """

  @doc """
  Info implementation for Integer

  ## Examples:

      iex> V2.info_integer(5)
      %{type: :integer, value: 5, version: 2}
  """
  def info_integer(data) when is_integer(data) do
    %{
      version: 2,
      type: :integer,
      value: data
    }
  end

  @doc """
  Info implementation for Bitstring

  ## Examples:

      iex> V2.info_integer("hello")
      %{type: :string, value: "hello", version: 2}
  """
  def info_bitstring(data) when is_bitstring(data) do
    %{
      version: 2,
      type: :string,
      value: data
    }
  end
end
