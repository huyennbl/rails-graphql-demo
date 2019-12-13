module Types
  class QueryType < Types::BaseObject
    field :books, [Types::BookType], null: false
    def books
      Book.all
    end


    field :authors, [Types::AuthorType], null: false
    def authors
      Author.all
    end
  end
end
