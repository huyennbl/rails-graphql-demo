module Types
  class MutationType < Types::BaseObject
    field :add_book_author, mutation: Mutations::AddBookAuthor
    field :create_book, mutation: Mutations::CreateBook
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
