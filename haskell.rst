.. https://rolandpuntaier.blogspot.com/2020/07/watch-me-learn-haskell.html

**********************
Watch Me Learn Haskell
**********************

I use some good software written in Haskell (Xmonad, Pandoc, ...)
and, keen for a new adventure, I delved into it.

The community provides great help for newcomers:

- `brief`_ `Typeclassopedia`_ `OOP_vs_type_classes`_
  `Monads_as_computation`_ `Lists_and_strings`_ `FFI`_ (`wiki`_)
- `tutorial`_ `syntax`_ `haskell2010`_ `do`_ (`onlinereport`_)
- `user_guide`_
- `reference`_
- `Truth_values`_, `arrows`_ (`wikibooks`_)
- `learnyouahaskell`_
- `realworldhaskell`_
- `schoolofhaskell`_
- `WIWIKWLH`_
- `learnxinyminutes`_
- `Awesome Haskell`_
- `haskell-by-types`_
- `cheatsheet`_
- `riptutorial`_
- `extensions`_
- `rosetta code`_

- `Write Yourself a Scheme in 48 Hours`_


.. {theory}

Mind-setting
============

To mum you can say: Make me a cake, please.
To your sister you may need to say: Open the lowest drawer. Take the deep bowl. ...

Programming can be easy and it can be hard.
A computer does know very little by itself.
So it is hard to tell it what to do.
The hard side is to organize,
what you need to say to the computer.

The words and the way to organize things
can vary between programming languages.

.. {variable type}

Variable vs Type
----------------

Variable comes from "vary", which is the Latin-rooted word for change.

Why a value changes *does not matter* for the concept of *variable*,

- *along* (no causality) or *due to* (causality) space or time or color or whatever
- *by itself* (no causality) or *by choosing* or selection (causality)

*Variable* is synonymous to *alternatives* or *choice*.

``I walk. I run.``
Both have the "I".
This makes "walk" and "run" the values of this variable.

So variable arises due to a common context in which

#. values exclude each other
#. values can be selected individually
#. values can be distinguished

Each of these mean the same.
But lets settle with 1,
with *exclude* (*exclusive*), to characterize (the values of) a variable.

What is a variable in one context is a value in another.

There is a history of various wording with similar to same meaning.
*variable-value* is same as or similar to

- a-the
- level of indirection
- set-element (set theory)
- type-term (type theory)

The modelling in mathematics/software involves many levels of indirection.
*variable-value* is a general concept that links the layers.

*Type* is the aspect that maps the real variable to the representation variable in a computer.
*Type* as the implementation.
*Type* refers to the

- amount of memory used for a variable and
- the encoding of the values of the variable

The choice of *type* is restricted by

- the requirements of the real variable and
- the types offered by the specific computer (language)

In Haskell you can specify the type separately, also later.
If you omit it, Haskell will normally make a choice for you.

.. code-block:: haskell

    :{
    v::Double
    v = 1
    :}
    v

A real *variable hierarchy* will be mapped to a *type hierarchy*.

.. {variable function}

Variable vs Function
--------------------

*Values* normally are not random, but occur due to values of other variables.
Value occurrences are a *function* of values from other variables.

*Variable-value* thus becomes *function-(function application)*.

All *values* of variables do occur (are *exhaustive*).
The function `f` is all the couples `f=\{(v,w)|v\in V \land w\in W \land \text{unique}(w)\}`.

In Haskell this is:

.. code-block:: haskell

  import Data.Char
  :{
  f 1 = 11
  f 2 = 22
  f x | x >= 10 = digitToInt (head (show x))
  :}
  f 23
  f 2
  f 0 -- Exception: ... : Non-exhaustive patterns in function f


Variables are more fundamental than functions, because you need to have choice first.
The function maps this choice, the independent variable(s), to the target variable.

The function does not completely defining the target variable, if not `surjective`_.
If not surjective the target variable might arise from more functions.
The target variable would thus motivate a variable of functions towards it.

The function looses information, if not `injective`_.
Then, a common target value links source values,
i.e. it produces a topological structure in the source variable.

There are also relations between variables that are not functions,
i.e. that are not unique in either direction.
Functional description can be restored by introducing new structure variables
whose values combine original values according relation.

This produces complexity applicable only for specific contexts
and does not have the generality needed in programming.
Programming is about choosing, about the values.

`Category theory`_ avoids the complexity by not looking at internals:
A well defined *object* gets mapped to another object or itself (``id``) by a *morphism*.
*Morphisms* need to be composable associatively (= a path uniquely defines the target object).

I used *variable* instead of *set* to emphasizing
that the important quantity is the choice the variable allows (the value).

In Haskell the choice is done by a ``data`` construction.
There can be more data constructors for one type.
This allows to use different memory layout within one type,
while still being statically type checked (`ADT`_).

The *object* in `Category theory`_ could be the *value* or the *variable*.
The former would be dynamic typing, the latter is static typing.
There are `dynamically`_ typed functional languages,
but *Haskell is statically typed.*
The Haskell arrow ``->`` maps from type to type.
There is also an `Arrow`_ class that models a *morphism*.

