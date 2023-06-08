sum_list(X,[]).
sum_list(X,[H|T]):-(X+H,[T]).

read_and_sum:-open('numbers.txt',read,Numbers),
read(Numbers,list),
sum_list(0,list)
close(Numbers),
open('output.txt',write,Output),
write(Output,),
close(Output).