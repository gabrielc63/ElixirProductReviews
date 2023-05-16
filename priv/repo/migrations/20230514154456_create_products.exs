defmodule ElixirProductReview.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :description, :text
      add :overall_rating, :integer
      add :image_url, :string

      timestamps()
    end
  end
end
