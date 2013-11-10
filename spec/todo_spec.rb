require File.expand_path '../spec_helper.rb', __FILE__

class TestTodo < MiniTest::Unit::TestCase
  def setup
    @todo_description = 'Bring Back That Loving Feeling'
    @test_todo = Todo.new(@todo_description)
  end
  def test_todo
    assert_equal @todo_description, @test_todo.description   
  end
end