defmodule LeaveReasonService.ReasonView do
  use LeaveReasonService.Web, :view

  def render("index.json", %{reasons: reasons}) do
    reasons
  end
end
