def merge_sort(array)

    if array.length > 1
        b = merge_sort(array[0...array.length/2])
        c = merge_sort(array[array.length/2...array.length])
        i_array = 0
        i_b = 0
        i_c = 0
        while i_b <= b.length-1 && i_c <= c.length-1
            if b[i_b] < c[i_c]
                array[i_array] = b[i_b]
                i_b += 1
            else
                array[i_array] = c[i_c]
                i_c += 1
            end
            i_array += 1
        end
        if i_b == b.length
            array[i_array...array.length] = c[i_c...c.length]
        else
            array[i_array...array.length] = b[i_b...b.length]
        end
    end
    return array

end