require "./git_interface"

class Dummy
  include GitInterface
end

RSpec.describe GitInterface , "#commit" do
  subject { Dummy.new }

  context "nothing to commit" do
    it "returns false" do
      expect(subject.commit "mensagem_qualquer" ).to eq false
    end
  end
end
