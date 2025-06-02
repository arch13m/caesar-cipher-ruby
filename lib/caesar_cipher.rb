# frozen_string_literal: true

def alphabet
  'abcdefghijklmnopqrstuvwxyz'
end

def alpha_lower_arr
  alphabet.split('')
end

def alpha_upper_arr
  alpha_lower_arr.upcase.split('')
end

def caesar_cipher(string, shift)
  # for each character in string:
  # find the index of the character in alphabet
  # subtract shift from this index
  # return alphabet at this new index
  # join the results of each character back together
  splitted = string.split('')
  shifted = []
  splitted.each do |i|
    if alpha_lower_arr.include?(i)
      idx = alpha_lower_arr.find_index(i)
      new_idx = idx + shift
      new_idx -= 26 if new_idx > 25
      shifted.push(alpha_lower_arr[new_idx])
    elsif alpha_upper_arr.include?(i)
      idx = alpha_upper_arr.find_index(i)
      new_idx = idx + shift
      new_idx -= 26 if new_idx > 25
      shifted.push(alpha_upper_arr[new_idx])
    else
      shifted.push(i)
    end
  end
  shifted.join
end
