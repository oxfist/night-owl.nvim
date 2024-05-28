import React, { useState } from 'react';

interface FooBarProps {
  foo?: string;
  bar?: number;
}

const FooBar: React.FC<FooBarProps> = ({ foo = 'Lorem Ipsum', bar = 123 }) => {
  const [baz, setBaz] = useState<string>(foo);
  const [qux, setQux] = useState<number>(bar);

  const handleBazChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    setBaz(event.target.value);
  };

  const handleQuxChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    setQux(Number(event.target.value));
  };

  const handleReset = () => {
    setBaz(foo);
    setQux(bar);
  };

  return (
    <div>
      <h1>Foobar Component</h1>
      <input type="text" value={baz} onChange={handleBazChange} />
      <input type="number" value={qux} onChange={handleQuxChange} />
      <button onClick={handleReset}>Reset</button>
      <p>Baz: {baz}</p>
      <p>Qux: {qux}</p>
    </div>
  );
};

export default FooBar;
