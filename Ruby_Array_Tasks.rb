# 1. Write a Ruby program to check whether a value exists in an array.
# ==========================================
newArr = ['Green','Pink','Orange','Red']
puts newArr.include?('Orange') 


# 2. Write a Ruby program to check whether 7 appears as either the first or last element in a given array. 
# The array length must be 1 or more.
# ====================================================
def findSevenOnArray(arr)
    if arr[0] == 7
        return true
    elsif arr[-1] == 7
        return true
    else
        return false
    end
end

puts findSevenOnArray([8,2,3,4,5,6,5])


# 3. Write a Ruby program to pick number of random elements from a given array.
# ======================================================
arr1 = [1,2,3,4,5,6,7,8,9]
puts arr1.sample(2)


# 4. Write a Ruby program to check whether first and the last element are the same of a given array of integers. 
# The array length must be 1 or more.
# ============================================
def findSameValuesInArray(arr)
    if arr[0] == arr[-1]
        return true
    else
        return false
    end
end

puts findSameValuesInArray([1,2,3,4,1])
puts findSameValuesInArray([1,2,3,4,5])


# 5. Write a Ruby program to compute the sum of elements in a given array.
# =====================================================================
arr1 = [10,20,30,55,76]
puts "#{arr1}"
puts "Total : #{arr1.inject(0){|sum,x| sum+x}}"


# 6. Write a Ruby program to remove duplicate elements from a given array :
# ===================================

# Method 1 :
def removeDuplicates1(arr1)
    puts"Duplicates Removed : #{arr1.uniq}"
end

# Method 2 :
def removeDuplicates2(arr1)
    puts"Duplicates Removed : #{arr1 & arr1}"
end


# 7. Write a Ruby program to check two given arrays of integers and test 
# whether they have the same first element or they have the same last element. 
# Both arrays length must be 1 or more.
# =================================================

def compareArrays(a, b)
    return a[0] == b[0] || a[-1] == b[-1]
end

puts compareArrays([2,2,3,4,4], [1,2,3,4,5])


# 8. Write a Ruby program to remove blank elements from a given array.
# =======================================================

def removeBlankArray(arr)
    puts "#{arr.reject{|blank|blank.empty?}}"
end

removeBlankArray(['apple','mango','','orange'])


# 11. Write a Ruby program to create an array with the elements "rotated left" 
# of a given array of ints length 3.
# ===============================================
def arrayRotate(arr)
    val = arr[1]
    arr[1] = arr[0]
    arr[0] = val
    puts arr
end

puts arrayRotate([1,2,5])


# 12. Write a Ruby program to create a new array with the 
# elements in reverse order from a given an array of integers length 3.
# =======================================================================

def reverseArray(arr)
    puts "#{arr.reverse}"
end
reverseArray([7,3,9,7])


# 13. Write a Ruby program to find the larger between the first and last elements of a given array of integers of length 3. 
# Replace all the other values to be that value. 
# Return the changed array.arr1 = [1,2,3]
# ========================================
puts "#{arr1}"
maxVal = arr1.max()
if arr1.max() == maxVal
    arr1[0] = maxVal
    arr1[1] = maxVal
end

puts "#{arr1}"


# 14. Write a Ruby program to compute the sum of the first 2 elements of a given array of integers. 
# If the array length is less than 2, just sum up the elements that exist, 
# returning 0 if the length of the array is 0.
# ========================================================

def addgivenArray(arr)
    if arr.length >=2
        arr.inject(0){|sum,x|sum+x}
    elsif arr.length < 2
        return 0
    else
    end
end
puts addgivenArray([1,2,3])


# 17. Write a Ruby program to check whether a given array of integers of length 2 contains a 4 or a 7.
# =====================================================================

def find_4_Or_7(arr)
    if arr[2] == 4 || arr[2] == 7
        return true
    else
        return false
    end
end

puts find_4_Or_7([1,2,4,5,6])
puts find_4_Or_7([1,2,7,5,6])
puts find_4_Or_7([1,2,3,5,6])


