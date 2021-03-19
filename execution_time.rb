#Quadratic n^2
def my_min(array)
    subset = []
    
    array.each_with_index do |ele1, idx1|
        array.each_with_index do |ele2, idx2|
            if idx2 > idx1
                subset << [ele1, ele2]
            end
        end
    end
    subset.sort[0][0] #log linear O(nlogn)
end


# O(n) time with O(1) memory.
def my_min_2(array)
  my_min = array.first
  (1..array.length-1).each do |i| 
    my_min = array[i] if array[i] < my_min
  end
  
  my_min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]    
# p my_min(list)  
# p my_min_2(list)

# O(n^3) using nested loops
def largest_contiguous_subsum(list) 
	subs = []
# O(n^3)
  (0..(list.length-1)).each do |idx1|
    (idx1..(list.length-1)).each do |idx2|
      subs << list[idx1..idx2]
		end
	end
	#O(n^3) #make into do block to see the complexity
	# subs.map! { |arr| arr.sum}.max
	subs.map! do |arr|
		arr.sum
	end
	subs.max
end

list = [5,3,-7]
list2 = [2, 3, -6, 7, -6, 7]
list_neg = [-5,-1,-3]
# p largest_contiguous_subsum(list)

#[5,3,-7]
#lar = 5
#cur = 5
#[5] [5,3] [5,-7] [3] [3,-7] [-7] [5,3,-7]
require 'byebug'
def largest_contiguous_subsum_2(list)
	largest_num = list.first
  current_num = list.first

  (1...list.length).each do |i|		#linear
    current_num = 0 if current_num < 0
    current_num += list[i]
    largest_num = current_num if current_num > largest_num
  end
  largest_num
end

p largest_contiguous_subsum_2(list)
p largest_contiguous_subsum_2(list2)
p largest_contiguous_subsum_2(list_neg)
