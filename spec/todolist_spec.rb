require File.expand_path '../test_helper.rb', __FILE__

describe TodoList do
  before do
    @test_todolist = TodoList.new
    @test_todo1 = Todo.new('Baby Baby')
    @test_todo2 = Todo.new('I get down on my knees for you')
  end

  describe '#new' do
    it 'defaults to an empty list' do
      @test_todolist.list.must_be_empty
    end
  end

  describe '#add' do
    it 'appends todos to a list' do
      @test_todolist.add(@test_todo1)
      @test_todolist.add(@test_todo2)
      expected_result = [@test_todo1, @test_todo2]

      assert_equal expected_result, @test_todolist.todolist
    end
  end
end
