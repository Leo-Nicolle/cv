import Vue from "vue";
import App from "./App.vue";
import router from "./router";

Vue.config.productionTip = false;

Vue.mixin({
  methods: {
    getTranslated(object, key) {
      if (object.length) {
        return this.language === "english" ? object[0] : object[1];
      }
      return (
        object[`${key}_${this.language}`] ||
        object[key] ||
        object[`${key}_english`]
      );
    }
  }
});

new Vue({
  router,
  render: h => h(App)
}).$mount("#app");
