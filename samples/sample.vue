<template>
  <div class="example">
    <h1>{{ foobar }}</h1>
    <p>foo: {{ foo }}</p>
    <p>bar: {{ bar }}</p>
    <p>baz: {{ baz }}</p>
    <p>doubledBar: {{ doubledBar }}</p>

    <!-- Event handling -->
    <button @click="handleClick">Click me</button>

    <!-- Conditional rendering -->
    <p v-if="showMessage">This is a conditional message.</p>

    <!-- Looping through items -->
    <ul>
      <li v-for="item in items" :key="item">{{ item }}</li>
    </ul>

    <!-- Form binding -->
    <input v-model="inputValue" placeholder="Type something..." />
    <p>You typed: {{ inputValue }}</p>

    <!-- Toggling the message -->
    <button @click="toggleMessage">Toggle Message</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      foo: 'Lorem Ipsum',
      bar: 123,
      baz: 3.14,
      foobar: 'Hello, Vue!',
      items: ['item1', 'item2', 'item3'],
      showMessage: true,
      inputValue: '',
    };
  },
  computed: {
    doubledBar() {
      return this.bar * 2;
    },
  },
  methods: {
    handleClick() {
      alert(
        `Button clicked! foo: ${this.foo}, bar: ${this.bar}, baz: ${this.baz}`,
      );
    },
    toggleMessage() {
      this.showMessage = !this.showMessage;
    },
  },
};
</script>

<style scoped>
.example {
  font-family: Arial, sans-serif;
}
button {
  padding: 10px 20px;
  background-color: #6200ea;
  color: white;
  border: none;
  cursor: pointer;
}
</style>
