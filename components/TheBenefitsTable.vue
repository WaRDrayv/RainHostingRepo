<script>
export default {
  data() {
    return {
      range: 0,
      benifitList: [
        {
          name: "Скорость подключения",
          description:
            "Быстрый интернет и надёжный канал, обеспечит работу даже при большом количестве запросов.  ",
          img: "image/speed.png",
        },
        {
          name: "Надёжность",
          description:
            "Высококачественное оборудование серверов, с большой отказоустойчивостью и собственная система электропитания при сбоях",
          img: "image/reliability2.png",
        },
        {
          name: "Безлимитный трафик",
          description: "Неограниченное количество трафика в любое время",
          img: "image/unlimit.png",
        },
        {
          name: "Бекапы 24/7",
          description:
            "Ежедневные и еженедельные бэкапы, всегда можно отследить и восстановить ваш проект",
          img: "image/backup2.png",
        },
        {
          name: "Защита от DDoS",
          description: "Лучшие защиты от партнёров от StarKiller и SauronDDoS ",
          img: "image/DDoS.png",
        },
        {
          name: "Доступ по FTP/SSH",
          description:
            "Возможность удалённого доступа по протоколам FTP и SSH ",
          img: "image/FTP_SSH.png",
        },
        {
          name: "Высокий Аптайм",
          description: "Ваш сайт в полном доступе",
          img: "image/time.png",
        },
        {
          name: "SSL сертификат",
          description:
            "Мы работаем с мировыми компаниями по защите и сертификации. Предоставляем секретный SSL 1.0 вышедший до 1995 года от Netscape Communications ",
          img: "image/SSL.png",
        },
        {
          name: "Лучшие Хранилища",
          description:
            "Используем только передовые HDD RAMAC 305 от компании IBM, что обеспечит надёжность и скорость вашим сайтам",
          img: "image/HDD.png",
        },
      ],
    };
  },
};
</script>

<template>
  <div id="benifit-list" class="my-32 font-mono">
    <ul class="flex flex-wrap">
      <li v-for="benifits in benifitList" :key="benifits.name">
        <i class="icon" :style="{ backgroundImage: `url(${benifits.img})` }" />
        <h1 style="text-align: center">
          <b>{{ benifits.name }}</b>
        </h1>
        <p>{{ "\n" + benifits.description }}</p>
      </li>
    </ul>
  </div>
</template>

<style scoped>
li {
  border-top-left-radius: 0.5rem; /* 8px */
  border-top-right-radius: 0.5rem; /* 8px */
  background-color: rgb(59 130 246);
  margin-left: 200px;
  margin-top: 30px;
  width: 250px;
  height: 320px;
  padding: 5px;
}

.icon {
  display: block;
  width: 64px;
  height: 64px;
  background-repeat: no-repeat;
  background-position: center;
  background-size: contain;
  position: relative;
  padding-left: 50%;
  padding-right: 50%;
}
</style>
