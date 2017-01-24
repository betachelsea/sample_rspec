require "spec_helper_for_shared_context.rb"

describe "include_contextを利用する" do
  include_context "寿司を握る" do
    let(:tamago) { Sushi.new("たまご") }
  end

  it("たこが呼び出せる") { expect(tako.name).to eq("たこ") }
  it("いかが呼び出せる") { expect(@ika.name).to eq("いか") }
  it("たまごは上書きされている") { expect(tamago.name).to eq("たまご") }

  describe "真蛸への変換" do
    before { convert_tako_to_madako }
    it "たこの名前を呼び出すと真蛸になっている" do
      expect(tako.name).to eq("真蛸")
    end
  end
end

describe "宣言で共有する", build_sushi: true do
  it "たこを呼び出せる" do
    expect(tako.name).to eq("たこ")
  end
end

describe "個別に共有する" do
  it "たこを呼び出せる", build_sushi: true do
    expect(tako.name).to eq("たこ")
  end
end
