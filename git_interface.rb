class GitInterface

  def git_status
    `git status`
  end

  def git_add
    `git add .`
  end

end
