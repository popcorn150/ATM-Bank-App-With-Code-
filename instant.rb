class Customer
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end
  def display_details()
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer addr #@cust_addr"
  end
end

# Create Objects
cust1 = Customer.new("1", "Dark", "Agidi-Road")
cust2 = Customer.new("2", "Blessing", "Emmanuel-Street")

# Call Methods
cust1.display_details()
cust2.display_details()