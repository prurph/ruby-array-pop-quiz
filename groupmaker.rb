people = ['Adi', 'Adrian', 'Alex', 'Anthony', 'Ben', 'Brian', 'Bryan', 'Chloe', 'Eric', 'Jane', 'Jeff', 'Jillian', 'Joe', 'Luke', 'Matt', 'Nick', 'Nicky', 'Ralph', 'Ron', 'Ryan', 'Sandip', 'Sean', 'Shefali', 'Simon', 'Stephen']

def mixer(array, groupsize)
  shuffled_array = array.shuffle
  num_groups = (array.length / groupsize).to_i
  finished_groups = []

  num_groups.times do
    finished_groups << shuffled_array.shift(groupsize)
  end
  finished_groups[-1] = finished_groups.last + shuffled_array
  finished_groups
end
