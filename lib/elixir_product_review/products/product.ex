defmodule ElixirProductReview.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :description, :string
    field :image_url, :string
    field :name, :string
    field :overall_rating, :integer, default: 0

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :description, :overall_rating, :image_url])
    |> validate_required([:name, :description, :overall_rating, :image_url])
  end
end
