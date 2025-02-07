```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    puts "Method '#{method_name}' not found"
  end

  def value
      @value
  end

  def value=(new_value)
      @value = new_value
  end

end

object = MyClass.new(10)
object.some_method # Calls method_missing
puts object.value # Accesses @value via the getter method
object.value = 20
puts object.value # Accesses @value via the getter method
```