<template>
  <div>
    <div id="main-layout">
      <app-header />
      <div
        class="bg-gradient-to-r from-indigo-400 to-indigo-300 my-8 mx-56 rounded shadow-xl px-28 py-10"
      >
        <slot />
      </div>
      <app-footer />
    </div>
  </div>
</template>
