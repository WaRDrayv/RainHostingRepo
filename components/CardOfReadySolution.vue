<script>
export default {
  props: {
    item: {
      type: Object,
      default: () => ({}),
    },
  },
  emits: ["update"],
  data() {
    return {};
  },
};
</script>

<template>
  <div class="cards-fild mt-20 mx-10 w-1/5 h-1/5">
    <div class="h-4/5 bg-slate-400 rounded-lg">
      <ul class="p-5">
        <li class="text-xl font-bold">{{ item.title }}</li>
        <li>{{ item.price + " Кредитов/месяц" }}</li>
        <li class="mb-6 mt-2 border-b-2">{{ item.type }}</li>
        <li>{{ "HDD: " + item.rom }}</li>
        <li>{{ "RAM: " + item.ram }}</li>
        <li>{{ "Cors: " + item.cores }}</li>
        <li>{{ "Баз данных: " + item.dbs }}</li>
        <li>{{ "SSL сертификат: " + item.ssl }}</li>
        <button
          class="button-order border-solid border-black border-2 rounded-lg mt-5"
          @click="emit('update', item)"
        >
          Заказать
        </button>
      </ul>
    </div>
  </div>
</template>

<style>
.cards-fild {
  height: 420px;
  margin-left: auto;
  margin-right: auto;
}

.button-order {
  background-color: cornflowerblue;
  margin-left: 40%;
  margin-right: 40%;
  font-size: larger;
  padding: 5px;
}

.button-order:hover {
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
}
</style>
