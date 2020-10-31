begin
#Linear Search

# Julia code to linearly search x in arr[].
# If x is present then return its location,
# otherwise return -1
import Base:length,show,AbstractArray
arr = [2, 3, 4, 10, 40]
x = 10
n = length(arr)

function linearsearch(arr::AbstractArray{},n,x)
	for i in 1:n
		if arr[i] == x
		 	return i
		else
				continue
		end
	end
	return -1
end
global result=-1
# Function call
# for i in 1:n
# 	if arr[i] == x
# 		global result=i
# 		break
# 	else 
# 		continue
# 	end
# end
result=linearsearch(arr::AbstractArray{},n,x)
	
println("Result after function execution:",result)
if result == -1
    println("Element:",x," is not present in array",arr)
else
    println("Element:",x," is present at index:", result," in array",arr)
end
end
