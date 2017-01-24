describe "around hook" do
  around(:example) do |example|
    puts "実行前"
    example.run
    puts "実行後"
  end
  it { puts "テスト実行" }
end
