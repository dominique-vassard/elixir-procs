alias Protocols.{InfoHelpers}

defprotocol Protocols.Info do
  @doc "Print info about the given data depending on its type"
  @fallback_to_any true

  def info(data, version \\ 1)
end

defimpl Protocols.Info, for: Integer do
  @doc "Implements info() for Integer"
  def info(data, version) do
    InfoHelpers.call_info(:info_integer, data, version)
  end
end

defimpl Protocols.Info, for: Atom do
  @doc "Implements info() for Atom"
  def info(data, version) do
    InfoHelpers.call_info(:info_atom, data, version)
  end
end

defimpl Protocols.Info, for: BitString do
  @doc "Implements info() for BitString"
  def info(data, version) do
    InfoHelpers.call_info(:info_bitstring, data, version)
  end
end

defimpl Protocols.Info, for: Any do
  @doc "Implements info() for BitString: Sends back a tuple with an error"
  def info(_, _) do
    {:error, "Not implemented"}
  end
end
