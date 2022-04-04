require 'rails_helper'

describe Task do
  before do
    @Task = Task.new(name: "Test Task", description: "Test Description",
                      deadline: Time.now)
  end

  subject { @Task }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:deadline) }

  describe "when task name is not present" do
    before { @Task.name = " " }
    it { should_not be_valid}   
  end  

  describe "with a task name more than 20 characters" do
    before { @Task.name = "tName" * 20 }
    it { should_not be_valid }
  end

  describe "when description is not present" do
    before { @Task.description = " "}
    it { should_not be_valid}
  end

  describe "with a description more than 2500 characters" do
    before { @Task.description = "desc" * 2500 }
    it { should_not be_valid }
  end

  describe "when deadline is not present" do
    before { @Task.deadline = " "}
    it { should_not be_valid}
  end

end