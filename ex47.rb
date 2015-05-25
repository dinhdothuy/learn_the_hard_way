# Linh-Chaus-MacBook-Air:[/Users/thuydinh/projects]:$cd learn_the_hard_way
# Linh-Chaus-MacBook-Air:[...jects/learn_the_hard_way]:$cp -r ex46projects ex47projects
# Linh-Chaus-MacBook-Air:[...jects/learn_the_hard_way]:$cd ex47projects
# Linh-Chaus-MacBook-Air:[...he_hard_way/ex47projects]:$ls
# skeleton
# Linh-Chaus-MacBook-Air:[...he_hard_way/ex47projects]:$cd skeleton
# Linh-Chaus-MacBook-Air:[...ay/ex47projects/skeleton]:$ls
# NAME.gemspec  bin   doc   lib
# Rakefile  data    ext   tests
# Linh-Chaus-MacBook-Air:[...ay/ex47projects/skeleton]:$mv NAME.gemspec ex47.gemspec
# Linh-Chaus-MacBook-Air:[...ay/ex47projects/skeleton]:$mv bin/NAME bin/ex47
# Linh-Chaus-MacBook-Air:[...ay/ex47projects/skeleton]:$mv tests/test_NAME.rb tests/test_ex47.rb
# Linh-Chaus-MacBook-Air:[...ay/ex47projects/skeleton]:$mv lib/NAME.rb lib/ex47.rb
# Linh-Chaus-MacBook-Air:[...ay/ex47projects/skeleton]:$mv lib/NAME lib/ex47
# Linh-Chaus-MacBook-Air:[...ay/ex47projects/skeleton]:$find . -name "*NAME*" -print
# Linh-Chaus-MacBook-Air:[...ay/ex47projects/skeleton]:$touch lib/ex47/game.rb