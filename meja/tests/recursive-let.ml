module Impl = Snarky.Snark.Make (Snarky.Backends.Mnt4.Default)
open Impl

let x = 15

and y = 25

and z = true

let rec f () = 15

and g () = f () + 20

and h i = if i > 0 then g () + h (i - 1) else g ()

let rec k b = if b then k false else b

let int_find (x : int) = x

let rec f __implicit2__ _ = int_find __implicit2__

let a __implicit3__ () =
  let a = f __implicit3__ true in
  let b = f __implicit3__ 1 in
  let c = f __implicit3__ () in
  (a, b, c)

let rec f __implicit10__ () = int_find __implicit10__

and g __implicit11__ () = f __implicit11__ () + f __implicit11__ ()

let int_instance = 15

let h = g int_instance ()

let rec while_ pred body = if pred () then ( body () ; while_ pred body )

let count_down_from i =
  let rec go i = if i > 0 then go (i - 1) in
  go i
