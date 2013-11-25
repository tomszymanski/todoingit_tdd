require File.expand_path '../test_helper.rb', __FILE__

describe Todo do
  before do
    @todo_description = 'Bring Back That Loving Feeling'
    @test_todo = Todo.new(@todo_description)
  end

  describe '#new' do
    it 'returns a description from initialization' do
      assert_equal @todo_description, @test_todo.description
    end
  end
end
