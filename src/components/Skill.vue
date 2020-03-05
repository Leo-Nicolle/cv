<template>
  <div>
    <div class="h2-container">
      <h2>{{ getTranslated(["Skills", "Compétences"]) }}</h2>
    </div>
    <ul class="skill-ul">
      <li class="skill-li" v-for="skill in skills">
        <h3 class="skill-title">
          <span>{{ getTranslated(skill, "title") }}</span>
        </h3>
        <ul class="subskill-ul">
          <li class="subskill-li" v-for="subskill in skill.subskills">
            <div class="status-container">
              <div class="status" :style="{ width: subskill.percent }">
                <p>{{ getTranslated(subskill, "title") }}</p>
              </div>
            </div>
          </li>
        </ul>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: "Skill",
  props: ["language"],
  data() {
    return {
      skills: [
        {
          title: "WebGL",
          subskills: [
            {
              title: "Babylonjs",
              percent: "90%"
            },
            {
              title: "THREE",
              percent: "87%"
            },
            {
              title: "Procedural",
              title_french: "Procédural",
              percent: "85%"
            },
            {
              title: "Shaders",
              percent: "83%"
            }
          ]
        },
        {
          title: "Web",
          subskills: [
            {
              title: "VueJS",
              percent: "95%"
            },
            {
              title: "Meteor",
              percent: "90%"
            },
            {
              title: "Webpack",
              percent: "87%"
            },
            {
              title: "Less",
              percent: "80%"
            },
            {
              title: "Node",
              percent: "75%"
            }
          ]
        },
        {
          title: "IA",
          subskills: [
            {
              title: "Image Recognition",
              title_french: "Reconnaissance d'Image",
              percent: "80%"
            },
            {
              title: "Image processing",
              title_french: "Traitement d'Image",
              percent: "78%"
            },
            {
              title: "Tensorflow",
              percent: "70%"
            }
          ]
        }
        // {
        //   title: "Vision",
        //
        //   subskills: [
        //     {
        //       title: "SVM",
        //       percent: "88%"
        //     },
        //     {
        //       title: "RNN",
        //       percent: "84%"
        //     },
        //     {
        //       title: "Object recognition",
        //       percent: "82%"
        //     },
        //     {
        //       title: "Feature extraction",
        //       percent: "75%"
        //     },
        //     {
        //       title: "Camera callibration",
        //       percent: "74%"
        //     }
        //   ]
        // },
        // {
        //   title: "Tools",
        //   subskills: [
        //     {
        //       title: "Node",
        //       percent: "95%"
        //     },
        //     {
        //       title: "Webpack",
        //       percent: "85%"
        //     },
        //     {
        //       title: "Git",
        //       percent: "70%"
        //     },
        //     {
        //       title: "c++",
        //       percent: "60%"
        //     },
        //     {
        //       title: "Open-CV",
        //       percent: "55%"
        //     }
        // ]
        // }
      ]
    };
  }
};
</script>

<style lang="scss" scoped>
ul {
  padding: 0;
  display: block;
}
li {
}

.skill-ul {
  display: flex;
  flex-wrap: wrap;
  align-items: flex-start;
  justify-content: space-between;
  text-align: left;
  width: 100%;
  min-width: 250px;
}
.skill-li {
  min-width: 250px;
  padding-right: 16px;
}
.skill-li > h3 {
  padding-left: 16px;
}

.subskill-ul {
  text-align: left;
}
.subskill-li {
  height: 24px;
}

.status-container {
  width: 100%;
  height: 26px;
  border-radius: 16px;
  background-color: var(--blue-2);
}
.status {
  border-radius: 16px;
  background-color: var(--second-color);
  color: var(--white-2);
  height: 100%;
}
.status > p {
  margin-left: 12px;
  position: relative;
  top: 4px;
  font-size: 14px;
  white-space: nowrap;
}

@media only screen and (max-width: 768px) {
  .container {
    flex-wrap: wrap;
  }
  .slideshow-image-container {
    width: 85%;
    min-width: 85%;
    margin: auto;
  }
  .subskill-ul {
    min-width: 255px;
    margin-left: 10%;
  }
}
</style>
