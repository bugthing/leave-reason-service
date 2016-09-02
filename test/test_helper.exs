ExUnit.start

#Mix.Task.run "ecto.create", ~w(-r LeaveReasonService.Repo --quiet)
#Mix.Task.run "ecto.migrate", ~w(-r LeaveReasonService.Repo --quiet)
Mix.Task.run "ecto.create", ["--quiet"]
Mix.Task.run "ecto.migrate", ["--quiet"]
#Ecto.Adapters.SQL.begin_test_transaction(LeaveReasonService.Repo)
Ecto.Adapters.SQL.Sandbox.mode(LeaveReasonService.Repo, :manual)



