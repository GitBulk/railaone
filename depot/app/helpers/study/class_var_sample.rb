class Customer

    @@no_of_customers = 0

    def initialize(id, name, address)
        @customer_id = id
        @customer_name = name
        @customer_address = address
        total_no_of_customers()
    end

    def display_details
        puts "Customer id #@customer_id"
        puts "Customer name is #@customer_name"
        puts "Customer address is #@customer_address"
    end

    def total_no_of_customers
        @@no_of_customers += 1
    end

    def print_total_customers
        puts "Total number of customers: #@@no_of_customers"
    end
end

cus1 = Customer.new(1, "toan", "1 Le Duan")
cus2 = Customer.new(2, "ronaldo", "Real")

cus1.print_total_customers()