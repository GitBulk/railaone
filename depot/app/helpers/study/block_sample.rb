def test
    yield
end

def test2(&block)
    block.call
end

test {puts "Hello world"}
test2 {puts "kkkkkkk"}

case value_to_compare
    when 0..40 then "Fail"
    when 61..80 then "Pass with Merit"
    else "Invalid Score"
end