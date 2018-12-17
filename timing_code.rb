counter = 1
rangemin = 0
RANGEMAX = 100000
while rangemin != RANGEMAX
 rangemin = rangemin + 5000
 counter = 1
 puts "next array #{rangemin}"
 while counter <= 5
    start = Time.now
    array = []
    range = (1..rangemin)
    range.each do |n|
      array.push(n)
    end

 finish = Time.now
 result = finish - start
 counter += 1
 puts result
  end
end
