class TodoList
  attr_reader :todolist
  def initialize
    @todolist = []
  end

  def add(new_todo)
    @todolist << new_todo
  end

  def list
    @todolist
  end
end
