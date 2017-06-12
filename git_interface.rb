require "json"

module GitInterface

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

  def added?(file = ".")
    git add #{file}`
  end

  def commit(message)
    `git commit -m "#{message}" `.include? "nothing to commit"
  end

  def checkout(ramo)
    puts `git checkout -b #{ramo}`
  end

end
