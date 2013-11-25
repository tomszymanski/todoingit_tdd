class Storage
  attr_reader :storage_name
  
  def initialize(storage_name)
    @storage_name = storage_name
  end

  def save(todolist)
    to_save = todolist.to_yaml
    File.open(@storage_name, 'w'){|f| f.write(to_save) }
  end
end
