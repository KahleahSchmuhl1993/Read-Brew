# Bookstore Class
class Bookstore
  def initialize
    @atmosphere = 'cozy'
    @books = []
  end

  # Getter for atmosphere
  def atmosphere
    @atmosphere
  end

  # Setter for atmosphere
  def atmosphere=(value)
    @atmosphere = value
  end

  # Getter for books
  def books
    @books
  end

  # Method for adding books
  def add_book(title, author)
    @books << { title: title, author: author }
  end

  # Method for removing books
  def remove_book(title)
    @books.delete_if { |book| book[:title] == title }
  end

  # Method for printing book list
  def print_book_list
    @books.each { |book| puts "#{book[:title]} by #{book[:author]}" }
  end
end

# Coffee Shop Class
class CoffeeShop
  def initialize
    @atmosphere = 'cozy'
    @menu = []
  end

  # Getter for atmosphere
  def atmosphere
    @atmosphere
  end

  # Setter for atmosphere
  def atmosphere=(value)
    @atmosphere = value
  end

  # Getter for menu
  def menu
    @menu
  end

  # Method for adding items to menu
  def add_to_menu(item, price)
    @menu << { item: item, price: price }
  end

  # Method for removing items from menu
  def remove_from_menu(item)
    @menu.delete_if { |menu_item| menu_item[:item] == item }
  end

  # Method for printing menu
  def print_menu
    @menu.each { |menu_item| puts "#{menu_item[:item]} - $#{menu_item[:price]}" }
  end
end

# Store Class
class Store
  def initialize
    @atmosphere = 'cozy'
    @bookstore = Bookstore.new
    @coffee_shop = CoffeeShop.new
  end

  # Getter for atmosphere
  def atmosphere
    @atmosphere
  end

  # Setter for atmosphere
  def atmosphere=(value)
    @atmosphere = value
  end

  # Getter for bookstore object
  def bookstore
    @bookstore
  end

  # Getter for coffee shop object
  def coffee_shop
    @coffee_shop
  end
end

# Create a new instance of Store
store = Store.new

# Add a few books to the bookstore
store.bookstore.add_book('Harry Potter', 'J.K. Rowling')
store.bookstore.add_book('The Catcher in the Rye', 'J.D. Salinger')
store.bookstore.add_book('The Lord of the Rings', 'J.R.R. Tolkien')

# Add a few items to the coffee shop menu
store.coffee_shop.add_to_menu('Cappuccino', 3.00)
store.coffee_shop.add_to_menu('Latte', 2.50)
store.coffee_shop.add_to_menu('Coffee', 2.00)

# Print book list
puts "Bookstore inventory:"
store.bookstore.print_book_list

# Print menu
puts "\nCoffee shop menu:"
store.coffee_shop.print_menu

# Output
# Bookstore inventory:
# Harry Potter by J.K. Rowling
# The Catcher in the Rye by J.D. Salinger
# The Lord of the Rings by J.R.R. Tolkien

# Coffee shop menu:
# Cappuccino - $3.0
# Latte - $2.5
# Coffee - $2.0