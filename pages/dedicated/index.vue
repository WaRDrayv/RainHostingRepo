<script setup lang="ts">
import "@/src/input.css";
</script>

<template>
  <div>
    <Title>Dedicated</Title>
    <div>
      <div class="flex flex-wrap">
        <div>Dedicated info pages</div>
        <CardOfReadySolution
          title="Server 1 strong"
          price="800"
          type="buisnes"
          rom="128Gb"
          ram="6Gb"
          cores="2 core"
          dbs="unlimit"
          ssl="Есть"
        />
        <CardOfReadySolution
          title="Server 2 mighty"
          price="1366"
          type="buisnes/top"
          rom="256Gb"
          ram="16Gb"
          cores="6 core"
          dbs="unlimit"
          ssl="Есть"
        />
        <CardOfReadySolution
          title="Server 3 Empower"
          price="2599"
          type="corp"
          rom="512Gb"
          ram="32Gb"
          cores="8c/16t"
          dbs="unlimit"
          ssl="Есть"
        />
      </div>
    </div>
  </div>
</template>
<style lang="sass"></style>
