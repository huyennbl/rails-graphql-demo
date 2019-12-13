module Types
  class QueryType < Types::BaseObject
    field :books, [Types::BookType], null: false
    def books
      Book.all
    end

    field :book, Types::BookType, null: true do
      argument :id, ID, required: true
      argument :title, String, required: false
    end

    def book(id:, title: nil)
      conditions = {}
      conditions[:id] = id if id
      conditions[:title] = title if title
      Book.find_by(conditions)
    end

    field :authors, [Types::AuthorType], null: false
    def authors
      Author.all
    end
  end
end
