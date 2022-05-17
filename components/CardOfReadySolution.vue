<script>
export default {
  props: ["title", "price", "type", "rom", "ram", "cores", "dbs", "ssl"],
  data() {
    return {};
  },
};
</script>

<template>
  <div class="cards-fild mt-20 mx-10 w-1/5 h-1/5">
    <div class="h-4/5 bg-slate-400 rounded-lg">
      <ul>
        <li class="text-xl font-bold">{{ title }}</li>
        <li>{{ price + " Кредитов/месяц" }}</li>
        <li class="mb-6 mt-2 border-b-2">{{ type }}</li>
        <li>{{ "HDD: " + rom }}</li>
        <li>{{ "RAM: " + ram }}</li>
        <li>{{ "Cors: " + cores }}</li>
        <li>{{ "Баз данных: " + dbs }}</li>
        <li>{{ "SSL сертификат: " + ssl }}</li>
        <button
          class="button-order border-solid border-black border-2 rounded-lg mt-5"
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
