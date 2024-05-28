defmodule FooBar do
  defstruct foo: "Lorem Ipsum", bar: 123

  def print(%FooBar{} = foobar) do
    IO.puts("Foo: #{foobar.foo}, Bar: #{foobar.bar}")
  end
end

defmodule Main do
  def run do
    # Using the struct and function
    foobar = %FooBar{}
    FooBar.print(foobar)

    # Using a list
    baz = [1, 2, 3, 4, 5]
    Enum.each(baz, &IO.inspect/1)

    # Using a map
    qux = %{"foo" => "bar", "baz" => "qux"}
    IO.inspect(qux)

    # Using control structures
    if Map.has_key?(qux, "foo") do
      IO.puts("Found foo: #{qux["foo"]}")
    else
      IO.puts("Did not find foo")
    end

    # Using a case statement
    case qux do
      %{"foo" => value} -> IO.puts("Found foo: #{value}")
      _ -> IO.puts("Did not find foo")
    end
  end
end

Main.run()
