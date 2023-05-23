#lib/caesar_cipher.rb
def is_lowercase?(single_letter)
    letter_as_i = single_letter.ord
    if letter_as_i.between?(97,122)
        true
    elsif letter_as_i.between?(65,90)
        false
    end
end

def shift_computation(letter_as_i,is_lowercase)
    if is_lowercase
        case 
        when letter_as_i > 122
            ((letter_as_i - 122)%26) + 96
        when letter_as_i < 97
            123 - ((97 - letter_as_i)%26)
        else
            letter_as_i
        end
    else
        case 
        when letter_as_i> 90
            ((letter_as_i - 90)%26) + 64
        when letter_as_i< 65
            91 - ((65 - letter_as_i)%26)
        else
            letter_as_i
        end
    end
end

def is_letter?(character)
    ascii_code = character.ord
    ascii_code.between?(65,90) || ascii_code.between?(97,122)
end
def caeser_cipher(string,shift)

    ciphed_string = ''
    string.each_char do |letter|
        
        if is_letter?(letter)
            letter_as_i = letter.ord
            is_lowercase = is_lowercase?(letter)
            letter_as_i += shift
            ciphed_string += shift_computation(letter_as_i,is_lowercase).chr
        else
            ciphed_string += letter
        end
        
    end
    ciphed_string

end

# puts caeser_cipher('Zz',5)
# puts caeser_cipher('Ee',-5)
# puts caeser_cipher('Zz',83)
# puts caeser_cipher('Ee',-83)
# puts caeser_cipher('What a string!', 5)
# puts caeser_cipher('Bmfy f xywnsl!', -5)
# puts caeser_cipher('Hello, World!', 75)
# puts caeser_cipher('Ebiil, Tloia!', -75)



