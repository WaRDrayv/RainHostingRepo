<script setup>
const data = reactive({
  user: "",
  password: "",
  email: "",
});
const emit = defineEmits(["close", "send"]);
</script>

<template>
  <teleport to="#dialog">
    <div class="dialog" @click.self="emit('close')">
      <form class="dialog__form" @submit.prevent="emit('send', data)">
        <p>
          <slot>login</slot>
          form
        </p>
        <input v-model="data.email" type="email" placeholder="Email" />
        <input v-model="data.user" type="text" placeholder="Username" />
        <input v-model="data.password" type="password" placeholder="Password" />
        <button type="submit">
          <slot>login</slot>
        </button>
      </form>
    </div>
  </teleport>
</template>

<style lang="scss">
.dialog {
  position: absolute;
  top: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100%;
  background: #0000009c;
  backdrop-filter: blur(1);

  &__form {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-around;
    padding: 30px;
    background: white;
    height: 300px;
    input {
      border: 1px gray solid;
    }
  }
}
</style>
