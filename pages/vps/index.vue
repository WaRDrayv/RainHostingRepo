<script setup lang="ts">
//definePageMeta({ layout: "custom" });
const arr = [
  {
    title: "Host1 VPS",
    price: "190",
    type: "begginer",
    rom: "5Gb",
    ram: "2Gb",
    cores: "1 core",
    dbs: "unlimit",
    ssl: "Есть",
  },
  {
    title: "Host2 VPS",
    price: "350",
    type: "start",
    rom: "10Gb",
    ram: "4Gb",
    cores: "2 core",
    dbs: "unlimit",
    ssl: "Есть",
  },
  {
    title: "Host3 VPS",
    price: "560",
    type: "buisnes",
    rom: "24Gb",
    ram: "8Gb",
    cores: "4 core",
    dbs: "unlimit",
    ssl: "Есть",
  },
];
</script>

<template>
  <div>
    <Title>VPS/VPN</Title>
    <div>
      <div class="">VPS/VPN page</div>
      <div class="flex flex-wrap">
        <CardOfReadySolution v-for="(item, i) in arr" :key="i" :item="item" />
      </div>
    </div>
  </div>
</template>
