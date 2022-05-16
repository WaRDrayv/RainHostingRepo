<script>
export default {
  props: ["title", "price", "type", "rom", "ram", "cores", "dbs", "ssl"],
  data() {
    return {
      selfTitle: this.title,
      selfPrice: this.price,
    };
  },
};
</script>

<template>
  <div class="flex flex-wrap w-auto cards-fild">
    <div class="w-1/5 h-4/5 bg-slate-400">
      <ul>
        <li>{{ title }}</li>
        <li>{{ selfPrice }}</li>
      </ul>
    </div>
  </div>
</template>

<style>
.cards-fild {
  height: 500px;
}
</style>
