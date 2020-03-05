<template>
  <div
    class="container slideshow"
    :style="{ opacity, 'max-height': height }"
    v-if="content"
  >
    <div class="slideshow-image-container" v-on:resize="handleResize($event)">
      <img
        v-if="content.image"
        class="image-slideshow"
        v-bind:src="content.image"
        @load="loadedImages += 1"
      />

      <div v-else class="slideshow-container">
        <i
          class="icon-left-arrow icon-slideshow"
          @click="onPrevClick({ array: content.images })"
        ></i>
        <ul class="ul-slideshow">
          <li v-for="(image, index) in content.images" :index="index">
            <img
              class="image-slideshow"
              :src="image"
              :style="isVisible(index)"
              @load="loadedImages += 1"
            />
          </li>
        </ul>
        <i
          class="icon-right-arrow icon-slideshow"
          @click="onNextClick({ array: content.images })"
        ></i>
      </div>
    </div>
    <p class="project-description" v-html="content.description" />
  </div>
</template>

<script>
function animate(time) {
  requestAnimationFrame(animate);
  TWEEN.update(time);
}
requestAnimationFrame(animate);

const TWEEN = require("tween.js");
export default {
  name: "Slideshow",
  props: ["content"],
  data() {
    return {
      visible: false,
      opacity: 1,
      height: "0px",
      loadedImages: 0,
      currentIndex: 0,
      maxHeight: 0
    };
  },
  watch: {
    content: function(newValue, oldValue) {
      if (this.visible) {
        this.tweenOpacity(0, 1).start();
      }
      this.loadedImages = 0;
    },
    loadedImages: function(newValue) {
      const total = this.content
        ? this.content.image
          ? 1
          : this.content.images.length
        : Infinity;
      if (newValue !== total) {
        return;
      }
      this.visible = this.visible || newValue === total;
    },
    visible: function(newValue, oldValue) {
      //hiding
      if (oldValue && !newValue) {
        console.log("ici", this.$el.scrollHeight);
        this.tweenHeight(1, 0, () => console.log("done"));
      }
      // showing
      if (!oldValue && newValue) {
        this.maxHeight = this.$el.scrollHeight;
        console.log("maxHeight", this.maxHeight);
        this.currentIndex = 0;
        this.tweenHeight(0, 1, () => console.log("done"));
      }
    }
  },
  methods: {
    isVisible(index) {
      return { display: this.currentIndex == index ? "" : "none" };
    },
    onPrevClick({ array }) {
      this.currentIndex = (this.currentIndex + 1) % array.length;
    },
    onNextClick({ array }) {
      this.currentIndex = (this.currentIndex + 1) % array.length;
    },
    tweenOpacity(start, end) {
      const time = { t: start };
      return new TWEEN.Tween(time)
        .to({ t: end }, 800)
        .easing(TWEEN.Easing.Quadratic.Out)
        .onUpdate(({ t }) => {
          this.opacity = time.t;
        });
    },
    tweenHeight(start, end, done) {
      const time = { t: start };
      new TWEEN.Tween(time)
        .to({ t: end }, 3000)
        .easing(TWEEN.Easing.Quadratic.Out)
        .onUpdate(() => {
          const image = this.$el.querySelector("img");
          const text = this.$el.children[1];
          this.height = `${Math.round(time.t * this.maxHeight)}px`;
        })
        .start()
        .onComplete(done);
    }
  }
};
</script>

<style>
.container {
  overflow: hidden;
  display: flex;
  align-items: flex-start;
  justify-content: space-between;
  width: 100%;
  max-width: 100%;
}

.slideshow-image-container {
  max-width: 60%;
  min-width: 60%;
  margin-left: 32px;
  margin-top: 0;
}
.slideshow-container {
  display: flex;
  align-items: center;
}
.button-slideshow {
  max-height: 20px;
}

.ul-slideshow {
  padding: 0;
  margin: 0;
}
.image-slideshow {
  width: 100%;
}
.icon-slideshow {
  font-size: 22px;
  cursor: pointer;
  padding: 4px 0px 0px 0px;
  border-radius: 4px;
  margin: 0 4px;
}
.icon-slideshow:hover {
  background-color: var(--blue-2);
}
.project-description {
  text-align: justify;
  margin-left: 32px;
}

@media only screen and (max-width: 768px) {
  /* For mobile phones: */
  .container {
    flex-wrap: wrap;
  }
  .slideshow-image-container {
    width: 85%;
    min-width: 85%;
    margin: auto;
  }
  .project-description {
    margin: 0 12px;
  }
  .icon-slideshow {
    font-size: 14px;
    padding: 2px 0px 0px 0px;
    border-radius: 2px;
    margin: 0 2px;
  }
  .icon-slideshow:hover {
    background-color: inherit;
  }
}
</style>
