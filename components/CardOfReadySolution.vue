<script setup>
const props = defineProps({
  item: {
    type: Object,
    default: () => ({}),
  },
});
const { order } = useOrder();
</script>

<template>
  <div class="cards-fild mt-20 mx-10 w-1/5 h-1/5">
    <div class="h-4/5 bg-slate-400 rounded-lg">
      <ul class="p-5">
        <li class="text-xl font-bold">{{ props.item.title }}</li>
        <li>{{ props.item.price + " Кредитов/месяц" }}</li>
        <li class="mb-6 mt-2 border-b-2">{{ props.item.type }}</li>
        <li>{{ "HDD: " + props.item.rom }}</li>
        <li>{{ "RAM: " + props.item.ram }}</li>
        <li>{{ "Cors: " + props.item.cores }}</li>
        <li>{{ "Баз данных: " + props.item.dbs }}</li>
        <li>{{ "SSL сертификат: " + props.item.ssl }}</li>
        <button
          class="button-order border-solid border-black border-2 rounded-lg mt-5"
          @click="order(props.item)"
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
