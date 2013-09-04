require "./random_number_generator"

describe "random number generator" do
  it "should generate random number between zero to seven " do
    generator = RandomNumberGenerator.new
    random_number= generator.generate_random_number
    expect(random_number).to be < 7
  end
end