Function composition
--------------------

Haskell allows to compose functions without mentioning the arguments.
This is called `pointfree`_ style, as values in mathematics are often called points.
No argument values = no points.
Ironically the usual composition operator is the point ``(.)``.

  .. code-block:: haskell

    -- pointfree
    sc = sum . sequence [(**2) . sin, (**2) . cos]
    sc 2 -- 1.0
    -- in this case better:
    sc x = (sin x)**2 + (cos x)**2

`pointfree`_ is only shorter, if the return value is forwarded to the next function.
For other situations there are `special function compositions`_.

Functional Programming
----------------------

Programming is based on mathematics, which is older than computers.
We encounter variable-value, functions, etc. in all languages,
but especially functional languages like Haskell push you to think mathematically.
Code reuse demands abstraction.
A good programmer needs to think abstractly, mathematically.

Many languages assume and work on an outside world.
This outside world gives instructions their meaning.
The "open the lowest drawer" example assumes a kitchen,
which can be changed. One can open a drawer, etc ...

A purely functional style describes everything as functions.
A function maps input to output without changing the input.
In our example,
a kitchen would be input and a kitchen with an open drawer would be output.

An output becomes a new input to another function.
This function composition produces a time sequence, a thread of execution.
If there were more cooks (more threads),
they would all develop their own kitchens.
No coordination needed, which makes things a lot easier.
(In Haskell the kitchen would be a Monad.)

A programming style is a way to organize things.
Languages can be used for more styles,
but their syntax and libraries favor a specific style.
A style that is shared in a community is called a `paradigm`_.

Most people are first introduced to languages that favor an imperative style.

- *Functions* in non-functional languages *change* memory.
  They have side effects.
  Some languages call functions more appropriately "procedure" or "subroutine".

- *Functions* in functional programming languages don't *change* anything.
  They only map values to other values. They are mathematical functions.

Haskell tries hard to make you think *purely* functionally.

.. {syntax}

Syntax
======

BNF-syntax of Haskell: `BNF`_

Syntax described by template Haskell: `TH`_


.. {typing}

Typing
======

A simple function type (**signature**) is:

  fun:: Int -> Double

Unlike in ``C`` or ``Java`` this is a function without side effects,
which makes it easier to test.

Not only types, but also variables of types (**kind**) are possible:

.. code-block:: haskell

  fun:: a -> b

  :kind (->)
  (->) :: * -> * -> *


``->`` accepts all type (``*`` = all types).
``->`` maps from two kinds (input) to a third kind (output).
``->`` has other usages as well.

**Application** is done via a space: ``fun some_value``.
There are different types of applications:

- *application* of function
- *application* of constructor
- *application* of constraint

A *constructor* constructs a type.
It is like a function signature without implementation,
that can be applied to actual argument values, though.
Since it cannot map the actual arguments, it just holds them.
Therefore it is like a record in DB jargon, or a ``struct`` in ``C``.

The **implementation** for the signature ``fun:: a -> b`` would be ``fun pat = rhs``.

- ``pat`` could be just a letter, e.g. ``x``,
  which is a variable for any actual argument value during application.
- Or ``pat`` could be a constrained pattern to address contained variables
  like ``x:xs`` or ``AConstructor x``.

The ``rhs`` is the last entry in the function type definition.
The expression for ``rhs`` depends only on the lhs arguments (e.g. on ``x``).
Within the `code`_ of ``rhs`` further functions with variables can be declared.

*Via this containment of functions, context is built.*

If the ``rhs`` introduces new variables,
the application of a function is the application of context.

**Currying**: ``fun`` application is like walking along a path between variables.
A (partial) walk on the path,
i.e. partial application, produces a function,
that walks the rest of the path.

``flip`` or infix notation allows to *curry* also on the second argument.

Many functions in Haskell are of higher orders.
Higher order functions combine functions to new functions
without the need to mention the variables.

In:

.. code-block:: haskell

  ( . ) :: (b -> c) -> (a -> b) -> a -> c

- ``( . )`` has two lhs arguments
- ``(b -> c)`` and ``(a -> b)`` match functions

When applying ``( . )`` you don't need to mention the variables of type ``a, b, ...``.

In:

.. code-block:: haskell

  (<*>) :: Applicative f => f (a -> b) -> f a -> f b

- ``f`` is constrained to the ``Applicative`` class.
- The constraint between ``::`` and ``=>`` is called *Context*.
- The actual ``f`` must be a data type
  that is instance of ``Applicative``
  and cannot be a single function.
- ``f`` with space is a pattern for an application.
  Here it is a constructor application for the type implementing ``Applicative``.
- ``f (a -> b)`` is the pattern for the first argument to extract ``f, a, b``.
- ``f a`` is the pattern for the second argument.
- The last argument ``f b`` is the type of the return value.

In:

.. code-block:: haskell

  (<$>) :: Functor f => (a -> b) -> f a -> f b

