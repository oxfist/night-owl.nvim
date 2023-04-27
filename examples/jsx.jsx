import React, { useState } from 'react';
import calculate from '../logic/calculate';
import './App.css';
import ButtonPanel from './ButtonPanel';
import Display from './Display';

React.Component;

let foo = undefined;

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      total: null,
    };
  }

  foobar = 2;
  regex = /[a-z]/g;

  handleClick = (buttonName) => {
    this.setState(calculate(this.state, buttonName));
  };

  render() {
    return (
      <div className="component-app">
        Tacos
        <span className={`Hello ${foo.bar}`} />
        <Display value={this.state.next || this.state.total || '0'} />
        <ButtonPanel clickHandler={this.handleClick} />
      </div>
    );
  }
}

function Header() {
  const [title, other, setTitle] = useState(null);
  const { foo, bar } = space;
  let { foo2, bar2 } = space;

  console.log(title, Title, other, setTitle);
  // console.log(foo);

  return <p className={`Hello ${1 + 2}`} id={null}></p>;
}

let a = `${1 + 2}`;

const Foo = 123;
let Bar = App;

export default App;
export { Foo };
