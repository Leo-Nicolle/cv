<template>
  <div>
    <link rel="stylesheet" type="text/css" href="//font/icons.css" />
    <link rel="stylesheet" type="text/css" href="//style.css" />
    <intro @translate-to="onTranslate"></intro>
    <experience :language="language"></experience>
    <skill :language="language"></skill>
    <project :language="language"></project>
    <association :language="language"></association>
  </div>
</template>

<script>
import Intro from "./Intro.vue";
import Experience from "./Experience.vue";
import Project from "./Project.vue";
import Skill from "./Skill.vue";
import Association from "./Association.vue";

export default {
  name: "Home",
  components: {
    intro: Intro,
    experience: Experience,
    skill: Skill,
    project: Project,
    association: Association
  },
  data() {
    return {
      language: "english"
    };
  },
  methods: {
    onTranslate(language) {
      this.language = language;
      console.log("translate", language);
    }
  }
};
</script>
