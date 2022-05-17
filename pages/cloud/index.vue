<script setup lang="ts">
import "@/assets/input.css";
const arr = [
  {
    title: "Cloud 1 seven sky",
    price: "7600",
    type: "top",
    rom: "2048Gb",
    ram: "64Gb",
    cores: "16 core",
    dbs: "unlimit",
    ssl: "Есть",
  },
  {
    title: "Cloud 2 heavenly",
    price: "12500",
    type: "top",
    rom: "4096Gb",
    ram: "84Gb",
    cores: "24 core",
    dbs: "unlimit",
    ssl: "Есть",
  },
  {
    title: "Rain Godes",
    price: "200000",
    type: "TOPES FOR TOP",
    rom: "20480Gb",
    ram: "164Gb",
    cores: "54c/108t",
    dbs: "unlimit",
    ssl: "Есть",
  },
];
</script>

<template>
  <div>
    <Title>Cloud</Title>
    <div>
      <div>Cloud info</div>
      <div class="flex flex-wrap items-center justify-center">
        <CardOfReadySolution v-for="(item, i) in arr" :key="i" :item="item" />
      </div>
    </div>
  </div>
</template>
