first_thread = Thread.new {
  10.times { p "hello" }
}

second_thread = Thread.new {
  10.times { p "world" } 
}

[first_thread, second_thread].each { | thread | thread.join }