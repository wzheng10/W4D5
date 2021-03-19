# canagram?("gizmo", "sally")    #=> false
# anagram?("elvis", "lives")    #=> true

def first_anagram?(str1, str2)
  possible = str1.split("").permutation.to_a #O(n!)
  possible.map! {|ele| ele.join("")} #O(n)
  possible.include?(str2) #O(n)
end


def second_anagram?(str1, str2)

end

# p first_anagram?("gizmo", "sally")
# find_index and delete