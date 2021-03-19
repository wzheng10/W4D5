# canagram?("gizmo", "sally")    #=> false
# anagram?("elvis", "lives")    #=> true

def first_anagram?(str1, str2)
  possible = str1.split("").permutation.to_a #O(n!)
  possible.map! {|ele| ele.join("")} #O(n)
  possible.include?(str2) #O(n)
end


#
def second_anagram?(str1, str2)
    arr1 = str1.split("") #O(n)
    arr2 = str2.split("") #O(n)
    arr1.each do |letter| #O(n)
        idx = arr2.find_index(letter)  #O(n)
        if idx != nil #O(1)
            arr2[idx] = "" # O(1) re-assginment
        end
    end

    #arr = O(1) join = O(n)
    #empty = O(1) #not checking all letters 
    #=> O(n)
    arr2.join("").empty? 
    
end

# p second_anagram?("gizmo", "sally")
# p second_anagram?("elvis", "lives") #true

#split : O(n)
#Array#sort : quick sort = nlog(n)
#O(n) + O(nlogn) + O(1) + O(n) + O(nlogn)
#O(nlogn)
def third_anagram?(str1, str2)
  str1.split("").sort == str2.split("").sort
end

p third_anagram?("gizmo", "sally")
p third_anagram?("elvis", "lives") #true