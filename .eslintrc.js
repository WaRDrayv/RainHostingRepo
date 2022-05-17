module.exports = {
  env: {
    node: true,
  },
  extends: ["eslint:recommended", "plugin:vue/vue3-recommended", "prettier"],
  plugins: ["prettier"],
  rules: {
    // override/add rules settings here, such as:
    // 'vue/no-unused-vars': 'error'
    "vue/require-default-prop": ["warn"],
    "vue/require-prop-types": ["warn"],
    "prettier/prettier": ["error"],
    "no-undef": ["off"],
    "vue/multi-word-component-names": ["warn"],
    "vue/no-empty-component-block": ["error"],
    "vue/component-tags-order": [
      "error",
      {
        order: ["script", "template", "style"],
      },
    ],
  },
};
