defmodule LeaveReasonService.Router do
  use LeaveReasonService.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", LeaveReasonService do
    pipe_through :api
  end

  scope "/", LeaveReasonService do
    pipe_through :api
  
    get "/reasons", ReasonController, :index
  end
end
