require 'securerandom'

$global_variable = 10

CONSTANT_VARIABLE = 20

normal_variable = 30


class Customer 
    @@number_of_customer = 0     # static variable


    def initialize(name , lastname , age)
        @name = name 
        @lastname = lastname
        @age = age
        @ID = SecureRandom.uuid

        @@number_of_customer += 1
    end

    def displayInformation()
        puts "Customer Id : #@ID"
        puts "Customer name : #@name"
        puts "Customer lastname : #@lastname"
        puts "Customer age : #@age"
    end

    def showTotalCustomer()
        puts "Total customer : #@@number_of_customer"
    end

    # getter method
    def Id()
        return @ID
    end

end

cust1 = Customer.new("Test name","Test lastname",10)
cust1.showTotalCustomer()

cust2 = Customer.new("Test name","Test lastname",20)
cust2.showTotalCustomer()

# Output will be 

# Total customer : 1
# Total customer : 2

puts # newline


cust1.displayInformation()
puts # newline
cust2.displayInformation()


# accessing static variable on class
puts Customer.class_variable_get(:@@number_of_customer)