require "json"

class GitInterface

  def status
    x = `git status`
    puts x
    x.to_json
  end

  def add(file = ".")
    x = `git add #{file}`
    puts x
    x.to_json
  end

  def commit(message)
    puts `git commit -m #{message}`
  end

  def checkout(ramo)
    puts `git checkout -b #{ramo}`
  end

end
