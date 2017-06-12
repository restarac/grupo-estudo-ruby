require "./git_interface"

class GitInterfaceAgressive

  include GitInterface

  def commit!(message)
    commit(message) ? true : raise(CommitException.new)
  end

  class CommitException < StandardError
  end

end
