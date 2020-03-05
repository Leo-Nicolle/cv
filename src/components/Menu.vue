<template>
  <div class="menu-container">
    <ul class="item-ul">
      <li v-for="item in items">
        <div class="item-container">
          <span class="item-title" v-html="item.title"> </span>
          <span class="item-circle"> </span>
        </div>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: "Menu",

  methods: {
    // onProjectClick({url}){
    //   win = window.open(url, '_blank');
    // },
  },

  data() {
    return {
      items: [
        {
          title: "Introduction"
        },
        {
          title: "Experience"
        },
        {
          title: "Skill"
        },
        {
          title: "Project"
        },
        {
          title: "Association"
        }
      ]
    };
  }
};
</script>

<style lang="scss" scoped>
.item-ul {
  display: flex;
  flex-direction: column;
  align-items: flex-end;
}

.item-ul > li {
  margin-bottom: 10px;
}

.menu-container {
  position: absolute;
  right: 24px;
}

.item-container {
  display: flex;
  align-items: center;
}

.item-circle {
  height: 30px;
  width: 30px;
  border-radius: 50%;
  display: inline-block;
  margin-left: 10px;
  position: relative;
  cursor: click;
}

.item-circle:hover,
.item-circle-selected {
  box-shadow: 0 3px 3px rgba(0, 0, 0, 0.5) inset;
  background-color: #9ca19d;
}

.item-circle:after {
  content: "";
  height: 20%;
  width: 20%;
  position: absolute;
  top: 40%;
  left: 40%;
  background-color: var(--grey-1);
  box-shadow: 0 2px 2px rgba(0, 0, 0, 0.5);
  border-radius: 50%;
  display: inline-block;
}

.item-circle:hover:after {
  background-color: #444444;
}
</style>
