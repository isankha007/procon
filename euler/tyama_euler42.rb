#!/usr/bin/ruby
#wget -O - https://projecteuler.net/project/resources/p042_words.txt
require 'json'
a=JSON.parse('['+gets.chomp+']')
h={}
1.step(100){|i|h[i*(i+1)/2]=1}
r=0
a.size.times{|i|
	x=0
	a[i].each_byte{|n|x+=n-64}
	if h[x] then r+=1 end
}
p r