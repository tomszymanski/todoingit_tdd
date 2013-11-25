require File.expand_path '../test_helper.rb', __FILE__

describe CommandLine do
  before do
    @test_todolist = TodoList.new
    @test_todo_description = 'Top Gun'
    @test_todo = Todo.new(@test_todo_description)
    @test_todolist.add(@test_todo)
    @test_commandline = CommandLine.new
  end

  describe '#add' do
    it 'adds a todo to a todolist' do
      test_argv = ['add', @test_todo_description]
      @test_commandline.add(test_argv[1])

      assert_equal mu_pp_for_diff(@test_todolist), mu_pp_for_diff(@test_commandline.todolist)
    end
  end
end
