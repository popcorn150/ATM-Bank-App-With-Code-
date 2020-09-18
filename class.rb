class Customer
  @@no_of_customers = 0
  def initialize(id, name, addr)
    @customer_id = id
    @customer_name = name
    @customer_addr = addr
  end
  def display_details()
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer address #@cust_addr"
  end
  def total_no_of_customers
    @@no_of_customers += 1
    puts "Total number of customers: #@@no_of_customers"
  end
end

# Create objects
cust1 = Customer.new("1", "Dark", "Agidi-Road")
cust2 = Customer.new("2", "Blessing", "Emmanuel-Street")

# Call method
cust1.total_no_of_customers()
cust2.total_no_of_customers()