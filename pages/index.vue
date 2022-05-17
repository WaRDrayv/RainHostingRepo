<script>
//import "@/src/input.css";
</script>

<template>
  <Title>RainHosting</Title>
  <div>
    <div>
      <div>
        <h1 class="text-2xl font-mono font-bold">RainHosting</h1>
        <p>
          Высококачественный хостинг с серверами в сертифицированных дата
          центрах РФ и зарубежом(дата центры в других странах смотрите в разделе
          About/О нас)
        </p>
        <p
          class="font-extrabold text-2xl"
          style="margin-top: 50px; text-align: center"
        >
          Наш хостинг входит в топ лучших хостингов евразии. Наш хостинг
          предоставляет для всех
          <b>тарифах:</b>
        </p>
      </div>
      <div>
        <table>
          <tr>
            <TheBenefitsTable />
          </tr>
        </table>
      </div>
    </div>
  </div>
</template>

<style>
p {
  font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas,
    "Liberation Mono", "Courier New", monospace;
  font-size: large;
  padding-top: 20px;
}

td {
  border-top-left-radius: 0.5rem; /* 8px */
  border-top-right-radius: 0.5rem; /* 8px */
  background-color: rgb(59 130 246);
  margin-left: 50px;
}
</style>
