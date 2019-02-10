require "library"

describe Library do
  it 'can return a list of all books' do
    library = Library.new()
    a = [
      {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
      {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'},
    ]
    expect(library.list_books).to eq a
  end

  it 'can add a new book' do
    library = Library.new
    new_book = {title: 'ABCDE', author: 'Sandi Metz', subject: 'OOP'}
    library.add_book(new_book)
    expect(library.books.include?(new_book)).to eq true
  end

  it 'can find a specific book' do
    library = Library.new
    specific_book = "Learn Ruby The Hard Way"
    var = {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'}
    expect(library.find_book(specific_book)).to eq var
  end

  it 'can delete a book' do
    library = Library.new
    library.remove_book('Eloquent JavaScript')
    expect(library.list_books).not_to include({title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'})
  end

  it 'can return a list of all books by subject' do
  library = Library.new
  expect(library.all_books_by_subject('Ruby')).to eq ([
    {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
    {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'}])
  end
end
