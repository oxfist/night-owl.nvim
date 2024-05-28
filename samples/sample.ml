(* Define a module with a few functions *)
module MyModule = struct
  let add x y = x + y

  let sub x y = x - y

  let mul x y = x * y

  let div x y = 
    if y = 0 then 
      None 
    else 
      Some (x / y)
end

(* Record type *)
type person = {
  name : string;
  age : int;
}

(* Variant type *)
type color =
  | Red
  | Green
  | Blue

(* Recursive function *)
let rec factorial n =
  if n <= 1 then 1 else n * factorial (n - 1)

(* Pattern matching example *)
let describe_color c =
  match c with
  | Red -> "Red"
  | Green -> "Green"
  | Blue -> "Blue"

(* Option type example *)
let divide a b =
  if b = 0 then None else Some (a / b)

(* List processing with higher-order functions *)
let numbers = [1; 2; 3; 4; 5]

let squares = List.map (fun x -> x * x) numbers

let evens = List.filter (fun x -> x mod 2 = 0) numbers

(* Using the Printf module for formatted output *)
let () =
  Printf.printf "Factorial of 5: %d\n" (factorial 5);
  Printf.printf "Squares of numbers: %s\n"
    (String.concat "; " (List.map string_of_int squares));
  Printf.printf "Even numbers: %s\n"
    (String.concat "; " (List.map string_of_int evens))

(* String literals and variable bindings *)
let foobar = "Lorem Ipsum"
let foo = "123"
let bar = 42
let baz = 3.14

let () =
  Printf.printf "foobar: %s\n" foobar;
  Printf.printf "foo: %s\n" foo;
  Printf.printf "bar: %d\n" bar;
  Printf.printf "baz: %.2f\n" baz

(* Control structures *)
let () =
  if bar > 10 then
    Printf.printf "bar is greater than 10\n"
  else
    Printf.printf "bar is not greater than 10\n"

(* Loops *)
let () =
  for i = 0 to 4 do
    Printf.printf "for loop iteration: %d\n" i
  done;

  let i = ref 0 in
  while !i < 5 do
    Printf.printf "while loop iteration: %d\n" !i;
    incr i
  done

(* Using the MyModule functions *)
let () =
  let open MyModule in
  Printf.printf "10 + 5 = %d\n" (add 10 5);
  Printf.printf "10 - 5 = %d\n" (sub 10 5);
  Printf.printf "10 * 5 = %d\n" (mul 10 5);
  match div 10 2 with
  | Some result -> Printf.printf "10 / 2 = %d\n" result
  | None -> Printf.printf "Division by zero\n"