- ``(<$>)`` has two lhs arguments
- ``(a -> b)`` is the pattern for the first argument: a function.
- ``f a`` is a constructor pattern for the second argument: a data type.
- ``f`` stands for a class (= variable of types = kind)
- ``Functor`` is a class.
- ``Functor f`` constrains ``f`` to types with the ``Functor`` class

The implementation of ``(<$>)`` would construct a value using an actual ``f`` constructor.

``[]`` is a type, which implements both, ``Applicative`` and ``Functor``.

Usage:

.. code-block:: haskell

  [ (*3), (*6) ] <*> [3]
  ((*) <$> [ 3, 6]) <*> [3]
  -- -> [9,18]

In Haskell a lot of typing is done via function signatures:

- ``functions :: signature``
- ``class`` is more signatures (interface)
- a ``data`` or ``newtype`` type can be made ``instance`` of more classes

.. code-block:: haskell

  fun:: AClass a => a -> a  -- AClass is class contraint
  fun:: (AClass ab, BClass ab) => ab -> Int  -- Int is a type

``AClass`` is a class.
``Int`` is a type, grouping of class constraints done separately.
``(AClass a, BClass b)`` could also have been grouped separately to a type.

  .. code-block:: haskell

    :{
    class AClass a where
      afun:: a -> a
    class BClass b where
      bfun:: b -> b
    instance AClass ABType where
      afun = id
    instance BClass ABType where
      bfun = id
    fun:: ABType -> Int
    fun ab = 1 -- just to make the compiler happy
    :}

- ``id`` is the Haskell function for *identity*
- Type and class names must start with capital letter.

.. {keywords}

Keywords
========

The top level declarations, ordered by importance, are:

::

  <gendecl> | <fundecl> | data | instance | class | module | newtype | type | default

- ``gendecl``: Function signature (``fun ::``) or fixity.
- ``fundecl``: Functions use no keyword (read from left to right)
- ``data, type, newtype`` are data related (read from right to left)
- ``class, instance`` are type related
- ``module, default`` are organizational

Keyword meaning:

- ``module .. where``
  is used to specify what is exported by a file, then ``where`` and the details follow
- ``default(Int)`` or used in extensions, like `DefaultSignatures`_
- ``data atype = rhs``
  introduces a type name that on the right hand side has possibly more constructor names
- ``newtype Key = Int``
  similar to data, but only one constructor allowed, which is seen by the compiler, but not in runtime
- ``type Key = Int``
  creates a type synonym for the user, which is not seen by the compiler
- ``class <Aclass> <params> where``
  is a container of function signatures
- ``instance <Aclass> <atype> where``
  declares an implementation of a ``class`` for a type.
  Implementation can be done automatically using ``deriving``.

.. {data}

Data
====

``data`` can have named values (enum):

.. code-block:: haskell

    data Move = Walk | Run
    let move = Walk

    speed Walk = 5
    speed Run = 10

    :t speed
    -- -> speed :: Num p => Move -> p

Constructors ``Walk, Run`` map to a type (``Move``).
Literals have a type.
Haskell can infer the function signature.

Note the difference between type (``data,newtype,type``) and constraint (``class,instance``):

- type (``Move`` here) is directly used in the signature
- ``p`` is constrained to class ``Num``,
  which is more general, than using type ``Int`` or ``Double``.

Constructors can be parametrized:

.. code-block:: haskell

    data Person = Person String Int deriving (Show)
    let guy = Person "Buddy" 44

The parameters (fields) can be named,
but actually it is *naming the accessor function*.

.. code-block:: haskell

    data Person = Person { nickname :: String, age :: Int} deriving (Show)
    let guy1 = Person "Buddy" 44
    let guy2 = Person { nickname = "Jo", age = 33}
    nickname guy2
    -- -> "Jo"
    guy2 { age = age guy2 + 1}
    -- -> Person {nickname = "Jo", age = 34}

``data`` with one constructor and more fields is called a *record*.

.. http://learnyouahaskell.com/making-our-own-types-and-typeclasses

.. code-block:: haskell

    data Shape location size = Rectangle location size | Circle location size deriving Show
    :t Rectangle
    -- -> Rectangle :: location -> size -> Shape location size
    data Size = Small | Medium | Large deriving Show
    data Location = Inside | Outside deriving Show
    let ri = Rectangle Inside
    :t ri
    -- -> ri :: size -> Shape Location size
    let ris = ri Small
    :t ris

You cannot do ``Shape Inside Small``, because ambiguous.

Different *data constructors* (``rhs``) are grouped
by the common *type constructor* (``lhs``).
This is called *algebraic data type* (`ADT`_).

``data`` can use recursion.

.. {code}

Code
====

An example

.. code-block:: haskell

  data Speed = Slow | Fast
  data Move s = Walk s | Run s

  :{
  speed:: Num a => Move Speed -> a
  speed (Walk Slow) = 5
  speed (Walk Fast) = 10
  speed (Run Slow) = 11
  speed (Run Fast) = 15
  :}

  speed (Run Fast)
  -- -> 15

  :t speed
  -- -> speed :: Num a => Move Speed -> a

