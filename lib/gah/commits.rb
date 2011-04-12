module Gah

  class Commits < Repo

    BASE = "/commits/list/"

    def commits(ref = "master")
      gapi BASE + @repo + "/" + ref
    end

    def refmits(ref)
      @commits = commits(ref)
      
      @commits = @commits['commits'].map do |x|
        [x['committer']['login'], x['id']]
      end.group_by {|x|x[0]}.each do |k,v|
      
        v.flatten!.select! {|x| x != k}
      end

      return @commits

    end


  end
end