require "spec_helper_for_shared_context.rb"

shared_context "共有する条件" do
  let(:shared_let) { "hello" }
  before do
    shared_let.concat("world")
  end
end

describe "shared_contextのテスト" do
  include_context "共有する条件"
  it { expect(shared_let).to eq("helloworld") }
end


describe "include_contextを利用する その1" do
  let(:sushi) { Sushi.new("たまご") }
  include_context "寿司を握る"
  it { expect(sushi.name).to eq("トロ") } # include_contextのほうが後なので
end

describe "include_contextを利用する その2" do
  include_context "寿司を握る"
  let(:sushi) { Sushi.new("いくら") }
  it { expect(sushi.name).to eq("いくら") } # letのほうが後に実行
end

describe "include_contextを利用する その3" do
  include_context "寿司を握る" do
    let(:sushi) { Sushi.new("甘エビ") }
  end
  it { expect(sushi.name).to eq("甘エビ") }
end

describe "宣言で共有する", build_sushi: true do
  it { expect(sushi.name).to eq("トロ") }
end

describe "個別に共有する" do
  let(:sushi) { Sushi.new("あなご") }
  it "トロ定義済み", build_sushi: true do
    expect(sushi.name).to eq("トロ")
  end
  it { expect(sushi.name).to eq("あなご") }
end
