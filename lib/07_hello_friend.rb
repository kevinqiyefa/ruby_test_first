class Friend
  # TODO: your code goes here!
  def greeting(name = '')
    name = ", #{name}" unless name.empty? 
    "Hello#{name}!"
  end
end
