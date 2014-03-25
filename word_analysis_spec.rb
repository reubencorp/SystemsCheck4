require_relative 'word_analysis.rb'

describe Words do

  let(:string) {Words.new("I can accomplish great things by using the tools before me.")}

  it 'takes one argument' do
    expect(string.str).to eq("I can accomplish great things by using the tools before me.")
  end

  it 'counts number of each word' do
    expect(string.count_number_of_word["me"]).to eq(1)
  end

  it 'counts number of each letter' do
    expect(string.count_number_of_char["t"]).to eq(4)
  end

  it 'counts number of each symbol' do
    expect(string.count_number_of_symbol["."]).to eq(1)
  end

  it 'displays top three words used' do
    expect(string.top_three_words).to eq([["me", 1], ["before", 1], ["tools", 1]])
  end

  it 'displays top three letters used' do
    expect(string.top_three_letters).to eq([["e", 5], ["s", 4], ["o", 4]])
  end

end
