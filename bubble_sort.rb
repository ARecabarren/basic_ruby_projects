def bubble_sort(array)
    array_clone = array.clone
    reordered = false
    until reordered do
        (array.length - 1).times do |time|
            if array[time] > array[time + 1]

                temporal_variable = array[time].clone
                temporal_variable2 = array[time+1].clone
                array[time] = temporal_variable2
                array[time + 1] = temporal_variable
                reordered == false
            end

        end
        if array == array_clone
            reordered = true
        else
            array_clone = array.clone
        end
    end

    print array


end

bubble_sort([4,3,78,2,0,2,4,7,2,4,23,75,3,86,34])