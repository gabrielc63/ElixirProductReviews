defmodule ElixirProductReview.Repo do
  use Ecto.Repo,
    otp_app: :elixir_product_review,
    adapter: Ecto.Adapters.Postgres
end
