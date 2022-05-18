<script setup>
import BaseDialog from "./BaseDialog.vue";

const user = useUser();
const emit = defineEmits(["close"]);

async function send(body) {
  user.value = await $fetch("/api/sign-up", { method: "POST", body });
  emit("close");
}
</script>

<template>
  <base-dialog @send="send" @close="emit('close')">Sign up</base-dialog>
</template>
