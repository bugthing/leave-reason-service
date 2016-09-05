# LeaveReasonService

Trying out a simple http service in Phoenix base on the following guide:

    https://semaphoreci.com/community/tutorials/test-driven-apis-with-phoenix-and-elixir

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Fire up a postgres database server (e.g using docker: `docker run --name postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres`)
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Performance

If you want to what happens when you flod the api with requests, you can play with `httperf`

    httperf --print-reply --print-request --server="localhost" --port=4000 --uri="/reasons" --add-header='Content-Type:application/json\n'  --num-conns 500

Ref: http://www.mervine.net/performance-testing-with-httperf

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