# 18. Write a Ruby program to check whether a given array of integers of length 2 does not contain a 6 or a 9.
# =====================================================================

def find_4_Or_7(arr)
    if arr[2] != 6 && arr[2] != 9
        return true
    else
        return false
    end
end

puts find_4_Or_7([1,2,6,5,6])
puts find_4_Or_7([1,2,9,5,6])
puts find_4_Or_7([1,2,4,5,6])


# 19. Write a Ruby program to check whether a given array of integers contains 3 twice, 
# or 5 twice. The array will be length 0, 1, or 2.
# ======================================================

def findTwice(arr)
    if arr[0] == 3 && arr[1] == 3 || arr[0] == 3 && arr[2] == 3 || arr[1] == 3 && arr[2] == 3
        puts "We have the value 3 twice"
    elsif arr[0] == 5 && arr[1] == 5 || arr[0] == 5 && arr[2] == 5 || arr[1] == 5 && arr[2] == 5
        puts "we have the value 5 twice"
    else
        puts "we have not double values"
    end
end

findTwice([1,3,3])
findTwice([1,5,5])
findTwice([1,5,2])


# 21. Write a Ruby program to compute the sum of two arrays (length 3) 
# and return the array which has the largest sum.
# ===========================================================

def findLargestArray(arr1, arr2)
    x = "Array 1 :#{arr1.inject(0){|sum, x|sum+x}}"
    y = "Array 2 :#{arr2.inject(0){|sum, x|sum+x}}"
    if x > y
        return x
    elsif y > x
        return y
    end
end

puts findLargestArray([1,2,3], [4,5,6])


# 22. Write a Ruby program to create a new array of length 2 
# containing the middle two elements from a given array of integers of even length 2 or more.
# =========================================================
def findMiddleArray(arr)
    if arr.length == 6
        puts arr[2,2]
    end
end

findMiddleArray([0,1,2,3,4,5])


# 23. Write a Ruby program to create a new array of length 4 containing all their elements 
# from two array of integers, length 2.
# ======================================================
def combineArray(arr1, arr2)
    result = arr1 + arr2
    puts "#{result}"
end

puts combineArray([1,2,3,4], [5,6,7,8])


# 24. Write a Ruby program to swap the first and last elements of a given array of integers, 
# length will be at least 1. Return the modified array.
# ===================================================================

def swapArray(arr)
    lastVal = arr[-1]
    arr[-1] = arr[0]
    arr[0] = lastVal
    puts "#{arr}"
end

swapArray([7, 8, 9, 10, 11])


# 25. Write a Ruby program to create a new array of length 3 containing the elements 
# from the middle of a given array of integers of odd length (at least 3).
# ================================================================================

def findMiddleValue(arr)
    if arr.length == 7
        puts arr[2,3]
    end
end

puts findMiddleValue([1,2,3,4,5,6,7])


# 27. Write a Ruby program to create a new array using first three elements of a given array of integers. 
# If the length of the given array is less than three return the original array.
# ====================================================================

def printFirstThreeArray(arr)
    newArr = arr[0,3]
    puts newArr
    if arr.length < 2
        puts arr
    end
end

printFirstThreeArray([1,2,4,3,5])
printFirstThreeArray([1,2])


# 28. Write a Ruby program to create a new array with the first element of two arrays. 
# If length of any array is 0, ignore that array.
# ==========================================================

def newArrayTwoArray(arr1, arr2)
    newArr = [arr1[0], arr2[0]]
    if arr1.empty?
        puts arr2
    elsif arr2.empty?
        puts arr1
    else
        puts newArr
    end
end

newArrayTwoArray([1,2,3],[5,6,7])


# 29. Write a Ruby program to get the number of even integers in a given array.
# =========================================

def findEvenNumbers(arr)
    for i in arr
        if i % 2 == 0
            puts i
        end
    end
end

findEvenNumbers([2,22,34,55,77,99])



# 30. Write a Ruby program to find the difference between the largest and 
# smallest values of a given array of integers and length 1 or more.
# =====================================================

