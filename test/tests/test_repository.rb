require File.expand_path(File.dirname(__FILE__) + '/../helper')

context "Repository" do

  setup do
    @repo = Gah::Repo.new("schacon/ruby-git")
  end

  
  test "repository contributors" do
    scott =  fixture(:contributors)["contributors"][0]["login"]
    assert collab = @repo.contributors["contributors"][0]["login"]
    assert_equal scott, collab
  end

  test "contributions" do
    assert_equal 152, @repo.contributions
  end

  test "tags list" do
    @tags = @repo.tags["tags"]
    assert_equal "cfad76700b3d38eb3be97e2d5ef75cc0a398f818", @tags["v1.2.0"]
  end

end
