require 'rails_helper'

RSpec.describe FizzBuzz, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  let!(:fizzbuzz){ Array.new }

  before(:each){ (1..100).each do |f|
    fizzbuzz.push(FizzBuzz.create(value: f, fizzbuzz: f))
  end }
  after(:all){FizzBuzz.delete_all}  

  it ".to_Fizz" do
    answer = FizzBuzz.to_Fizz fizzbuzz
    fizzbuzz.each do |t|
  	 	if t.value%3 == 0
  	  		expect(t.fizzbuzz).to eq("Fizz")
  	  		expect(t.fizzbuzz).not_to eq(t.value.to_s)
  	  	else
  	  		expect(t.fizzbuzz).to eq(t.value.to_s)
  	  		expect(t.fizzbuzz).not_to eq("Fizz")
  	  	end
  	end
  end

  it ".to_Buzz" do
    answer = FizzBuzz.to_Buzz fizzbuzz
    fizzbuzz.each do |t|
      if t.value%5 == 0
          expect(t.fizzbuzz).to eq("Buzz")
          expect(t.fizzbuzz).not_to eq(t.value.to_s)
        else
          expect(t.fizzbuzz).to eq(t.value.to_s)
          expect(t.fizzbuzz).not_to eq("Buzz")
        end
    end
  end

  it ".to_FizzBuzz" do
    answer = FizzBuzz.to_Fizz fizzbuzz
    answer = FizzBuzz.to_Buzz fizzbuzz
    answer = FizzBuzz.to_FizzBuzz fizzbuzz
    fizzbuzz.each do |t|
      if t.value%15 == 0
          expect(t.fizzbuzz).to eq("FizzBuzz")
      elsif t.value%5 == 0
          expect(t.fizzbuzz).to eq("Buzz")
      elsif t.value%3 == 0
          expect(t.fizzbuzz).to eq("Fizz")
      else
          expect(t.fizzbuzz).to eq(t.value.to_s)
      end
    end
  end

end


