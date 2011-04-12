require File.expand_path(File.dirname(__FILE__) + '/../helper')

context "Commits" do

  setup do
    @repo    = Gah::Commits.new("schacon/ruby-git")
    @fixture = fixture(:commits)
  end

  test "commits list" do
    assert @commits = @repo.commits
    assert_not_nil(@id = @commits["commits"][0]["id"])
    assert_equal @fixture["commits"][0]["id"], @id
  end

end