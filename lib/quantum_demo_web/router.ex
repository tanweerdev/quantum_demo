defmodule QuantumDemoWeb.Router do
  use QuantumDemoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", QuantumDemoWeb do
    pipe_through :api
  end
end
