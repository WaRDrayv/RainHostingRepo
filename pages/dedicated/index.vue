<script setup lang="ts">
//import "@/assets/input.css";
const arr = [
  {
    title: "Server 1 strong",
    price: "800",
    type: "buisnes",
    rom: "128Gb",
    ram: "6Gb",
    cores: "2 core",
    dbs: "unlimit",
    ssl: "Есть",
  },
  {
    title: "Server 2 mighty",
    price: "1366",
    type: "buisnes/top",
    rom: "256Gb",
    ram: "16Gb",
    cores: "6 core",
    dbs: "unlimit",
    ssl: "Есть",
  },
  {
    title: "Server 3 Empower",
    price: "2599",
    type: "corp",
    rom: "512Gb",
    ram: "32Gb",
    cores: "8c/16t",
    dbs: "unlimit",
    ssl: "Есть",
  },
];
</script>

<template>
  <div>
    <Title>Dedicated</Title>
    <div>
      <div>Dedicated info pages</div>
      <div class="flex flex-wrap items-center justify-center">
        <CardOfReadySolution v-for="(item, i) in arr" :key="i" :item="item" />
      </div>
    </div>
  </div>
</template>
