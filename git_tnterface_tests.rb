require "./git_interface"



RSpec.describe GitInterface , "#add" do
  subject {GitInterface.new}
  it "add all" do
    expect(subject.add).to include "nothing to commit"
  end
end

