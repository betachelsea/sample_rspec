class Sushi
  attr_accessor :name, :price
  def initialize(name=nil)
    @name = name
  end
end

shared_context "寿司を握る" do
  let(:tako) { Sushi.new }
  let(:tamago) { Sushi.new("玉子") }
  before do
    @ika = Sushi.new
    @ika.name = "いか"
    tako.name = "たこ"
  end

  def convert_tako_to_madako
    tako.name = "真蛸"
  end
end

RSpec.configure do |rspec|
  rspec.include_context "寿司を握る", build_sushi: true
end