.. {lhs}

lhs
---

**Function**: One *or more* declarations that
map from the left-hand-side (``lhs``) to the right-hand-side (``rhs``).

``'`` can be part of a function name.
Combinations of
``!#$%&*+./<=>?@\^-~|`` and Unicode symbols
can be used as function symbols (``fop``).

Every ``lhs = rhs`` has its own namespace.
So never consider the argument naming when comparing two (related) declarations,
because it just confuses you, if you see the same name for unrelated things.

**lhs** can be infix:

.. code-block:: haskell

  pat `fun` pat = rhs
  pat fop pat = rhs

Or prefix:

.. code-block:: haskell

  fun pat = rhs
  (fop) pat = rhs

``lhs`` can contain *guards* (|).
There can be a ``where`` at the end of the guards:

.. code-block:: haskell

  -- in ghci :{:} is needed
  :{
  aad a|a<0  = a-1
  aad a|a>0  = a+1
  aad a|otherwise = a
  :}
  -- equivalent to
  :{
  aad a|a<0  = a-1
       |a>0  = a+1
       |otherwise = a
  :}
  aad (-1) -- use () with negative numbers
  -- -> -2
  aad 1
  -- -> 2
  aad 0
  -- -> 0

``lhs`` can contain *patterns* with sub-patterns (``pat``).
Patterns are built of::

  _
  (Constructor _) -- brackets is a good idea!
  n@(Constructor _) -- rhs uses n
  [a]
  (x:xs)
  !pat -- match now, not lazily
  ~pat -- always match (irrefutable), if you know it to succeed

``n, a, x, xs`` are arbitrary names that can be used in the ``rhs``.
Constructor refers to an actual constructor.
``_`` is anything.

Patterns are evaluated lazily by default.
*Lazy* can mean a lot of memory consumption.
It evaluates until the first constructor is found and
then needs to remember the arguments (thunks)
before trying other evaluation paths.
Using ``!`` avoids that.

.. {rhs}

rhs
---

The **rhs** declaration is an expression (``exp``) with helper
declarations either before:

.. code-block:: haskell

  fun pat = let ... in exp

or after:

.. code-block:: haskell

  fun pat = exp where
    ...

The helper declarations can be in **layout** style:

.. code-block:: haskell

  ... where
    recl1
    ...
    declN

or

.. code-block:: haskell

  where {decl1;...;declN}

``where`` can also be used in ``class`` and ``instance`` declarations.

``exp`` is application of functions

- ``fun a b`` or ``a `fun` b`` or ``(fop) a b`` or ``a fop b``.
  To name functions with symbols (``fop``) is normal in Haskell.
- ``fun $ pat`` avoids brackets by reducing fixity to 0 (see ``:info $``)
- ``fun $! pat`` evaluates ``pat`` before applying ``fun``

Fixity of an operation is set with ``infixl|infixr|infix <fixity> <fop>``.

.. code-block:: haskell

   :{
   fsum (x:xs) y = fsum xs $! (x+y) -- same as: (x+y) `seq` fsum xs
   fsum [] y = y
   :}
   fsum [1..100] 0

These can use patterns on the left side:

- ``=`` is a mapping
- ``<-`` names values from a *generator*
- ``->`` replaces ``=`` in local scopes (e.g lambda ``\x -> x*x``)

Some other operators:

- ``==`` and ``/=`` mean equal or not equal
- \\ introduces a lambda function (function without name)
- ``:`` prepend element in a list (``1:[2]``)
- ``|`` is a *guard*, used in declarations and list comprehensions
- ``..`` generates a sequence of values based on a partial sequence
- ``.`` module.sub-module or, with spaces, combines functions

.. code-block:: haskell

      let s = [x*x | x <- [1, 3 .. 9]]
      s !! 2
      -- -> 25
      zip [1 ..] s
      -- -> [(1,1),(2,9),(3,25),(4,49),(5,81)] 
      take 3 $ [0,5 .. ]
      -- -> [0,5,10]
      cycle [3,6 .. ] !! 4
      -- -> 15
      iterate (1+) 2 !! 3
      -- -> 5

Further, code can contain:

.. code-block:: haskell

  if exp then exp else exp

  case exp of {alternatives}

  do {statements}

``alternatives`` use ``->`` instead of ``=``.
``statements`` use ``<-`` and can use ``=`` only in an optional ``where``.

``do`` is syntactic sugar for a ``Monad`` binding operator (``>>=``),
which forwards output of the function in the previous line
to the input of the function in the next line,
to allow imperative style fragments.
It is not imperative, though, but function composition.
Function composition is Haskell's way to call a sequence of functions,
intermitted with ``let`` or ``where``
for cases in which not the full output is needed as input.
`Monad`_ is detailed further down.

.. {class}

Class
=====

``class`` contains function types and possibly default implementations.
Class is short of *type class*, in the sense that more types are instances of a class.

