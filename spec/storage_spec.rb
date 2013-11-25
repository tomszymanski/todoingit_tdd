require File.expand_path '../test_helper.rb', __FILE__

describe Storage do
  before do
    @test_store_content = 'test_todolist.yml'
    @test_store_file = File.open(@test_store_content, 'w')
    @test_store = Storage.new(@test_store_content)

    @test_todolist = TodoList.new
    @test_todo_description = 'Top Gun'
    @test_todo = Todo.new(@test_todo_description)
    @test_todolist.add(@test_todo)
    
    @test_store_expected = @test_todolist.to_yaml
  end

  describe '#new' do
    it 'returns a storage name from initialization' do
      assert_equal @test_store_content, @test_store.storage_name
    end
  end

  describe '#save' do
    it 'saves a todolist to a file' do
      @test_store.save(@test_todolist)
      file = File.open(@test_store_content, 'rb')

      assert_equal @test_store_expected, file.read
    end
    
    after do
      File.delete(@test_store_content)
    end
  end
end
