#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
    # Write your code here
    if arr[0] != arr[1]
     $prev = 0 
     $prev2 = Float::INFINITY
     i = 0
     5.times do
       $res = arr.reject { |n| n == arr[i] }.sum
       $prev = $res if $res > $prev
       i = i + 1
      end
      i = 0
     5.times do
       $res2 = arr.reject { |n| n == arr[i] }.sum
       $prev2 = $res2 if $res < $prev2
       i = i + 1
      end
     print "#{$prev2} #{$prev}"
    else
        print "#{arr.sum} #{arr.sum}"
    end
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