An ``instance`` provides implementations of the functions of a class for a specific ``data`` type.
Instances for one class can be scattered across many modules.
``import xyz()`` imports only the instances.

.. code-block:: haskell

  class A1 a where f:: a -> a
  class A2 a where g:: a -> a
  data D = D Int
  data E = E Int
  instance A1 D where f (D n) = D (n+1)
  instance A2 E where g (E n) = E (n+2)

  :{
  ff:: A1 a => a -> a
  ff u = u
  :}

  dd = let d = D 3 in ff d
  dd = let e = E 3 in ff e -- error: No instance of (A1 E)

If we make ``E`` an instance of ``A1``, there is no error:

.. code-block:: haskell

  instance A1 E where f n = n
  dd = let e = E 3 in ff e

When a module imports a class,
its functions become public.

The function is constrained to the class,
in which the function was declared.

.. code-block:: haskell

  Prelude>   :info (<*>)
  type Applicative :: (* -> *) -> Constraint
  class Functor f => Applicative f where
    ...
    (<*>) :: f (a -> b) -> f a -> f b
    ...
          -- Defined in ‘GHC.Base’
  infixl 4 <*>
  Prelude>   :info (<$>)
  (<$>) :: Functor f => (a -> b) -> f a -> f b
          -- Defined in ‘Data.Functor’
  infixl 4 <$>

Starting from
``ghc/libraries/base/Prelude.hs``
one can follow included modules.
``ghc/libraries/base/GHC/Base.hs``
declares:

.. code-block:: haskell

  Semigroup, Monoid, Functor, Applicative, Monad, Alternative, MonadPlus

Here some example usages for Prelude classes:

.. code-block:: haskell

  :info Semigroup
  [1,2] <> [4,5]
  -- -> [1,2,4,5]
  :info Monoid
  [1,2,3] <> []
  -- -> [1,2,3]
  :info Functor
  (+10) <$> [1,2,3] -- or fmap
  -- -> [11,12,13]
  :info Applicative
  (+) <$> [1,2] <*> [3,4] -- same infixl 4
  -- -> [4,5,5,6]
  1 <$ [1,2,3]
  -- -> [1,1,1]
  liftA2 (+) (Just 1) (Just 2)
  -- -> Just 3
  (+) <$> Just 1 <*> Just 2
  -- -> Just 3

The full usage intention behind a class cannot be read from the function signature.
Additional *laws* (see `Typeclassopedia`_)
can be the basis for further thinking to grasp the intended generality.

``(<>) :: Semigroup a => a -> a -> a`` is binary.
That we stay within the same type (``a``) (closedness) makes sure that the associative law stays.
The associativity law ``(a <> b) <> c == a <> (b <> c)`` allows to infer

- that the time sequence does not matter
  (one could calculate chunks of a chain in any order or in parallel) and
- that consequently the space sequence fully identifies the result

A law like this is quite general,
but still reduces all possible cases quite a bit,
and thus has information.

``Monoid`` adds the ``empty``.
A neutral element allows usage of the concept where there is nothing fitting to it.
The neutral 0 allowed the transition from roman numerals,
where the quantity grouping had to be named,
to position coded numbers, where you place a 0 in a position,
if the value of the position is not there.

``(<$>) :: Functor f => (a -> b) -> f a -> f b``

- injects a function ``a -> b`` (first argument)
- into a constructed/derived type (second argument)

``<$>`` is also called ``fmap`` (functor map).
A functor maps one `category`_ into another.
This is also called *lifting* (``liftA``, ``liftA2``, ...).

``(<*>) :: Applicative f => f (a -> b) -> f a -> f b``
assumes a lifted function, which is then applied in the new category.

- ``<$>`` lifts the arguments and applies the function.
- ``pure`` just lifts, without looking at the arguments.
- ``<*>`` only applies.

So ``Applicative`` splits a ``Functor``'s ``fmap`` into two parts.

.. code-block:: haskell

  import GHC.Base
  ( (*) <$> [2, 3] ) <*> [6,7]
  liftA2 (*) [2,3] [6,7]
  -- all -> [12,14,18,21]
  fmap (*10) [6,7]
  liftA (*10) [6,7]
  pure (*10) <*> [6,7]
  -- all -> [60, 70]
  pure (*10) *> [6,7]
  [6,7] <* pure (*10)
  -- all -> [6, 7]

.. code-block:: haskell

  import Control.Applicative
  :{
  digit :: Int -> String -> Maybe Int
  digit _ []                     = Nothing
  digit i (c:_) | i > 9 || i < 0 = Nothing
                | otherwise      = if [c] == show i then Just i else Nothing
  :}
  digit 0 "01"
  -- -> Just 3
  digit 1 "01"
  -- -> Nothing
  binChar s = digit 0 s <|> digit 1 s
  binChar "01"
  -- -> Just 0
  binChar "10"
  -- -> Just 1

``Alternative`` adds the idea of ``Monoid`` to the ``Functor-Applicative`` line,
with ``<|>`` instead of ``<>`` (`Typeclassopedia`_).
It also implements ``some`` and ``many``.
They are only useful for types where the constructor calls a function
that processes input: a parser.

