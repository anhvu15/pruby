haiky = <<-EOF
A string with three lines
is considered multi lines
Ruby code haiky
EOF
haiky.each_line { |line| puts "*#{line}"}

5.downto(3){|n| puts "#{n}.."}