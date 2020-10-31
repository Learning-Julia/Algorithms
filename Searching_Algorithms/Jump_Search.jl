begin
# Jump Search

# Julia code to jump search x in arr[].
# If x is present then return its location,
# otherwise return -1
import Base:length,show,AbstractArray
arr = [ 0, 1, 1, 2, 3, 5, 8, 13, 21, 
    34, 55, 89, 144, 233, 377, 610 ] 
x = 610
n = length(arr) 
function jumpsearch(arr::AbstractArray{},n,x)
    
    # Finding block size to be jumped 
    step = sqrt(n) 
      
    # Finding the block where element is 
    # present (if it is present) 
    prev = 1
    while arr[round(Int,floor(min(step, n)))] < x
        prev = step 
        step += sqrt(n) 
        if prev >= n
            return -1
		end
	end
    # Doing a linear search for x in  
    # block beginning with prev. 
    while arr[round(Int,floor(prev))] < x
        prev += 1
          
        # If we reached next block or end  
        # of array, element is not present. 
        if prev == min(step, n)
            return -1
		end
	end
    # If element is found 
    if arr[round(Int,floor(prev))] == x
        return prev 
	end  
    return -1
end
global result=-1

result=jumpsearch(arr,n, x) 
	
println("Result after function execution:",result)
if result == -1
    println("Element:",x," is not present in array",arr)
else
    println("Element:",x," is present at index:", result," in array",arr)
end
end
