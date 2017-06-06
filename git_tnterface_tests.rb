require "./git_interface"



RSpec.describe GitInterface , "#add" do
  subject {GitInterface.new}
  it "add all" do
    expect(subject.status).to include "nothing to commit"
  end
end

