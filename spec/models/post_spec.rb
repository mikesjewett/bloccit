require 'rails_helper'

RSpec.describe Post, type: :model do

  it { should belong_to(:topic) }
  
  context "attributes" do
    let(:post) { Post.new(title: "New Post Title", body: "New Post Body") }

    it "should respond to title" do
      expect(post).to respond_to(:title)
    end

    it "should respond to body" do
      expect(post).to respond_to(:body)
    end
  end
end