- ``some`` stops when the first ``empty`` is constructed, and
- ``many`` continues recursive application of the constructor beyond ``empty``

.. {monad}

Monad
-----

A monad constructs and forwards context.

In a functional programming language context is built via the parameters of contained functions.

.. code-block:: haskell

  import Control.Monad
  :info Monad

  (>>=) :: m a -> (a -> m b) -> m b
  (>>) :: m a -> m b -> m b
  return :: a -> m a

.. https://stackoverflow.com/questions/36206281/difference-between-type-constructor-and-return-function-of-a-monad-in-haskell/62264439#62264439

In:

.. code-block:: haskell

  (>>=) :: Monad m => m a -> (a -> m b) -> m b

- ``m`` is a constructor of a type that is instance of the ``Monad`` class
- ``m a`` is NOT a constructor application but a pattern matching to extract ``m`` and ``a``
- ``a -> m b`` is a pattern against a function with target ``m b``. Let's call it ``k``.
- ``>>=`` needs to map to what ``k`` maps to, i.e. apply ``k a``.
  The implementation from ``Maybe``: ``(Just x) >>= k  = k x``

In a `do`

- ``a <- exp [args]; nextexp`` stands for ``exp >>= (\a -> nextexp)``
- ``exp [args]`` constructs a value that would be pattern matched using ``m a``
- ``>>=`` combines ``a <- exp [args]`` to the next expression
- ``>>`` combines ``exp; nextexp``

.. code-block:: haskell

  return :: Monad m => a -> m a

``return`` is basically the same as ``m``,
but since ``m`` can be any constructor
it is good that we can refer to it generally with this one name.

``->`` is a *Monad*
^^^^^^^^^^^^^^^^^^^

``->`` constructs a type via lambda encapsulation (*currying*).

.. code-block:: haskell

  instance Monad ((->) r) where
      f >>= k = \ r -> k (f r) r

- ``f`` is the application so far (a *lambda*)
- ``k`` is the next ``->``
- ``k`` is applied to what was before (``f r``) and what comes after (``r``)

*IO* is a *Monad*:
^^^^^^^^^^^^^^^^^^

.. code-block:: haskell

  do {putStr "Hi"; putStrLn " there!"; }
  putStr "Hi" >> putStrLn " there"
  readLn >>= print

``[]`` is a *Monad*
^^^^^^^^^^^^^^^^^^^

You can use this to do SQL like queries.

.. code-block:: haskell

  sel prop vals = do {val <- vals; return (prop val);} -- @val <- vals@ needed
  data Name = Name { firstName ::String , lastName :: String } deriving Show
  children = [ Name "Audre" "Lorde", Name "Leslie" "Silko", Name "Jo" "Silko"]
  sel firstName children
  -- -> ["Audre","Leslie","Jo"]
  import Control.Monad -- for guard
  wh test vals = do {val <- vals; guard (test val); return val; }
  wh (\s->'A'==(head s)) (sel firstName children)
  data Family = Family { name ::String } deriving Show
  families = [ Family "Lorde", Family "Silko" ]
  jn d1 d2 p1 p2 = [ (d,e) | d<-d1, e<-d2, p1 d == p2 e]
  jn families children name lastName
  sel (firstName.snd) (wh (((==) "Silko").name.fst) (jn families children name lastName))
  q s j w = s (w j)
  q (sel (firstName.snd)) (jn families children name lastName) (wh (((==) "Silko").name.fst))

``State`` is a *Monad*
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: haskell

  import Control.Monad.State
  runState (do { put 5; return 'X' }) 1
  -- -> ('X',5)
  evalState (gets (+1)) 1

``Maybe`` is a *Monad*
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: haskell

   import Data.Maybe
   catMaybes [Just 3, Nothing, Just 9]
   -- -> [3,9]

.. code-block:: haskell

  :{
  printLengthPrint :: Int -> Maybe Double
  printLengthPrint = \w -> Just (show w)    -- :: Int -> Maybe String
                 >>= \x -> Just (length x)  -- :: String -> Maybe Int
                 >>= \y -> Just (2.0 ^^ y)  -- :: Int -> Maybe Double
  :}
  printLengthPrint 32
  -- -> Just 4.0
  :{
  f :: Int -> Maybe String
  f = Just . show
  g :: String -> Maybe Int
  g = Just . length
  h :: Int -> Maybe Double
  h = Just . (2.0 ^^)
  :}
  import Control.Monad
  plp1 = h <=< g <=< f
  plp1 32
  plp2 = f >=> g >=> h
  plp2 32


Monad transformer
^^^^^^^^^^^^^^^^^

A Monad transformer constructs a Monad from other monads.

The *monad transformer library* (`mtl`_)
is `part of the ghc`_.

.. {extension}

Extensions
==========

The Haskell standard gets updated only every 10 years.
Development in between can get activated via extensions.

