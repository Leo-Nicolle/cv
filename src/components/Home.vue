<template>
  <div>
  <!-- <link rel="stylesheet" type="text/css" href="//font/icons.css"> -->
  <!-- <link rel="stylesheet" type="text/css" href="//style.css"> -->
  <intro></intro>
  <experience></experience>
  <skill></skill>
  <project></project>
  <association></association>

  </div>
</template>

<script>
  import Intro from './Intro.vue'
  import Experience from './Experience.vue'
  import Project from './Project.vue'
  import Skill from './Skill.vue'
  import Association from './Association.vue'

  export default {
    name: 'Home',
    components: {
      'intro': Intro,
      'experience': Experience,
      'skill': Skill,
      'project': Project,
      'association' : Association,
    },
 };

</script>
