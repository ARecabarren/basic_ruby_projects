#spec/caesar_rspec.rb
require './lib/caesar_cipher.rb'

describe "#caeser_cipher" do
    it "Shift with positive index" do
        to_code = 'Zz'
        ciphed = caeser_cipher(to_code, 5)
        expect(ciphed).to eql('Ee')
    end
    it "Shift with negative index" do
        to_code = 'Ee'
        ciphed = caeser_cipher(to_code, -5)
        expect(ciphed).to eql('Zz')
    end
end