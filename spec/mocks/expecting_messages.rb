describe "Expecting messages" do
  let(:cat) { Cat.new }
  it "nameが呼び出されること" do
    expect(cat).to receive(:name)
    cat.name # 呼び出しがなければテスト失敗
  end
end

describe "Spies" do
  let(:dog) { spy('dog') }
  it '呼び出したことの確認' do
    dog.name
    expect(dog).to have_received(:name)
  end
  it '引数の確認' do
    dog.eat('tomato')
    expect(dog).to have_received(:eat).with('tomato')
  end
  it '呼び出し順の確認' do
    dog.eat('tomato')
    dog.eat('apple')
    expect(dog).to have_received(:eat).with('tomato').ordered
    expect(dog).to have_received(:eat).with('apple').ordered
  end
  context "任意のclassを使った場合" do
    let(:cat) { Cat.new }
    it "呼び出したことの確認ができること" do
      allow(cat).to receive(:name) # allowで指定しておかないと追いかけてくれない
      cat.name
      expect(cat).to have_received(:name)
    end
  end
end

describe "Matching arguments" do
  # 詳しくはドキュメント参照
  # https://www.relishapp.com/rspec/rspec-mocks/v/3-6/docs/setting-constraints/matching-arguments
  it "Calculator.add(1, n)が呼び出しされることの確認" do
    expect(Calculator).to receive(:add).with(1, anything)
    Calculator.add(1, 3)
  end
  it "正規表現で引数の確認" do
    cat = Cat.new
    expect(cat).to receive(:eat).with(/chu*/)
    cat.eat("churu")
  end
end

describe "Receive Counts" do
  let(:cat) { Cat.new }
  it "methodが2回呼び出されることをテストすること" do
    expect(cat).to receive(:meow).twice
    cat.meow
    cat.meow
  end
end
