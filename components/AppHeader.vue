<script setup lang="ts">
const user = useUser();

const dialogs = reactive({ signIn: false, signUp: false });
</script>

<template>
  <div class="container mx-auto pt-8 px-4 shadow-xl">
    <header class="grid text-2xl">
      <nuxt-link class="w-1/5 logo" to="/" />
      <nuxt-link :to="{ path: '/about' }">About</nuxt-link>
      <nuxt-link :to="{ path: '/vps' }">VPN</nuxt-link>
      <nuxt-link :to="{ path: '/dedicated' }">Dedicated</nuxt-link>
      <nuxt-link :to="{ path: '/cloud' }">Cloud</nuxt-link>
      <nuxt-link :to="{ path: '/calculator' }">Calculator</nuxt-link>
      <template v-if="user">
        <button @click="user = null">Sign out</button>
      </template>
      <template v-else>
        <dialog-sign-in
          v-if="dialogs.signIn"
          @close="dialogs.signIn = !dialogs.signIn"
        />
        <dialog-sign-up
          v-if="dialogs.signUp"
          @close="dialogs.signUp = !dialogs.signUp"
        />
        <button @click="dialogs.signIn = !dialogs.signIn">Sign in</button>
        <button @click="dialogs.signUp = !dialogs.signUp">Sign up</button>
      </template>
    </header>
  </div>
</template>

<style scoped lang="scss">
.logo {
  width: 184px;
  height: 100px;
  background-image: url("/image/RainHostingLogo.png");
  background-size: contain;
  display: block;
}

.grid {
  display: grid;
  grid-auto-flow: column;
  width: 100%;
}
</style>
