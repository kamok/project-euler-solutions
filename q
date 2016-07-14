[1mdiff --git a/problems 1-10/problem_9.rb b/problems 1-10/problem_9.rb[m
[1mindex 624b75a..d300a9c 100644[m
[1m--- a/problems 1-10/problem_9.rb[m	
[1m+++ b/problems 1-10/problem_9.rb[m	
[36m@@ -13,4 +13,33 @@[m
 # a or b cannot exceed 50%. If a or b exceed 50%, then 50% + b != c. [m
 # As you cannot divide the remaining 50% between b and c[m
 [m
[31m-#Find all a,b pairs under 500 where a pythagorean triplet exist.[m
\ No newline at end of file[m
[32m+[m[32m#Find all a,b pairs under 500 where a pythagorean triplet exist.[m
[32m+[m
[32m+[m[32m            class GF[m[41m  [m
[32m+[m[32m def initialize[m[41m  [m
[32m+[m[32m  puts 'In GF class'[m[41m  [m
[32m+[m[32m end[m[41m  [m
[32m+[m[32m def gfmethod[m[41m  [m
[32m+[m[32m  puts 'GF method call'[m[41m  [m
[32m+[m[32m end[m[41m  [m
[32m+[m[32mend[m[41m  [m
[32m+[m[41m  [m
[32m+[m[32m# class F sub-class of GF[m[41m  [m
[32m+[m[32mclass F < GF[m[41m  [m
[32m+[m[32m def initialize[m[41m  [m
[32m+[m[32m  puts 'In F class'[m[41m  [m
[32m+[m[32m end[m
[32m+[m
[32m+[m[32mdef gfmethod[m
[32m+[m	[32mputs 'F method call'[m
[32m+[m[32mend[m[41m  [m
[32m+[m[32mend[m[41m  [m
[32m+[m[41m  [m
[32m+[m[32m# class S sub-class of F[m[41m  [m
[32m+[m[32mclass S < F[m[41m  [m
[32m+[m[32m def initialize[m[41m  [m
[32m+[m[32m  puts 'In S class'[m[41m  [m
[32m+[m[32m end[m[41m  [m
[32m+[m[32mend[m[41m  [m
[32m+[m[32mson = S.new[m[41m  [m
[32m+[m[32mson.gfmethod[m[41m  [m
