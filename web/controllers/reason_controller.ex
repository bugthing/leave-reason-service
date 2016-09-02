defmodule LeaveReasonService.ReasonController do
  use LeaveReasonService.Web, :controller
  alias LeaveReasonService.Reason

  def index(conn, _params) do
    reasons = Repo.all(Reason)
    render conn, reasons: reasons
  end
end
