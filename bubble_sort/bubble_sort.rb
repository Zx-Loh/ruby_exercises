list = [4,3,78,2,0,2]

def bubble_sort(array)
    n = array.length()

    loop do
        swapped = false
        for i in 1..n-1
            if array[i-1] > array[i]
                array[i-1], array[i] = array[i], array[i-1]
                swapped = true
                p array
            end
        

        end
        n -= 1
        
        break if swapped == false
    end
    p array
end

bubble_sort(list)