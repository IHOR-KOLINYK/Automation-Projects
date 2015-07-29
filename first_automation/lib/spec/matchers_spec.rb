require 'rspec'

describe 'Compare' do

  a = 4
  b = 3
  x = 12.5
  y = 12.8
  c = 'string'
  d = 'String'
  arr = [1,3,5]
  arr_1 = []
  arr_2 = ['a','b',]
  my_string = 'my name is Ihor'


  it 'should compare numbers' do
     expect(a).not_to eql(b)
     expect(c).to_not eql(d)
     puts c + d
  end

  it 'should compare numbers 1' do
     expect(a).not_to be == (b)
     puts a + b
  end

  it 'should compare numbers 2' do
     expect(a).to be == (4)
     print a
  end


  it 'should compare numbers 3' do
    expect(arr).not_to be_empty
    puts arr
    expect(arr_1).to be_empty
    puts arr_1
  end

  it 'should compare numbers 4' do
    expect(arr_1).to be_empty
    puts arr_2 + arr
  end

  it 'should compare numbers 5' do
    expect(arr).to all(be_odd)
    puts arr
    expect(arr_1).to be_empty
    puts arr_1
  end

  it 'should compare numbers 6' do
    expect(1..5).to cover(b,a)
    puts arr
    expect(1..5).not_to cover(6)
    puts arr
  end

  it 'should compare numbers 7' do
    expect(c).to end_with("ng")
    puts arr
    expect(1..5).not_to cover(6)
    expect(1..5).to cover(a)
    puts arr_2
  end

  it 'should compare numbers 8' do
    expect(arr).to end_with(5)
    expect(arr[1]).to eql(b)
    puts arr[0]
  end

  it 'should compare numbers 9' do
    expect(x).not_to be_within(0.3).of(y)
    expect(arr[1]).to eql(b)
    puts arr[0]
  end

  it 'should compare numbers 10' do
    expect(arr).to contain_exactly(1,3,5)
    expect(arr).not_to contain_exactly(1,3,6)
    puts arr
  end

  it 'should compare numbers 11' do
    expect(arr).to include(b)
    puts arr
  end

  it 'should compare numbers 12' do
    expect(c).to match("st")
    expect(arr).not_to contain_exactly(1,3,6)
    puts arr
  end

  it 'should compare numbers 13' do
    expect(my_string).to start_with("my")
    expect(arr).not_to contain_exactly(1,3,6)
  end

end
