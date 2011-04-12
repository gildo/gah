module Gah
  class Repo

    include Helpers

    BASE = "/repos/show/"

    def initialize(repo)
      @repo = repo
    end

    def contributors
      gapi (BASE + @repo + "/contributors")
    end

    def contributions
      count = 0
      contributors["contributors"].each do |c|
        count += c["contributions"]
      end

      return count
    end

    def tags
      tags = gapi (BASE + @repo  + "/tags")
    end

  end
end