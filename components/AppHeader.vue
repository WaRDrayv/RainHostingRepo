<script setup lang="ts"></script>

<template>
  <div class="container mx-auto pt-8 px-4 shadow-xl">
    <header class="flex justify-between text-2xl">
      <nuxt-link class="w-1/5" to="/"><i class="logo" /></nuxt-link>
      <ul class="flex w-4/5 justify-between">
        <li>
          <nuxt-link :to="{ path: '/about' }">About</nuxt-link>
        </li>
        <li>
          <nuxt-link :to="{ path: '/vps' }">VPN</nuxt-link>
        </li>
        <li>
          <nuxt-link :to="{ path: '/dedicated' }">Dedicated</nuxt-link>
        </li>
        <li>
          <nuxt-link :to="{ path: '/cloud' }">Cloud</nuxt-link>
        </li>
        <li>
          <nuxt-link :to="{ path: '/calculator' }">Calculator</nuxt-link>
        </li>
        <li></li>
      </ul>
    </header>
  </div>
</template>

<style>
.logo {
  width: 184px;
  height: 100px;
  background-image: url("/image/RainHostingLogo.png");
  background-size: contain;
  display: block;
}
</style>
