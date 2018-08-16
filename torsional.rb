#!/usr/bin/env ruby

##############################
##### ---- solution ---- #####
##############################

def torsional(n)
  ## your code here
  []
end

##############################
##### ----- tests ------ #####
##############################

def assert_equal(actual, expected)
  if actual == expected
    puts "Test Passed: Value == #{actual}"
  else
    puts "Failed, expected #{expected}, got #{actual}"
  end
end

def test_torsional_100
  t = torsional(100)
  assert_equal(t.size, 13)
  assert_equal(t, [2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, 97])
end

def test_torsional_1_000_000
  t = torsional(1_000_000)
  assert_equal(t.size, 55)
  assert_equal(t,  [2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73,
                    79, 97, 113, 131, 197, 199, 311, 337, 373,
                    719, 733, 919, 971, 991, 1193, 1931, 3119, 3779,
                    7793, 7937, 9311, 9377, 11939, 19391, 19937, 37199,
                    39119, 71993, 91193, 93719, 93911, 99371, 193939,
                    199933, 319993, 331999, 391939, 393919, 919393,
                    933199, 939193, 939391, 993319, 999331])
end

require 'timeout'

Timeout::timeout(5) do
  test_torsional_100
  test_torsional_1_000_000
end

