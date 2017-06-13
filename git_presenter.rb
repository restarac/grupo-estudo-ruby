class GitPresenter
  def initialize(nome)
    @nome = nome
  end

  def to_json
    { nome: @nome }.to_json
  end
end
