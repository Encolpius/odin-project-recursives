def merge_arrays(left, right)
    sorted = []
    until left.empty? || right.empty?
        sorted << (left.first < right.first ? left.shift : right.shift)
    end
    sorted + left + right 
end

def merge_sort(arr)
    return arr if arr.size < 2
    first_half = merge_sort(arr[0...arr.size/2])
    second_half = merge_sort(arr[arr.size/2..-1])
    merge_arrays(first_half, second_half) 
end


puts merge_sort([4, 8, 6, 2, 1, 7, 5, 3])