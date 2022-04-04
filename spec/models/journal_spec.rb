require 'rails_helper'

describe Journal do
  before do
    @Journal = Journal.new(name: "Test Category")
  end

  subject { @Journal }

  it { should respond_to(:name) }

  describe "when category name is not present" do
    before { @Journal.name = " " }
    it { should_not be_valid}   
  end  

  describe "with a category name more than 20 characters" do
    before { @Journal.name = "jName" * 20 }
    it { should_not be_valid }
  end

end