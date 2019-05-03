<template>
  <div>
    <transition 
    @enter="enterEl"
    @leave="leaveEl"
    :css="false">
      <div class= "container" :id = "slideshowid" v-if = "visible">
        <div  class = "slideshow-image-container"
         v-on:resize="handleResize($event)">
          <img v-if = "slideshow.image" class= "image-slideshow"
            v-bind:src= "slideshow.image">
          </img>   
          <div v-else class = "slideshow-container">
            <i class="icon-left-arrow icon-slideshow"
            @click = "onPrevClick({array: slideshow.content})"></i>
            <ul class="ul-slideshow">
               <li v-for="(content,index) in slideshow.content"
                 v-bind:index="index"
                 >
                   <img class="image-slideshow"
                    v-bind:src= "content"
                    v-if = "isVisible(index)"
                  >
                  </img>
               </li>
            </ul>
            <i class="icon-right-arrow icon-slideshow"
              @click = "onNextClick({array: slideshow.content})"></i>
          </div>
        </div>
        <div class="project-description">
            <p v-html="slideshow.description"></p>
        </div>
      </div>
    </transition> 
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
   data(){
    return {
      visible: false,
      currentIndex: 0,
      change: false,
      ratio: {height : 0, opacity: 1, scrollDiff: 0, opacity: 1},
      slideshow: {},
      slideshowid: "",
    }
   },

   methods: {
     enterEl(el, done) {
        this.currentIndex = 0;
        this.tweenHeight(0, 1, el, done);
    },
    leaveEl(el, done) {
      this.tweenHeight(1, 0, el, done);
    },
    isVisible(index) {
      return this.currentIndex == index;
    },
    onPrevClick({array}) {
      this.currentIndex = (this.currentIndex+1)%array.length;
    },
    onNextClick({array}) {
      this.currentIndex = (this.currentIndex+1)%array.length;
    },

    tweenOpacity(){
      this.change = true;
      this.ratio.opacity = 1;
      this.ratio.tweenOut = true;
      const tweenOut =  new TWEEN.Tween(this.ratio) 
        .to({opacity:0}, 800) 
        .easing(TWEEN.Easing.Quadratic.Out) 
        .onUpdate(this.computeSlideshowHeightOpacity)
        .onComplete(() =>{
          this.visible = false;
          this.visible = true;
          this.ratio.tweenOut = false;
        });
      const tweenIn =new TWEEN.Tween(this.ratio) 
          .to({opacity:1}, 600) 
          .easing(TWEEN.Easing.Quadratic.Out) 
          .onUpdate(
              this.computeSlideshowHeightOpacity         
          )
         .onComplete(() =>{        
          this.change = false;
        })
      
       tweenOut
        .chain(tweenIn)
        .start();
    },

    tweenHeight(start,  end ,el , done){
       this.ratio.element = el;
       this.ratio.height = start;
       new TWEEN.Tween(this.ratio) 
          .to({height: end}, 3000) 
          .easing(TWEEN.Easing.Quadratic.Out) 
          .onUpdate(this.computeSlideshowHeight)
          .start()
          .onComplete(done);
    },
    computeSlideshowHeight(){
        const image = this.ratio.element.firstChild.firstChild;
        const text = this.ratio.element.children[1];
        const offset = image.offsetTop + image.offsetHeight -1 < text.offsetTop
          ? text.offsetHeight
          : 18;
        this.ratio.element.style.setProperty('height', 
          Math.round(this.ratio.height 
            * (this.ratio.element.firstChild.firstChild.offsetWidth 
            / 1.777 + offset)
          )+"px");        
    },
    computeSlideshowHeightOpacity(){
        const opacityElement = document.getElementById(this.slideshowid);
        opacityElement.style.setProperty('opacity', this.ratio.opacity);

        if(this.ratio.tweenOut) return;
        const image = this.ratio.element.firstChild.firstChild;
        const text = this.ratio.element.children[1];
        const diff = image.offsetTop + image.offsetHeight -1 < text.offsetTop
          ? text.offsetHeight
          : 0;
        this.ratio.element.style.setProperty('height', 
          Math.round(this.ratio.opacity * diff + 
            this.ratio.element.firstChild.firstChild.offsetWidth / 1.777
          )+"px");
    }

  },
};

</script>

<style>

.container{    
    overflow: hidden;
    display: flex;
    align-items: flex-start;
    justify-content: space-between;  
    width: 100%;
    max-width: 100%
}

.slideshow-image-container{
    max-width: 60%;
    min-width: 60%;
    margin-left: 32px;
    margin-top: 16px;
}
.slideshow-container{
  display: flex;
  align-items: center;
}
.button-slideshow{
  max-height: 20px;
}

.ul-slideshow{
  padding: 0;
  margin: 0;
}
.image-slideshow {
    width: 100%;
}
.icon-slideshow{
  font-size: 22px;
  cursor: pointer;
  padding: 4px 0px 0px 0px;
  border-radius: 4px;
  margin: 0 4px;
}
.icon-slideshow:hover{
  background-color: var( --blue-2);
}
.project-description{
    text-align: justify;
    margin-left: 32px ;
}

@media only screen and (max-width: 768px) {
    /* For mobile phones: */
    .container{
      flex-wrap: wrap; 
    }
    .slideshow-image-container {
        width: 85%;
        min-width: 85%;
        margin: auto;
    }
    .project-description{
        margin: 0 12px;
    }
    .icon-slideshow{
       font-size: 14px;
       padding: 2px 0px 0px 0px;
       border-radius: 2px;
       margin: 0 2px;
    }
    .icon-slideshow:hover{
      background-color: inherit;
    }
}

</style>
