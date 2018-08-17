#/usr/bin/env ruby

class Bucket
  attr_accessor :capacity, :current

  def initialize(capacity)
    raise unless capacity > 0

    @capacity = capacity
    @current = 0
  end

  def empty
    @current = 0
  end

  def fill
    @current = @capacity
  end

  # transfer TO bucket
  def transfer(bucket)
    return if self == bucket

    available = bucket.capacity - bucket.current
    return if available == 0

    if @current <= available
      # empty current bucket
      bucket.current += @current
      @current = 0
    else
      # fill other bucket
      @current -= available
      bucket.current = bucket.capacity
    end
  end

  def valid?
    @current <= @capacity || @current >= 0
  end
end


##############################
##### ---- solution ---- #####
##############################

def measure(bx, by, z)
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

def assert_valid_bucket(bucket)
  puts "Invalid bucket value #{bucket.inspect}" unless bucket.valid?
end

def assert(value)
  assert_equal(value, true)
end

def step_valid?(step)
  /b[xy]\.(?:fill|transfer|empty)/ === step
end

def test_4_3_2
  bx = Bucket.new(4)
  by = Bucket.new(3)
  steps = measure(bx, by, 2)

  assert_equal(steps.size, 8)

  steps.each do |step|
    puts "Invalid step -- #{step}" && raise unless step_valid?(step)

    eval(step)
    assert_valid_bucket(bx)
    assert_valid_bucket(by)
  end

  assert_equal(bx.current == 2 || by.current == 2)
end

