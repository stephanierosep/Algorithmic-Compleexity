counter = 1
rangemin = 0
RANGEMAX = 100000
while rangemin != RANGEMAX
  rangemin = rangemin + 5000
  results = []
  counter = 1

  while counter <= 15
    array = []
    range = (1..rangemin)
    range.each do |n|
      array.push(n)
    end

    start = Time.now
    array.shuffle
    finish = Time.now
    result = finish - start
    counter += 1
    results << result
  end

  avg = results.sum.to_f / results.length
  # median
  median = results.sort[8]
  puts "#{rangemin}\t#{avg}\t#{median}"

end
