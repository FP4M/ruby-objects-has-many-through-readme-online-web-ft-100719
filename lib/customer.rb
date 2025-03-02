class Customer
  attr_accessor :name, :age

  @@all = []

  def initailize(name, age)
   @name = name
   @age = age 
   @@all << self
   end

   def self.all
     @@all
   end

   def new_meal(waiter, total, tip=0)
     meal.new(waiter, self, total, tip)
   end

   def meals
      meal.all.select do |meal|
       meal.customer == self
     end
   end

   def waiter
     meal.map do |meal|
       meal.waiter
   end
   end

   
end


