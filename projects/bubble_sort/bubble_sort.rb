def bubbleSort(arr)
  n = arr.length
  # Traverse through all array elements
  for i in 0..n - 1
    # Last i elements are already in place
    for j in 0..n - 1 - i - 1
      # traverse the array from 0 to n-i-1
      # Swap if the element found is greater
      # than the next element
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
    end
  end
end

# Driver code to test above
arr = [64, 34, 25, 12, 22, 11, 90]

bubbleSort(arr)

print('Sorted array is: ')
for i in 0..arr.length
  print(arr[i].to_s + ' ')
end
