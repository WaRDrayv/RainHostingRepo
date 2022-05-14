import { defineNuxtConfig } from 'nuxt'

// https://v3.nuxtjs.org/docs/directory-structure/nuxt.config
export default defineNuxtConfig({
  css: ['~/src/output.css'],
  build: {
    postcss: {
      postcssOptions: require('./postcss.config.js'),
    },
  }
})