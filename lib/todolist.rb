class TodoList
  # I don't need to be exposed. #list does the trick.
  # attr_reader :todolist
  
  def initialize
    @todolist = [] # More common, though the way you had it was perfectly fine
  end

  def add(new_todo)
    @todolist << new_todo
  end

  def list
    @todolist
  end
end