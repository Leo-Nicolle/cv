<template>
  <div class="icon-list-container">
    <div class="h2-container">
      <h2>{{ getTranslated(this.$data, "title") }}</h2>
    </div>
    <ul>
      <li v-for="item in items">
        <div @click="onItemClick(item)">
          <i :class="item.icon"></i>
          <h3 class="icon-title">{{ getTranslated(item, "title") }}</h3>
        </div>
      </li>
    </ul>
    <slideshow :content="selectedItem" :language="language"></slideshow>
  </div>
</template>
<script>
import Slideshow from "./Slideshow.vue";

export default {
  name: "Gallery",
  props: ["language"],
  methods: {
    onItemClick(item) {
      if (this.selectedItem === item) {
        this.selectedItem = { ...item, folding: true };
      } else {
        this.selectedItem = item;
      }
    }
  },
  data() {
    return {
      selectedItem: null,
      title: "",
      items: []
    };
  },
  props: {},
  components: {
    slideshow: Slideshow
  }
};
</script>

<style lang="scss"></style>
