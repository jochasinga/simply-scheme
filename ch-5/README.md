### 5.3

> Explain the difference in meaning between `(first 'mezzanine) and `(first '(mezzanine))`.

The first `first` takes the first "character" in the **mezzanine** word (`'m`).
The second `first` takes the first "word" symbol of the single-word sentence (`'mezzanine`).

### 5.4

> Explain the difference between the two expressions `(first (square 7))` and `(first '(square 7))`.

The first expression, `(square 7)` is evaluated to presumeably `49`, then `(first 49)` takes `4` out.
In the second one, `'(square 7)` is a sentence and isn't evaluated, thus `(first '(square 7))` gets `'square`.

### 5.5

> Explain the difference between `(word 'a 'b 'c)` and `(se 'a 'b 'c)`.

`(word 'a 'b 'c)` composes a `'abc` word while `(se 'a 'b 'c)` composes a sentence `'(a b c)`.

### 5.6

> Explain the difference between `(bf 'zabadak)` and `(butfirst 'zabadak)`.

`bf` is an alias for `butfirst` procedure, which returns a new word with every character
except the first `'abadak` (all *but* the *first*).

### 5.7

> Explain the difference between `(bf 'x)` and `(butfirst '(x))`.

`(bf 'x)` returns an empty word while `(butfirst '(x))` returns an empty sentence.

### 5.8

> Which of the following are legal Scheme sentences?

```scheme

(here, there and everywhere)
(help!)
(all i've got to do)
(you know my name (look up the number))

```

All but the last one.

### 5.9

> Figure out what values each of the following will return *before* you try them on the computer:

```scheme

(se (word (bl (bl (first '(make a))))
	      (bf (bf (last '(baseball mitt)))))
    (word (first 'with) (bl (bl (bl (bl 'rigidly))))
	      (first 'held) (first (bf 'stitches))))
		  
(se (word (bl (bl 'bring)) 'a (last 'clean))
    (word (bl (last '(baseball hat))) (last 'for) (bl (bl 'very))
	  (last (first '(sunny days)))))
		  
```

`'(matt wright)` and `'(brian harvey)`, respectively.















