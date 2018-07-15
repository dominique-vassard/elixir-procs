defmodule Protocols.InfoV2_1 do
  @moduledoc """
  Info implementation V2.1
  """

  @doc """
  Info implementation for Bitstring

  ## Examples:

      iex> InfoV1.info_integer("hello")
      %{type: :string, value: "hello", version: 2.1}
  """
  def info_bitstring(data) when is_bitstring(data) do
    %{
      version: 2.1,
      type: :string,
      value: data
    }
  end
end
