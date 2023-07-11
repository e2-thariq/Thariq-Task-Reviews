existingString = String.new("if") 
newString = "if thariq is so tall he could make basket ball team"

if newString[0,2] == "if"
    existingString.clear
    puts newString
else
    puts existingString+' '+newString
end





# print string and print string infinite  :
# ============================================
givenString = 'Thariq'
if givenString.length < 3
    for i in (1..100)
        puts givenString
    end
else
    puts givenString
end



# Buy the Input of Sphere and Give Volume of the Circle :
def getSphereVolumes(r)
    v =  (r ** 3) * (3.14) * (4/3)
    puts "Volume of Sphere : #{v}"
end

getSphereVolumes(9)


# Find who is Minor :
# ========================

puts "Enter the Age : "
persons_age = gets.chomp.to_i

if persons_age >= 18
    puts "You are not Minor"
else
    puts "You are Minor"
end


# Find out the Max Value : 
# ==========================
val1 = 50
val2 = 100

if val1 > val2
    puts "The max val is val1: #{val1}"
elsif val2 > val1
    puts "The max val is val2: #{val2}"
else
end


# Return 20 if one of the value is 20
# ========================================
x = 130
y = 25
if x == 20
    puts "X value has the Number : #{x}"
elsif y == 20
    puts "Y value has the Number : #{y}"
elsif x != 20 && y != 20
    puts "Either one of them is not the Number 20. The Addition is : #{x+y}"
end



# Find Greatest of Three Numbers:
numbers = [10,20,30]
puts "The Largest number is : #{numbers.max()}"


# Check whether the number is in range of 100 & 200
# ==================================================
x = 15
y = 15

if x!=y
    puts "Normal Addition Value : #{x + y}"
else 
    puts "Double Return : #{(x+y)*2}"
end


# Print something 9 times :
# ============================
i = 0
while i <= 9
    puts "prints 9 times"
    i += 1
end


# Add first character on string to the last : 
# ==============================================

def lettersChange(name)
    x = name[0] * 2
    result = name + x
    puts result
end

lettersChange("mango")


# Check Temperatures : 
# ==============================
temperature1 = -18
temperature2 = 109

if temperature2 >= 100
    puts "The temperature is Higher : #{temperature2} %c"
end
if temperature1 < 0
    puts "The Temperature went Minus : #{temperature1} %c"
end


# print 34 upto 41
for x in (34..41)
    puts x
end



# Print 1 to 10 in even
# =========================
for x in (1..10) do
    if x % 2 == 0
        puts x
    end
end



#  compute the absolute difference between n and 33 
# and return double the absolute difference if n is over 33. :
# ==============================================================

num1 = 13
num2 = 21
result = num1 - num2
if result <= 33
    puts "The Result : #{result}"
elsif result > 33
    puts "The Result is More than Expected :  #{result * 2}"
else
end



# Loop Numbers in Reverse But in Odd numbers :
# ==============================================

10.downto(1) do |x|
    if x % 3 == 0
        puts x
    end
end




# check two non-negative integer values and return true if they have the same last digit.x = [1,2,3,4,5]
# ==========================================================
y = [5,4,3,2,4]

if x[-1] == y[-1]
    puts "Both Last digits are equal"
else
    puts "Not Same Last Digits"
end




# retrieve the total marks where subject name and marks of a student stored in a hash.
# ==================================================================================

studentMarks = {
    'Literature' => 78,
    'Science' => 89,
    'Math' => 98
}

tot = studentMarks['Literature'] + studentMarks['Science'] + studentMarks['Math']  
puts "Total Marks : #{tot}"




# Print something 20 times :
# =========================
p = "#"
20.times do |x|
    puts "#{p}"
end



# Find the Leap Year :
# ====================
def testLeapYear(year)
    if year % 4 == 0
        puts "Its a Leap Year : #{year}"
    else
        puts "Its not a Leap Year "
    end
end

testLeapYear(1998)




# Ignore a string in an Array :
# =================================