def findBigSmall(arr)
    puts "Biggest Array : #{arr.max()}"
    puts "Smallest Array : #{arr.min()}"
end

findBigSmall([10,20,30,70])


# 31. Write a Ruby program to compute the average values of a 
# given array of except the largest and smallest values. 
# The array length must be 3 or more.
# =============================================

def findAverage(arr)
    sum_of_val = arr.inject(0){|sum, x| sum + x}
    no_of_val = arr.count
    average = sum_of_val / no_of_val
    puts "The Array : #{arr}"
    puts "The Average : #{average}"
end

findAverage([1,2,3,4,5,6,7,8,9])


# 32. Write a Ruby program to compute the sum of the numbers of a given array except the number 17 and 
# numbers that come immediately after a 17. Return 0 for an empty array.
# =============================================

def findSeventeen(arr)
    sum = arr.inject(0){|sum, x| sum + x}
    puts "Array : #{arr}"
    puts "Total : #{sum}"

    if arr [0]  == 17
        arr[0] = 0
    elsif arr[1] == 17
        arr[1] = 0
    elsif arr[2] == 17
        arr[2] = 0
    elsif arr[3] == 17
        arr[3] = 0
    elsif arr[4] == 17
        arr[4] = 0
    elsif arr[5] == 17
        arr[5] = 0
    else
        puts "Nothing Happens"
    end
    sum_of_array = arr.inject(0){|sum, x| sum + x}
    puts "Total Without Adding 17 :#{sum_of_array}"
end

findSeventeen([10,20,30,17,40,50])


# 33. Write a Ruby program to check whether the sum of all 
# the 3's of a given array of integers is exactly 9.
# =====================================

def findThrees(arr)

    if arr[0] && arr[1] && arr[2] == 3
        puts "First Three places has 3 :#{arr[0] + arr[1] + arr[2]}"
    elsif arr[0] && arr[2] && arr[3] == 3
        puts "1st, 3rd & 4th place has 3 :#{arr[0] + arr[2] + arr[3]}"
    elsif arr[1] && arr[2] && arr[3] == 3
        puts "1st, 2nd & 3rd place has 3 :#{arr[1] + arr[2] + arr[3]}"
    elsif arr[0] && arr[1] && arr[3] == 3
        puts "1st, 2nd & 4th place has 3 :#{arr[0] + arr[1] + arr[3]}"
    else
        puts "We dont have 3 3's"
    end

end

findThrees([3,3,2,1])


# 34. Write a Ruby program to check whether the number of 2's 
# is greater than the number of 5's of a given array of integers.
# =====================================================

def findTwosFives(arr)
    if arr.count(2) > arr.count(5)
        puts "No.2 is Greater"
    elsif arr.count(5) > arr.count(2)
        puts "No.5 is Greater"
    else
        puts "Both values are not greater"
    end
end
findTwosFives([2,2,2,3,4,5,5,5,5,5])


# 35. Write a Ruby program to check whether every element is a 3 or a 5 in a given array of integers.
# =============================================

def checkEveryElement(arr)
    i = 0
    while i <= arr.length
        if arr[i] != 3 && arr[i] != 5
            return false
        else
            return true
        end
        i += 1
    end
end

puts checkEveryElement([3,5,3,3])


# 36. Write a Ruby program to check whether it contains no 3 or it contains no 5.
# ==================================================

def checkContainsThree(arr)
    i = 0
    while i <= arr.length
        if arr[i] == 3 
            return true
        elsif arr[i] == 5
            return true
        else
            return false
        end
        i += 1
    end
end

puts checkContainsThree([3,7,3,3])
puts checkContainsThree([2,8,7,9])


# 37. Write a Ruby program to check whether a given value appears everywhere in a given array. 
# A value is "everywhere" in an array 
# if it presents for every pair of adjacent elements in the array.
# ================================================================

def findAdjacent(arr)
    i = 0
    while i < arr.length
        if arr[i] != 3 && arr[i+1] != 3
            return false
        else
            return true
        end
        i+=1
    end
end
puts findAdjacent([3,7,3,3])
puts findAdjacent([8,2,2,7])


