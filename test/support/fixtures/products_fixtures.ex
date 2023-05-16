defmodule ElixirProductReview.ProductsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirProductReview.Products` context.
  """

  @doc """
  Generate a product.
  """
  def product_fixture(attrs \\ %{}) do
    {:ok, product} =
      attrs
      |> Enum.into(%{
        description: "some description",
        image_url: "some image_url",
        name: "some name",
        overall_rating: 42
      })
      |> ElixirProductReview.Products.create_product()

    product
  end
end
