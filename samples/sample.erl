-module(foobar).
-export([start/0, print_foobar/2, double/1, print_list/1, print_dict/1, find_foo/1, case_example/1, loop/1]).

% Function
print_foobar(Foo, Bar) ->
    io:format("Foo: ~p, Bar: ~p~n", [Foo, Bar]).

start() ->
    % Using the function
    print_foobar("Lorem Ipsum", 123),

    % Using a list
    Baz = [1, 2, 3, 4, 5],
    print_list(Baz),

    % Using a map
    Qux = #{foo => "bar", baz => "qux"},
    print_dict(Qux),

    % Using control structures
    find_foo(Qux),

    % Using a case statement
    case_example(123),

    % Using a loop
    loop(5).

double(X) ->
    X * 2.

print_list(List) ->
    lists:foreach(fun(Item) -> io:format("~p~n", [Item]) end, List).

print_dict(Dict) ->
    maps:map(fun(Key, Value) -> io:format("Key: ~p, Value: ~p~n", [Key, Value]) end, Dict).

find_foo(Dict) ->
    case maps:find(foo, Dict) of
        {ok, Value} -> io:format("Found foo: ~p~n", [Value]);
        error -> io:format("Did not find foo~n")
    end.

case_example(Bar) ->
    case Bar of
        123 -> io:format("Bar is 123~n");
        _ -> io:format("Bar is not 123~n")
    end.

loop(0) -> ok;
loop(N) ->
    io:format("~p~n", [N]),
    loop(N - 1).
