<script lang="ts">
//definePageMeta({ layout: "custom" });
</script>

<template>
  <div>
    <Title>VPS/VPN</Title>
    <div>
      <div class="flex flex-wrap">
        <div class="">VPS/VPN page</div>
        <CardOfReadySolution
          title="Host1 VPS"
          price="190"
          type="begginer"
          rom="5Gb"
          ram="2Gb"
          cores="1 core"
          dbs="unlimit"
          ssl="Есть"
        />
        <CardOfReadySolution
          title="Host2 VPS"
          price="350"
          type="start"
          rom="10Gb"
          ram="4Gb"
          cores="2 core"
          dbs="unlimit"
          ssl="Есть"
        />
        <CardOfReadySolution
          title="Host3 VPS"
          price="560"
          type="buisnes"
          rom="24Gb"
          ram="8Gb"
          cores="4 core"
          dbs="unlimit"
          ssl="Есть"
        />
      </div>
    </div>
  </div>
</template>
