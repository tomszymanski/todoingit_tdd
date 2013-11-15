require File.expand_path '../spec_helper.rb', __FILE__

describe Todo do
  before do
    @todo_description = 'Bring Back That Loving Feeling'
    @test_todo = Todo.new(@todo_description)
  end

  describe '#description' do
    it 'returns value from initialization' do
      assert_equal @todo_description, @test_todo.description
    end
  end
end