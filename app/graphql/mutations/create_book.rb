module Mutations
  class CreateBook < BaseMutation
    # TODO: define return fields
    field :book, Types::BookType, null: false
    field :errors, [String], null: false
    
    # TODO: define arguments
    argument :title, String, required: true

    # TODO: define resolve method
    def resolve(title:)
      puts "into create_book resolver #{title}"
      book = Book.new(title: title)
      if(book.save)
        {
          book: book,
          errors: []
        }
      else
        {
          book: nil,
          errors: [book.errors.full_messages]
        }
      end

    end
  end
end
