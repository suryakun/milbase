defmodule MilbaseWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias MilbaseWeb.Schema.Types

  import_types(Types.Usertype)
  import_types(Types.SessionType)
end
