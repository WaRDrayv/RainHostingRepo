<script setup>
import BaseDialog from "./BaseDialog.vue";

const user = useUser();
const emit = defineEmits(["close"]);

async function send(body) {
  user.value = await $fetch("/api/sign-in", { method: "POST", body });
  emit("close");
}
</script>

<template>
  <base-dialog @send="send" @close="emit('close')">Sign in</base-dialog>
</template>
