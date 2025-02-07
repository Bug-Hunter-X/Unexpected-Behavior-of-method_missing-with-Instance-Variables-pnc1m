```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    puts "Method '#{method_name}' not found"
  end

end

object = MyClass.new(10)
object.some_method # This will call method_missing
object.value # This will NOT call method_missing, it will directly access @value
```