# canagram?("gizmo", "sally")    #=> false
# anagram?("elvis", "lives")    #=> true

def first_anagram?(str1, str2)
  possible = str1.split("").permutation.to_a #O(n!)
  possible.map! {|ele| ele.join("")} #O(n)
  possible.include?(str2) #O(n)
end


def second_anagram?(str1, str2)
    arr1 = str1.split("")
    arr2 = str2.split("")
    arr1.each do |letter|
        idx = arr2.find_index(letter)
        if idx != nil
            arr2[idx] = ""
        end
    end

    arr2.empty?
end

p second_anagram?("gizmo", "sally")
p second_anagram?("elvis", "lives") #true