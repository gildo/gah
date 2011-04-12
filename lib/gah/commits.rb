module Gah

  class Commits < Repo

    BASE = "/commits/list/"

    def commits(branch = "master")
      gapi BASE + @repo + "/" + branch
    end

  end
end