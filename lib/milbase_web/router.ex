defmodule MilbaseWeb.Router do
  use MilbaseWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MilbaseWeb do
    pipe_through :api
  end
end
