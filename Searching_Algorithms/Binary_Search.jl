begin
# Binary Search

# Julia code to recursive binary search x in arr[].
# If x is present then return its location,
# otherwise return -1
import Base:length,show,AbstractArray
arr = [2, 3, 4, 10, 40]
x = 
n = length(arr)
l=1
function binarysearch(arr::AbstractArray{},l,r,x)
    if r >= l
		value=r-l//2
        mid = round(Int,l + (r - l) // 2)
        # If element is present at the middle itself 
        if arr[mid] == x 
            return mid 
        # If element is smaller than mid, then it  
        # can only be present in left subarray 
		elseif arr[mid] > x
            return binarysearch(arr, l, mid-1, x) 
        # Else the element can only be present  
        # in right subarray 
        else
            return binarysearch(arr, mid + 1, r, x) 
		end
    else
        # Element is not present in the array 
        return -1
	end
end
global result=-1

result=binarysearch(arr,l, n, x) 
	
println("Result after function execution:",result)
if result == -1
    println("Element:",x," is not present in array",arr)
else
    println("Element:",x," is present at index:", result," in array",arr)
end
end
