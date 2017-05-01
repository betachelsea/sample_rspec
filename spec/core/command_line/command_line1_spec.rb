# https://relishapp.com/rspec/rspec-core/v/3-5/docs/command-line/example-option

describe "Command Line テスト ひとつめ" do
  it "ログインに関するテスト その1" do; end
  it "ログインに関するテスト その2", required: false do; end
  it "ログインに関するテスト その3", required: true, type: 'important' do; end
  it "ログアウトに関するテスト" do; end
end
