def list_books
end

def add_book
  publish_date = setanyinput("Enter date a book was published?(YYYY-MM-DD): ")
  publisher = setanyinput("Enter the name of publisher?: ")
  cover_state = setgiveninput("Enter the state of cover (good/bad)?: ", ["good", "bad"])
  title = setanyinput("Enter Book label title (e.g. 'Gift', 'New'): ")
  color = setanyinput("Enter Book  color: ")
  book = Book.new(publish_date, publisher, cover_state)
  label = Label.new(title, color)
  item = Item.new(publish_date)
  label.add_item(item)
  APP.create_book(book, label)
end
