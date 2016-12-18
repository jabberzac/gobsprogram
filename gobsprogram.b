[
Gob's program in Brainfuck(1.0)

An implementation of Gob's program in Brainfuck

Schematic of tape:
| Print Question | 'Y' | Input |7| "PENUS  \n"|    

]
tens digit of question
+++++ +++++[
 > +++++ ++      G 71
 > +++++ +++++ + o 111
 > +++++ +++++   b 98
 > ++++          ' 39
 > +++++ +++++ + s 115
 > +++             32
 > +++++ +++     P 80
 > +++++ +++++ + r 114
 > +++++ +++++ + o 111
 > +++++ +++++   g 103
 > +++++ +++++ + r 114
 > +++++ +++++   a 97
 > +++++ +++++ + m 109
 > +++++ +       : 58
 > +++            32
 > +++++ ++++    Y 89
 > +++++         / 47
 > +++++ +++     N 78
 > +++++ +       ? 63
 > +             \n10
 > +++             32
 <<<<< <<<<< <<<<< <<<<< <-
]
ones digit and print question
>+.G
>+.o
>--.b
>-.'
>+++++.s
>++.
>.P
>++++.r
>+.o
>+++.g
>++++. r
>---. a
>-. m
>--. :
>++. 
>-. Y
>---. /
>--. N
>+++. ?
>. \n
<. ?
>>++. 

If statement:
> 
0[-]
>
1[-]
Put 'Y' in blank cell
+++++ +++++
[>
+++++ ++++
<-
]
>-
'Y' is in cell x
> , 
Input is in cell y

x==y perserving y by Jeffery Johnston
<[<+>-]+      copy x into 1 x = 1
>[<<-<+>>>-]  copy y into 0, subtract y from 1
              1 = 0 if x=y
<<<[>>>+<<<-] copy 0 into y
>[>-<[-]]     subtract 1 from x if 1 neq 0
>             points to 1 if x=y


Write "Penus \n" into next seven cells of memory
 >> +++++ +++++
 [>
   +++++ +++>
   +++++ +++++>
   +++++ +++++ +>
   +++++ +++++ ++>
   +++++ +++++ +>
   +++ >
   +++ >
   +
   <<<<< <<
 <-]
 >
 >+
 >
 >---
 >+++++
 >++
 >++

Go back to x which holds result of if statement
<<<<< <<<<
Loop wil run if x is 1
[>>[-]
	"Penus " seven times
	+++++ ++[>.>.>.>.>.>.>.<<<<< <<-] 
	Newline
	>>>>> >>> . <<<<< <<<<<
]

