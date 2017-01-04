require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) { Post.new(title: "Title", content: "Content") }

  subject { post }

  it { should be_valid }

	describe "title" do
		before { post.title = ""}
		it { is_expected.not_to be_valid }
	end

	describe "content" do
		before { post.title = "A"*121 }

		it { is_expected.to be_valid }
	end

  describe "test utf8" do
    before { post.update_attributes title: "マーケティング"}

    it { should be_valid }
  end
end
