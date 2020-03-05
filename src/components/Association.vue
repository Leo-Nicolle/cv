<script>
import Gallery from "./Gallery.vue";

export default {
  name: "Association",
  extends: Gallery,
  data() {
    return {
      title: "Associative Involvment",
      ulgallery: "association",
      slideshowid: "association-slideshow",
      items: [
        {
          title: `Ce Murmure`,
          icon: "icon-cemurmure",
          images: [
            "/cemurmure/1.jpg",
            "/cemurmure/2.jpg",
            "/cemurmure/3.jpg",
            "/cemurmure/4.jpg",
            "/cemurmure/5.jpg"
          ],
          description: `Each and every year I participate in the organisation of Ce Murmure Festival.<br/>
The first edition welcomed just 400 people in a friends garden.<br/>
The stage was a simple tractor trailer and we were just 20 volunteers.<br/>
This year was the 8th edition which welcomed 2000 people.<br/>
Our festival continues to be a family event, with activities for kids, youth and a wide range of music styles.<br/>`
        },
        {
          title: `Teacher`,
          icon: "icon-homework",
          description: `For 2 years now, I have volunteered as a Math and Science teacher at SPES Villeurbanne, an association dedicated to giving free evening classes to underprivileged youth.<br/>
The French education system is free but not egalitarian and suburbs are aggrieved in matter of education.<br/>
This is a way for me to give back to the community.<br/>`,
          image: `/teach/1.jpg`
        },
        {
          title: `Drama`,
          icon: "icon-theater",
          images: ["/theater/1.jpg", "/theater/2.jpg"],
          description: `I  started to practise drama in high school and during my university years.<br/>
          We created a theatre club and built two shows: 'A Petites Pierres' and 'Petites Histoire de la Folie Ordinaire.<br/>`
        }
      ]
    };
  }
};
</script>

<style scoped></style>
