class CommandLine
  attr_reader :todolist
  
  def initialize
    @todolist = TodoList.new
  end
  def add(description)
    added_todo = Todo.new(description)
    @todolist.add(added_todo)
  end
end