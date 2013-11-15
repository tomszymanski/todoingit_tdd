require File.expand_path '../spec_helper.rb', __FILE__

class TestStorage < MiniTest::Unit::TestCase
  def setup
    @test_store_content = 'test_todolist.yml'
    @test_store_file = File.new(@test_store_content)
    @test_store = Storage.new(@test_store_content)

    @test_todolist = TodoList.new
    @test_todo_description = 'Top Gun'
    @test_todo = Todo.new(@test_todo_description)
    @test_todolist.add(@test_todo)
    
    @test_store_expected = @test_todolist.to_yaml
  end
  def test_save
    @test_store.save(@test_todolist)
    file = File.open(@test_store_content, 'rb')

    assert_equal @test_store_expected, file.read
  end
  def cleanup
    File.delete(@test_store_content)
  end
end