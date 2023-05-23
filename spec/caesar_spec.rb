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
    it "Shift with big positive index" do
        to_code = 'Zz'
        ciphed = caeser_cipher(to_code, 83)
        expect(ciphed).to eql('Ee')
    end
    it "Shift with big negative index" do
        to_code = 'Ee'
        ciphed = caeser_cipher(to_code, -83)
        expect(ciphed).to eql('Zz')
    end
    it "Shift with positive index and special characters" do
        to_code = 'What a string!'
        ciphed = caeser_cipher(to_code, 5)
        expect(ciphed).to eql('Bmfy f xywnsl!')
    end
    it "Shift with negative index and special characters" do
        to_code = 'Bmfy f xywnsl!'
        ciphed = caeser_cipher(to_code, -5)
        expect(ciphed).to eql('What a string!')
    end
end