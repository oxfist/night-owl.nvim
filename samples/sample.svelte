<script>
  // Variables
  let foo = "Lorem Ipsum";
  let bar = 123;
  let baz = 3.14;
  let foobar = "Hello, Svelte!";

  // Reactive statement
  $: doubledBar = bar * 2;

  // Function to handle events
  function handleClick() {
    alert(`Button clicked! foo: ${foo}, bar: ${bar}, baz: ${baz}`);
  }

  // Array for looping
  let items = ["item1", "item2", "item3"];

  // Conditional rendering
  let showMessage = true;

  // Form binding
  let inputValue = "";
</script>

<style>
  .example {
    font-family: Arial, sans-serif;
  }
  .button {
    padding: 10px 20px;
    background-color: #6200ea;
    color: white;
    border: none;
    cursor: pointer;
  }
</style>

<div class="example">
  <h1>{foobar}</h1>
  <p>foo: {foo}</p>
  <p>bar: {bar}</p>
  <p>baz: {baz}</p>
  <p>doubledBar: {doubledBar}</p>

  <!-- Event handling -->
  <button class="button" on:click={handleClick}>Click me</button>

  <!-- Conditional rendering -->
  {#if showMessage}
    <p>This is a conditional message.</p>
  {/if}

  <!-- Looping through items -->
  <ul>
    {#each items as item}
      <li>{item}</li>
    {/each}
  </ul>

  <!-- Form binding -->
  <input type="text" bind:value={inputValue} placeholder="Type something...">
  <p>You typed: {inputValue}</p>

  <!-- Toggling the message -->
  <button class="button" on:click={() => showMessage = !showMessage}>
    Toggle Message
  </button>
</div>

