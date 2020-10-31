begin
# Interpolation Search

# Julia code to interpolation search x in arr[].
# If x is present then return its location,
# otherwise return -1
import Base:length,show,AbstractArray
arr = [10, 12, 13, 16, 18, 19, 20, 21,22, 23, 24, 33, 35, 42, 47] 
x = 18
n = length(arr)
function interpolationsearch(arr::AbstractArray{},n,x)
# Find indexs of two corners 
    lo = 1
    hi = n
   
    # Since array is sorted, an element present 
    # in array must be in range defined by corner 
    while lo <= hi && x >= arr[lo] && x <= arr[hi]
        if lo == hi
            if arr[lo] == x 
                return lo; 
			end
            return -1; 
		end 
        # Probing the position with keeping 
        # uniform distribution in mind. 
        pos  = lo + round(Int,(float(hi - lo)) / ( arr[hi] - arr[lo])) * ( x - arr[lo])
  
        # Condition of target found 
        if arr[pos] == x
            return pos 
		end
        # If x is larger, x is in upper part 
        if arr[pos] < x
            lo = pos + 1; 
   # If x is smaller, x is in lower part 
        else
            hi = pos - 1; 
		end
	end
    return -1
end
global result=-1

result=interpolationsearch(arr, n, x) 
	
println("Result after function execution:",result)
if result == -1
    println("Element:",x," is not present in array",arr)
else
    println("Element:",x," is present at index:", result," in array",arr)
end
end
