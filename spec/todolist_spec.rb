require File.expand_path '../spec_helper.rb', __FILE__

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
    it 'adds todos' do
      @test_todolist.add(@test_todo1)
      @test_todolist.add(@test_todo2)
      expected_result = [@test_todo1, @test_todo2]

      assert_equal expected_result, @test_todolist.list
    end
  end
# the specs below aren't necessary. I'll make a note why on each.
  
  # This one tests implementation. We don't actually care that the 
  # list is an instance of Array, only that it behaves like one.
  # As a result, the expectation at line 23 takes care of this.
  # def test_todolist
  #   assert_equal Array.new, @test_todolist.todolist
  # end

  # I don't think that both of these should be exposed publicly.
  # I think I addressed that above.
  # def test_todolist_list
  #   assert_equal @test_todolist.todolist, @test_todolist.list
  # end

end