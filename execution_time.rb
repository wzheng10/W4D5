#Quadratic n^2
# def my_min(array)
#     subset = []
    
#     array.each_with_index do |ele1, idx1|
#         array.each_with_index do |ele2, idx2|
#             if idx2 > idx1
#                 subset << [ele1, ele2]
#             end
#         end
#     end
#     subset.sort[0][0]
    # subset[0][0]
# end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]    
# p my_min(list)  

# O(n) time with O(1) memory.
def my_min_2(array)
    my_min = array.first
    (1..-1).each do |i|
        my_min = array[i] if array[i] < my_min
    end

    my_min
end

list = [ 0, 3, 5, 4, -5, 10, 1, -90 ]  
p my_min_2(list)