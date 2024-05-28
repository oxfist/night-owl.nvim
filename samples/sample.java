import java.util.*;

public class FooBar {
    String foo;
    int bar;

    public FooBar(String foo, int bar) {
        this.foo = foo;
        this.bar = bar;
    }

    public void print() {
        System.out.println("Foo: " + this.foo + ", Bar: " + this.bar);
    }

    public static void main(String[] args) {
        // Using the class
        FooBar foobar = new FooBar("Lorem Ipsum", 123);
        foobar.print();

        // Using a list
        List<Integer> baz = Arrays.asList(1, 2, 3, 4, 5);
        for (int i : baz) {
            System.out.println(i);
        }

        // Using a map
        Map<String, String> m = new HashMap<>();
        m.put("foo", "bar");
        m.put("baz", "qux");

        // Using control structures
        for (Map.Entry<String, String> entry : m.entrySet()) {
            System.out.println("Key: " + entry.getKey() + ", Value: " + entry.getValue());
        }

        if (m.containsKey("foo")) {
            System.out.println("Found foo: " + m.get("foo"));
        } else {
            System.out.println("Did not find foo");
        }

        // Using a switch statement
        switch (foobar.bar) {
            case 123:
                System.out.println("Bar is 123");
                break;
            default:
                System.out.println("Bar is not 123");
                break;
        }
    }
}