newString = ['python','Java','javascript','ruby','nodejs','reactjs']
if newString[1] == 'java' || 'Java'
    newString[1].clear
    puts newString
else
    puts newString
end



# Create new string using existing string :
# =============================================

givenString = 'pseudo code'
if givenString[0] == 'p' && givenString[1] == 's'
    puts String.new("New String Created")
else
    puts "Either one of them are in correct words"
end




# Find Equal return 0, find closest to 10 return value
# ===================================================

x = 10
y = 10
emptyValue = 0
if x == 7 || x == 8 || x == 9 || x == 10
    puts "x : #{x}"
elsif y == 7 || y == 8 || y == 9 || y == 10
    puts "y : #{y}"
elsif x == 7 || x == 8 || x == 9 || x == 10 && y == 7 || y == 8 || y == 9 || y == 10
    puts "x : #{x} , y :#{y}"
else
end

if x == y
    puts "Both values Equal : #{emptyValue}"
end

if x == 7 || x == 8 || x == 9 || x == 10 && y == 7 || y == 8 || y == 9 || y == 10
    puts "Both the Values are Closest to the 10 : x : #{x}, y : #{y}"
end




# check and return true if both values in the range
# ====================================================
x = 1..10
y = 20..35

if x.include?(9) && y.include?(29)
    puts "Both Values are in Range"
else
    puts "Either on is not in the range"
end




# Find Given Character in string: 39
# =================================
fullName = "Thariq"
if fullName.include?("i")
    puts "Given String contains 'i'"
else
    puts "Given string contains No 'i'"
end



# Count number of f's in given array :
# =========================================
arr1 = [1,2,3,4,5,6,7,5,8,5]
puts arr1.count(5)



# Check whether 7 is present in specified inded
# =============================================
arr1 = [0,1,2,7,3,4,5,6]

if arr1[0,5].include?(7)
    puts "Found '7' on given Range. its on the Index number : #{arr1.find_index(7)}"
else
    puts "7 is not specified in the given range"
end



# find sequence of number 10 20 30
arr1 = [50, 10, 20, 30, 50, 60, 70, 90]

for i in (0...arr1.length-2)
    if  arr1[i] == 10 && arr1[i+1] == 20 && arr1[i+2] == 30 
        puts 'correct'
    else
        puts 'incorrect'
    end
end




# find last digit in numbers:
# ============================
def findSameLastDigit(a,b)
    a.to_s
    b.to_s
    if a[-1] == b[-1] 
        puts "Values with same last digit : #{a} #{b}"
    else
        puts "Different digits"
    end
end

findSameLastDigit(567, 867)



# Find Eleven :
# ================
def findEleven(a,b)
    num1 = a
    num2 = b
    numAdd = num1 + num2
    numSub = num1 - num2
    if numAdd == 11 || numSub == 11 || num1 == 11 || num2 == 11
        puts true
    else
        puts false
    end
end

findEleven(5,1)




# find lowest, find highest, find div by 5
# =========================================
arr1 = [10, 30]
emptyVal = 0
puts"Higher Value :  #{arr1.max()}"

if arr1[0] % 5 == 0 && arr1[1] % 5 == 0 
    puts "Both Remainders are same : minimum value : #{arr1.min()}"
else
    puts "One of the Number is not Divisible by 5"
end

if arr1[0] == arr1[1]
    puts emptyVal
end



# find seventeen :
# ========================
def findSeventeen(a,b,c)
    if a == 17
        return 0
    elsif b == 17
        return a
    elsif c == 17
        return a + b
    end
end

puts findSeventeen(10,17,90)
puts findSeventeen(17,10,19)
puts findSeventeen(10,90,17)



# compare 3 ints & return true if y or z is close nearly 1
# ========================================================

def compareIntegers(x,y,z)
    if y>=z || y<=z
        puts "y and z values are close to 1"
    else
        puts "Y and Z values are far more away"
    end
end

compareIntegers(10,19,25)
