module Mutations
  class AddBookAuthor < BaseMutation
    # TODO: define return fields
    field :book, Types::BookType, null: false
    field :errors, [String], null: true

    # TODO: define arguments
    argument :book_id, ID, required: true
    argument :author_id, ID, required: true

    # TODO: define resolve method
    def resolve(book_id:, author_id:)
      book = Book.find(book_id)
      author = Author.find(author_id)

      if book && author
        book.authors << author
        {
          book: book
        }
      else
        {
          book: nil
        }
      end
    end
  end
end
