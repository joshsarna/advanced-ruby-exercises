f = File.open('veggies.sav', 'w')
Marshal.dump(['carrot', 'broccoli', 'green bean'], f)
f.close

veggies = Marshal.load(File.open('veggies.sav'))
p veggies # => ["carrot", "broccoli", "green bean"]