  <template>
  <div class = "icon-list-container">
     <div class = "h2-container">
      <h2>{{title}}</h2>
     </div>
     <ul>
       <li v-for="item in items" >
        <div @click= "showSlideshow({
         content: item.slideshow || item.image,
         description: item.description})">
          <i :class="item.icon"></i>
          <h3 class="icon-title"> {{ item.title  }}</h3>
        </div>
       </li>
    </ul>
    <slideshow></slideshow>
  </div>
</template>

<script>

import Slideshow from './Slideshow.vue'

export default  {
  name:"Gallery",
  methods: {
   
    showSlideshow({content, description}){
      const data = this.$children[0].$data;

      if(!data.visible){
        data.slideshowid = this.slideshowid;
      }
      const shouldChange = data.visible && data.slideshow.content !== content;
      const shouldHide = data.visible && data.slideshow.content === content;
      data.slideshow.content = content;
      if(typeof content === "string"){
        data.slideshow.image = content;
      }else{
        data.slideshow.image = null;
      }
      data.slideshow.description = description;
      if(shouldChange){
        this.$children[0].tweenOpacity();
      }
      data.visible = !shouldHide;
     
    },
  },
  data() {
    return {
      isGalleryActive: false,
      title: "",
      items: [
      ],
      "ulgallery": "",
      "slideshowid": ""
    }
  },
  props: {
  },
  components: {
    'slideshow': Slideshow,
  },
};
</script>

<style lang="scss">

</style>
