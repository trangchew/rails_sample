require 'rails_helper'

RSpec.describe Post, type: :model do
	let(:post) { Post.new }

	subject { post }

	it { should be_valid }
end
