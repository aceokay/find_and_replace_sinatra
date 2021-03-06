require('rspec')
require('find_and_replace')
require('pry')

describe('String#find_and_replace') do

  it('takes a single word string and replaces it with a designated string') do
    expect("onion".find_and_replace("onion","ham")).to(eq("ham"))
  end

  it('takes a two word string and replaces one word with a designated string') do
    expect('green ham'.find_and_replace("ham","onion")).to(eq("green onion"))
  end

  it('takes a multi-word string with repeated words, and replaces multiple instances of a string with a designated string') do
    expect("I am walking my cat to the cathedral".find_and_replace("cat", "dog")).to(eq("I am walking my dog to the doghedral"))
  end

end
