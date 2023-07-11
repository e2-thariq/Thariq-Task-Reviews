# 1. Write a Ruby program to draw a string as bold or italic text.
# =====================

def htmlTags(mystr, tag)
    "<#{tag}> #{mystr} </#{tag}>"
    # "<#{tag}> #{mystr} <#{/tag}>"
end
puts htmlTags("Ruby","i")
puts htmlTags("Ruby","b")



# 3. Write a Ruby program to lower case, upper case and capitalizes all the words of a given string.
# ============================================================

def stringCases(str)
    puts str.capitalize()
    puts str.downcase
    puts str.upcase
end

stringCases('ruby On Rails')


# 4. Write a Ruby program to check whether first and the last element are the same of an given array of integers. 
# The array length must be 1 or more.
# ===========================================

def stringSubstring(mystr, subString)
    if mystr.include?(subString)
        return "String has a same substring"
    else
        return "String has not same output"
    end
end
puts stringSubstring("Javascript","script")
puts stringSubstring("Ruby on Rails","Ruby on reels")


# 5. Write a Ruby program to remove all white space within a string.
# =========================================
def removeWhiteSpace(mystr)
    puts mystr.strip
end
removeWhiteSpace("   Javascript")


# 6. Write a Ruby program to remove last specified characters from a given string.
# ===========================

def insertAnotherString(myStr, n)
    n.times do 
        myStr.chop!
    end
    return myStr
end

puts insertAnotherString("javascript", 1)
puts insertAnotherString("javascript", 2)
puts insertAnotherString("javascript", 3)
puts insertAnotherString("javascript", 4)
puts insertAnotherString("javascript", 5)


# 7. Write a Ruby program to split a delimited string and convert it to an array.
# ============================================

def convertStringToArray(str)
    str = str.split("")
    puts "#{str}"
end

convertStringToArray("Thariq Hussain")


# 8. Write a Ruby program to remove a substring from a specified string.
# ====================================

def removeSubString(mystr, substring)
    mystr.slice! substring
    return mystr
end

puts removeSubString('Javascript','script')


# 9. Write a Ruby program to check whether a string starts with an other string.
# ===========================================

def stringStartWith(mystr, substring)
    return mystr.start_with?(substring)
end
puts stringStartWith("javascript", "java")


# 10. Write a Ruby program to count the occurrences of a specified character in a given string.
# ==============================

def findChar(mystr, substring)
    return mystr.index(substring)
end
puts findChar("javascript", "s")


# 11. Write a Ruby program to sort a string's characters alphabetically.
# =================================================

def sortAlphabetically(mystr)
    return mystr.chars.sort.join
end

puts sortAlphabetically('dcba')


# 12. Write a Ruby program to create a new array with the elements in reverse order from a given an array of integers length 3.
# =====================================

def reverseString(mystr)
    return mystr.reverse
end
puts reverseString("javascript")


# 13. Write a Ruby program to trim specific characters from a string.
# ================================

def removeChars(mystr, substring)
    if mystr[substring]  == substring
        return mystr.delete(mystr[substring])
    end
end
puts removeChars("javascript","a")


# 14. Write a Ruby program to remove the first and last two characters from a specified string.
# ===============================

def removeFirstAndLastTwoChars(mystr)
    return mystr[2...-2]
end
puts removeFirstAndLastTwoChars("Python")
puts removeFirstAndLastTwoChars("Javascript")



# 15. Write a Ruby program to get a substring from a specified position to the last char of a given string.

def specifyIndex(mystr, n)
    str = mystr[n...-1]
    return str
end

puts specifyIndex('javascript',5)


# 16. Write a Ruby program to get the number of lines in a given string.
# ======================================

mystr = "This is 
multiline statement
used for counting
and resulting the number
of lines typed 
in this variable"

puts mystr.lines.count


# 18. Write a Ruby program to remove a character from a given string 
# if it starts with that specified character.
# ============================

def delFirstChar(mystr, substring)
    if mystr[0] == substring
        return mystr.delete(mystr[0]) 
    end
end

puts delFirstChar("javascript","j")
