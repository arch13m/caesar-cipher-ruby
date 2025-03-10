def caesar_cipher(string, shift)
    # for each character in string:
        # find the index of the character in alphabet
        # subtract shift from this index
        # return alphabet at this new index
    # join the results of each character back together
    alphaLower = 'abcdefghijklmnopqrstuvwxyz'
    alphaLowerArr = alphaLower.split('')
    alphaUpper = alphaLower.upcase
    alphaUpperArr = alphaUpper.split('')
    splitted = string.split('')
    shifted = []
    for i in splitted
        if alphaLowerArr.include?(i)
            idx = alphaLowerArr.find_index(i)
            new_idx = idx + shift
            new_idx -= 26 if new_idx > 25
            shifted.push(alphaLowerArr[new_idx])
        elsif alphaUpperArr.include?(i)
            idx = alphaUpperArr.find_index(i)
            new_idx = idx + shift
            new_idx -= 26 if new_idx > 25
            shifted.push(alphaUpperArr[new_idx])
        else
            shifted.push(i)
        end
    end
    shifted.join()
end
