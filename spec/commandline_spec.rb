require File.expand_path '../spec_helper.rb', __FILE__

class TestCommandLine < MiniTest::Unit::TestCase
  def setup
    @testtodolist = TodoList.new
    @testtodo_description = 'Top Gun'
    @testtodo = Todo.new(@testtodo_description)
    @testtodolist.add(@testtodo)
    @testcommandline = CommandLine.new
  end
  def test_add
    test_argv = ['add', @testtodo_description]
    @testcommandline.add(test_argv[1])

    assert_equal mu_pp_for_diff(@testtodolist), mu_pp_for_diff(@testcommandline.todolist)
  end
end