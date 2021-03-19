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
    subset.sort[0][0]
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

#Quadratic O(n^2)
#using nested loops
def largest_contiguous_subsum(list) 
	subs = []
# O(n^2)
  (0..(list.length-1)).each do |idx1|
    (idx1..(list.length-1)).each do |idx2|
      subs << list[idx1..idx2]
		end
	end
	#O(n)
	subs.map! { |arr| arr.sum}.max
end

list = [5,3,-7]
p largest_contiguous_subsum(list)

def largest_contiguous_subsum_2(list)
	
end
