RSpec.configure do |c|
  c.before(:example, type: :logged_in) do
    @logged_in = true
  end
end

describe "テスト" do
  it { expect(@logged_in).to eq(nil) } # 設定されていない

  it "これはログイン処理がほしいテスト", type: :logged_in do
    expect(@logged_in).to eq(true)
  end
end

describe "ログイン処理が必要なテスト", type: :logged_in do
  it { expect(@logged_in).to eq(true) }
end
