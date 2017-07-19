class Cart < ActiveRecord::Base
    # a cart has many associated line_items.
    # Each line item contains a reference to its cart's id.
    # the existence of line items is dependent on the existence of the cart.
    # if we destroy a cart, deleting it from database, we will want
    # Rails also to destroy any line items that are associated with that cart.
    # And now, Cart can reference line items like this
    # cart = Cart.find( ... )
    # puts "this is has #{cart.line_items.count} line items"
    has_many :line_items, dependent: :destroy
end