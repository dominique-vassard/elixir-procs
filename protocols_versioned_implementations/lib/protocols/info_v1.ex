defmodule Protocols.InfoV1 do
  @moduledoc """
  Info implementation V1
  """

  @doc """
  Info implementation for Integer

  ## Examples:

      iex> InfoV1.info_integer(5)
      %{type: :integer, value: 5, version: 1}
  """
  def info_integer(data) when is_integer(data) do
    %{
      version: 1,
      type: :integer,
      value: data
    }
  end

  @doc """
  Info implementation for Integer

  ## Examples:

      iex> InfoV1.info_integer(my_atom)
      %{type: :atom, value: :my_atom, version: 1}
  """
  def info_atom(data) when is_atom(data) do
    %{
      version: 1,
      type: :atom,
      value: data
    }
  end
end
