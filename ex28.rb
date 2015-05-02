# NOT 
# !false  ->   true
# !true   ->  false

# OR (||) 
# true || false   ->  true
# true || true    ->  true
# false || true   ->  true
# false || false  ->  false

# AND (&&) 
# true && false   ->  false
# true && true    ->  true
# false && true   ->  false
# false && false  ->  false

# NOT OR
# not (true || false)   ->  false
# not (true || true)    ->  false
# not (false || true)   ->  false
# not (false || false)  ->  true

# NOT AND
# !(true && false)  ->  true
# !(true && true)   ->  false
# !(false && true)  ->  true
# !(false && false) ->  true

# != 
# 1 != 0  ->  true
# 1 != 1  ->  false
# 0 != 1  ->  true
# 0 != 0  ->  false

# == 
# 1 == 0  ->  false
# 1 == 1  ->  true
# 0 == 1  ->  false
# 0 == 0  ->  true