.. code-block:: haskell

  {-# <EXTENSION>, ... #-}
  -- or GHCi:
  :set -X<EXTENSION>

Here some common ones from the `GHC extension`_ list:

- `OverloadedStrings`_: When using Data.Text instead of String
- `FlexibleInstances`_: nested types in head of instance
- `FlexibleContexts`_: class context not restricted to ``class Cls a => ...``
- `AllowAmbiguousTypes`_: let call decide and not ambiguity checker
- `ViewPatterns`_: include function result in pattern match
- `PaternSynonym`_: e.g. ``pattern NoBlending = #{const SDL_BLENDMODE_NONE} :: CInt``
- `RecordWildCards`_: ``f (ARec{..}) = e1 ...`` instead of ``f (ARec e1 ...) = e1 ...``
- `NamedFieldPuns`_: when matching against less fields: ``f (ARec{ex}) = ex`` instead of ``f (Arec{ex=ex}) = ex``
- `DeriveFunctor`_: ``deriving Functor`` derives functor instance
- `TypeApplications`_: specify type when called, e.g. ``show (read @Int "5")``
- `BangPatterns`_: ``f (!x,y)`` strict (not lazy) in ``x`` but not in ``y``
- `MultiParamTypeClasses`_ implies `FunctionalDependencies`_: ``class C a b ...| a b -> c`` 
- `LambdaCase`_: ``\case { p1 -> e1; ...; pN -> eN }`` for ``\p -> case p of {...``
- `BlockArguments`_: ``when (x>0) do ...`` instead of ``when (x>0) (do ...)``
- `MonadComprehensions`_: ``[ x+y | x <- [1..10], y <- [1..x], then take 2 ]`` (comprehension for all monads)
- `RebindableSyntax`_: bind to whatever in scope and not to ``Prelude``
- `TransformListComp`_: in list comprehension ``then f [by|using field]`` (``f=sortWith|group|..``)
- `GADTs`_: constructors as parametrized constrained type functions
- `TypeFamilies`_: ``type`` function within ``class`` to let ``instance`` compute the type
- `TemplateHaskell`_: compile-time macros to generate Haskell code

`24 GHC Extensions`_ gives alternative examples to some extensions.


There is no OOP in Haskell?
===========================

In Haskell:

- ``class`` is the interface for OOP.
  ``class`` functions get constrained to the class in one go.
  There is also individual constraining per function.
  The whole class can get constrained as well.
  ``=> ConstraintToClass`` is called context.

  ``class`` can also have function implementations (default implementations).

- ``data`` or ``newtype`` is the object type.

  - They can have more constructors and recursive constructors

  - They can have fields that are

    - other data types (corresponds to OOP inheritance)
    - functions (runtime polymorphism in OOP)

- An ``instance`` declaration links a ``data`` declaration with a ``class`` declaration.

Note the shift of meaning with respect to OOP:

- OOP: interface - class - instance in memory
- Haskell: class - instance of class (implementation) - construction in memory

Pattern matching is a way to associate code to ``data`` without an ``instance`` declaration.

There is the `Lens`_ library to allows access fields in OOP style
(needs an install: ``cabal install --lib microlens-platform``).

Generic programming in called parametrized polymorphism in Haskell,
as it is done via parametrizing types and classes

- parametrized ``data`` (`ADT`_), extended through `GADTs`_
- parametrized ``class``, extended through `MultiParamTypeClasses`_

``GHC.Generics`` allows to derive instance methods for user classes
based on a generic implementation,
similar to ``.. deriving (Eq,Ord,Show)`` for built-in classes.

Extensions:

- `DeriveGeneric`_: ``deriving Generic`` generates ``instance Generic <usertype> ...``
- `DefaultSignatures`_: change signature of ``class`` default implementations
- `DeriveAnyClass`_: allows ``deriving (<UserClass>)``

Then there is template meta-programming with `TemplateHaskell`_,
to create Haskell code on the fly, like a C macro.

Epilogue
========

To program functionally,
in data and code,
try to express yourself with

- pattern matching functions
- that don't change but copy
- currying
- pointless
- recursion

It is a path with problems, too, and their solutions, an evolutionary branch of programming.


.. _`GHC extension`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html
.. _`GADTs`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-GADTs
.. _`TypeFamilies`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-TypeFamilies
.. _`FlexibleInstances`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-FlexibleInstances
.. _`OverloadedStrings`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-OverloadedStrings
.. _`FlexibleContexts`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-FlexibleContexts
.. _`AllowAmbiguousTypes`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-AllowAmbiguousTypes
.. _`ViewPatterns`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-ViewPatterns
.. _`PaternSynonym`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-PaternSynonym
.. _`RecordWildCards`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-RecordWildCards
.. _`NamedFieldPuns`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-NamedFieldPuns
.. _`DeriveFunctor`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-DeriveFunctor
.. _`TypeApplications`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-TypeApplications
.. _`BangPatterns`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-BangPatterns
.. _`MultiParamTypeClasses`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-MultiParamTypeClasses
.. _`FunctionalDependencies`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-FunctionalDependencies
.. _`TemplateHaskell`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-TemplateHaskell
.. _`LambdaCase`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-LambdaCase
.. _`BlockArguments`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-BlockArguments
.. _`MonadComprehensions`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-MonadComprehensions
.. _`RebindableSyntax`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-RebindableSyntax
.. _`TransformListComp`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-TransformListComp
.. _`DeriveGeneric`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-DeriveGeneric
.. _`DefaultSignatures`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-DefaultSignatures
.. _`DeriveAnyClass`: https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-DeriveAnyClass
.. _`24 GHC Extensions`: https://ocharles.org.uk/pages/2014-12-01-24-days-of-ghc-extensions.html
.. _`Typeclassopedia`: https://wiki.haskell.org/Typeclassopedia
.. _`paradigm`: https://en.wikipedia.org/wiki/Comparison_of_programming_paradigms
.. _`BNF`: https://www.haskell.org/onlinereport/syntax-iso.html
.. _`TH`: http://hackage.haskell.org/package/template-haskell-2.7.0.0/docs/src/Language-Haskell-TH-Syntax.html#line-716
.. _`mtl`: https://tech.fpcomplete.com/haskell/tutorial/monad-transformers/
.. _`part of the ghc`: https://downloads.haskell.org/~ghc/latest/docs/html/libraries/index.html
.. _`Lens`: https://hackage.haskell.org/package/lens-tutorial-1.0.4/docs/Control-Lens-Tutorial.html

.. _`haskell-by-types`: https://www.holger-peters.de/haskell-by-types.html
.. _`Awesome Haskell`: https://github.com/krispo/awesome-haskell
.. _`Typeclassopedia`: https://wiki.haskell.org/Typeclassopedia
.. _`OOP_vs_type_classes`: https://wiki.haskell.org/OOP_vs_type_classes
.. _`Monads_as_computation`: https://wiki.haskell.org/Monads_as_computation
.. _`Lists_and_strings`: https://wiki.haskell.org/Cookbook/Lists_and_strings
.. _`wiki`: https://wiki.haskell.org/Haskell
.. _`brief`: https://wiki.haskell.org/A_brief_introduction_to_Haskell
.. _`WIWIKWLH`: http://dev.stephendiehl.com/hask/index.html
.. _`haskell-by-types`: https://www.holger-peters.de/haskell-by-types.html
.. _`syntax`: https://www.haskell.org/onlinereport/syntax-iso.html
.. _`haskell2010`: https://www.haskell.org/onlinereport/haskell2010
.. _`do`: https://www.haskell.org/onlinereport/haskell2010/haskellch3.html#x8-470003.14
.. _`onlinereport`: https://www.haskell.org/onlinereport
.. _`tutorial`: https://www.haskell.org/tutorial
.. _`learnxinyminutes`: https://learnxinyminutes.com/docs/haskell/
.. _`schoolofhaskell`: https://www.schoolofhaskell.com/school
.. _`Truth_values`: https://en.wikibooks.org/wiki/Haskell/Truth_values#Guards
.. _`arrows`: https://en.wikibooks.org/wiki/Haskell/Understanding_arrows
.. _`wikibooks`: https://en.wikibooks.org/wiki/Haskell
.. _`user_guide`: https://downloads.haskell.org/ghc/latest/docs/html/users_guide/
.. _`learnyouahaskell`: http://learnyouahaskell.com
.. _`reference`: https://downloads.haskell.org/~ghc/6.12.2/docs/html/libraries/base-4.2.0.1/index.html
.. _`FFI`: https://wiki.haskell.org/FFI_Introduction
.. _`realworldhaskell`: http://book.realworldhaskell.org/read/interfacing-with-c-the-ffi.html
.. _`cheatsheet`: https://raw.githubusercontent.com/m4dc4p/cheatsheet/master/CheatSheet.lhs
.. _`riptutorial`: https://riptutorial.com/haskell/example/20142/lazy-patterns
.. _`extensions`: https://ocharles.org.uk/pages/2014-12-01-24-days-of-ghc-extensions.html
.. _`ADT`: http://wiki.haskell.org/Algebraic_data_type
.. _`dynamically`: https://en.wikipedia.org/wiki/Comparison_of_functional_programming_languages
.. _`arrow`: https://wiki.haskell.org/Arrow_tutorial
.. _`special function compositions`: https://www.schoolofhaskell.com/user/Lkey/kleisli

.. _`surjective`: `injective`_
.. _`injective`: https://en.wikipedia.org/wiki/Bijection,_injection_and_surjection
.. _`pointfree`: https://wiki.haskell.org/Pointfree
.. _`rosetta code`: http://www.rosettacode.org/wiki/Rosetta_Code

.. _`category theory`: https://wiki.haskell.org/Category_theory
.. _`category`: https://en.wikibooks.org/wiki/Haskell/Category_theory
.. _`F-algebra`: https://en.wikipedia.org/wiki/F-algebra

.. _`Write Yourself a Scheme in 48 Hours`: https://en.wikibooks.org/wiki/Write_Yourself_a_Scheme_in_48_Hours
