require File.expand_path '../spec_helper.rb', __FILE__

class TestTodoList < MiniTest::Unit::TestCase
  def setup
    @test_todolist = TodoList.new
    @test_todo1 = Todo.new('Baby Baby')
    @test_todo2 = Todo.new('I get down on my knees for you')
  end
  def test_todolist
    assert_equal Array.new, @test_todolist.todolist
  end
  def test_todolist_add
    @test_todolist.add(@test_todo1)
    @test_todolist.add(@test_todo2)
    expected_result = [@test_todo1,@test_todo2]

    assert_equal expected_result, @test_todolist.todolist
  end
  def test_todolist_list
    assert_equal @test_todolist.todolist, @test_todolist.list
  end
end