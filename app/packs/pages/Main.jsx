import React, { useState } from 'react'

export default function Main() {
  const [count, setCount] = useState(0);

  return (
    <>
      <h1>Main</h1>
      <p>{ count }</p>
      <button onClick={() => setCount(count + 1)}>click!</button>
   </>
  );
}
