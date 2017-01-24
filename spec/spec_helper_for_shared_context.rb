class Sushi
  attr_accessor :name
  def initialize(name=nil)
    @name = name
  end
end

shared_context "寿司を握る" do
  let(:sushi) { Sushi.new("トロ") }
end

RSpec.configure do |rspec|
  rspec.include_context "寿司を握る", build_sushi: true
end
