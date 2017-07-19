class Customer
    def initialize(id, name, address)
        @customer_id = id
        @customer_name = name
        @customer_address = address
    end

    def display_details
        puts "Customer id #@customer_id"
        puts "Customer name is #@customer_name"
        puts "Customer address is #@customer_address"
    end
end

cus1 = Customer.new(1, "toan", "1 Le Duan")
cus2 = Customer.new(2, "ronaldo", "Real")

cus1.display_details
cus2.display_details