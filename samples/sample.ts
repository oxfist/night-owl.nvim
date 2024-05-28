import * as fs from 'fs';

interface FooBar {
  foo: string;
  bar: number;
}

class Baz implements FooBar {
  constructor(
    public foo: string,
    public bar: number,
  ) {}

  printFooBar(): void {
    console.log(`Foo: ${this.foo}, Bar: ${this.bar}`);
  }
}

// Function
function createBaz(foo: string, bar: number): Baz {
  return new Baz(foo, bar);
}

// Usage of the function
const baz = createBaz('Lorem Ipsum', 123);
baz.printFooBar();

// Promise and async/await
function readFileAsync(path: string): Promise<string> {
  return new Promise((resolve, reject) => {
    fs.readFile(path, { encoding: 'utf8' }, (err, data) => {
      if (err) {
        reject(err);
      } else {
        resolve(data);
      }
    });
  });
}

async function printFileContents(path: string): Promise<void> {
  try {
    const contents = await readFileAsync(path);
    console.log(contents);
  } catch (err) {
    console.error(`Error reading file: ${err}`);
  }
}

printFileContents('./foobar.txt');

// Enums
enum Quux {
  Foo = 'Lorem Ipsum',
  Bar = '123',
}

console.log(Quux.Foo);
console.log(Quux.Bar);