# 38. Write a Ruby program to check whether a given array contains 
# a 3 next to a 3 or a 5 next to a 5, but not both.
# =======================================

def findThreeFive(arr)
    i = 0
    while i <= arr.length
        if arr[i] && arr[i+1] == 3 || arr[i] && arr[i+1] == 5
            return true
        else
            return false
        end
        i+=1
    end
end

puts findThreeFive([3,3,1,2])
puts findThreeFive([5,5,2,1])
puts findThreeFive([1,2,3,4])


# 39. Write a Ruby program to check whether a given array of integers contains two 6's next to each other, 
# or there are two 6's separated by one element, such as {6, 2, 6}.
# ===================================

def findSix(arr)
    i = 0
    while i < arr.length
        if arr[i] && arr[i+1] == 6 || arr[i] && arr[i+2] == 6
            return true
        else
            return false
        end
        i+=1
    end
end

puts findSix([6,6,2,3,4])
puts findSix([6,2,6,2,3,4])
puts findSix([6,2,3,4,5,6])


# 40. Write a Ruby program to check whether there is a 2 
# in the array with a 3 somewhere later in a given array of integers.
# =====================================================

def findtwoAndThree(arr)
    i = 0
    while i < arr.length
        if arr[i] && arr[i+1] == 2 && arr[i+4] == 3
            return true
        else
            return false
        end
        i+=1
    end
end

puts findtwoAndThree([2,2,4,5,3])
puts findtwoAndThree([2,2,3,5,5])


# 41. Write a Ruby program to check whether the value 2 appears in a 
# given array of integers exactly 2 times, and no 2's are next to each other.
# ====================================================================

def findTwoTwos(arr)
    if arr.count(2) == 2
        return true
    else
        return false
    end
end

puts findTwoTwos([1,3,2,2,4,5])


# 42. Write a Ruby program to convert an array into an index hash.
# =========================================================

def convertArray_Hash(arr)
    puts Hash[arr[0],arr[1],arr[2],arr[3],arr[4],arr[5]]
end

convertArray_Hash([1,2,3,4,5,6])


# 43. Write a Ruby program to find most occurred item in a given array.
# ===================================================

def againArray(arr)
    no_of_frequency = arr.inject(Hash.new(0)){|sum,x| sum[x] += 1; sum}
    puts no_of_frequency
end

againArray([10,20,30,30,40,40,10,10,10])



# 44. Write a Ruby program to check whether all items are identical in a given array.
# =============================================================

def findIdentical(arr)
    i = 0
    while i <= arr.length
        if arr[i] == arr[i] 
            return true
        else
            return false
        end
        i+=1
    end
end
puts findIdentical([10,20,30])
puts findIdentical([20,20,20,30])

# 45. Write a Ruby program to search items start with specified string of a given array.
# ==========================================================

def searchString(arr)
    puts arr.grep(/^ab/)
end

searchString(['absolute','abdomen','abs break','abstract','thanos'])


# 46. Write a Ruby program to iterate an array starting from the last element.
# =================================================

def getReverse(arr)
    puts arr.reverse
end

getReverse([10,20,30,40,10,10,50,60])


# 47. Write a Ruby program to iterate over the first n elements of a given array.
# =================================================

def iterateArray(arr, x)
    puts arr[0,x]
end

iterateArray([1,2,3,4,5,6,7,8,9], 5)


# 48. Write a Ruby program to sort a given array of strings by length.
# ===================================================

def sortByLength(arr)
    puts arr.sort_by(&:length)
end

sortByLength(['a','abcd','abc','ab'])


# 49. Loop an Array. Take the Odd Numbers. Take Greatest Odd Number : Murugan's Task 
def findOdd(arr)
    i = 0
    max_value = 0
    while i < arr.length
        if arr[i] % 2 != 0
            puts "Odd Array :#{arr[i]}"
            if max_value < arr[i]
                max_value = arr[i]
            end
        end
        i+=1
    end
    puts "Greatest Value : #{max_value}"
end

findOdd([10,20,33,55,77,99, 209, 201])
