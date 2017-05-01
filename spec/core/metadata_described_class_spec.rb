class Food; end
class Sushi < Food; end
class Sweet < Food; end

shared_examples "Foodを継承している" do
  it { expect(described_class.superclass).to eq(Food) }
end

describe Sushi do
  it_behaves_like "Foodを継承している"
end

describe Sweet do
  it_behaves_like "Foodを継承している"
end
