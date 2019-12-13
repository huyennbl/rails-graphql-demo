module Types
  class BookType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :authors, [Types::AuthorType], null: true
  end
end
