require 'yaml'

p "hello world".to_yaml # => "--- hello world\n...\n"
p [1,2,3].to_yaml # => "---\n- 1\n- 2\n- 3\n"

f = File.open('veggies.yml', 'w')
YAML.dump(['carrot', 'broccoli', 'green bean'], f)
f.close

veggies = YAML.load(File.open('veggies.yml'))
p veggies # => ["carrot", "broccoli", "green bean"]