
require "byebug"
def my_min(list)
    lowest = 0

    list.each_with_index do |el1, i1|
        list.each_with_index do |el2, i2|
            if (i2 > i1) && (el1 < el2)
                lowest = el1
            end
        end
    end
    lowest
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)


# def my_min(list)
#     list.inject do |acc, el|
#         if el < acc
#             el
#         else
#             acc
#         end
#     end
# end

# p my_min(list)  # =>  -5

def largest_cont_subsum(list)
    current = 0
    highest = 0

    return list if list.length == 1
    return list.sum if list.length == 2

    (0...list.length - 1).each do |i|
        current = list[i] + list[i+1] 
        if current > highest
            highest = current
        end
    end
    highest     
end

# list = [5, 3, -7]
# list = [2, 3, -6, 7, -6, 7]
# list = [-5, -1, -3]
# p largest_cont_subsum(list)

