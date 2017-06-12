require "./git_interface_agressive"


RSpec.describe GitInterfaceAgressive , "#commit" do
  subject { GitInterfaceAgressive.new }

  context "nothing to commit" do

    it "raises exception" do
      expect { subject.commit! "mensagem_qualquer" }.to raise_error GitInterfaceAgressive::CommitException
    end

  end
end

