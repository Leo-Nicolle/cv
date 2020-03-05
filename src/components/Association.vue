<script>
import Gallery from "./Gallery.vue";

export default {
  name: "Association",
  extends: Gallery,
  props: ["language"],
  data() {
    return {
      title: "Associative Involvment",
      title_french: "Associations",
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
          Our festival continues to be a family event, with activities for kids, youth and a wide range of music styles.<br/>`,
          description_french: `Chaque année je participe à l'organisation du festival Ce Murmure.<br/>
          La première édition a accueuillit 400 personnes dans le jardin d'un bénévole.<br/>
          Nous avions pour scène une remorque de tracteur et étions juste 20 bénévoles.<br/>
          Cette année, 9ème édition, nous avons fait venir 2000 personnes.<br/>
          Notre festival est un événement familial proposant des activités pour les enfants et une bonne variété de styles musicaux.<br/>`
        },
        {
          title: `Teacher`,
          title_french: `Prof`,
          icon: "icon-homework",
          image: `/teach/1.jpg`,
          description: `For 2 years now, I have volunteered as a Math and Science teacher at SPES Villeurbanne, an association dedicated to giving free evening classes to underprivileged youth.<br/>
          The French education system is free but not egalitarian and suburbs are aggrieved in matter of education.<br/>
          This is a way for me to give back to the community.<br/>`,
          description_french: `Pendant 2ans j'ai donné des cours de Maths à SPES Villeurbanne, une association proposant des cours particuliers gratuits aux élèves défavorisés.<br/>`
        },
        {
          title: `Drama`,
          title_french: `Théatre`,
          icon: "icon-theater",
          images: ["/theater/1.jpg", "/theater/2.jpg"],
          description: `I  started to practise drama in high school and during my university years.<br/>
          We created a theatre club and built two shows: 'A Petites Pierres' and 'Petites Histoire de la Folie Ordinaire.<br/>`,
          description_french: `J'ai commencé le théatre au lycée et continué tout au long de mes études.<br/>,
          Nous avons créé une petite association et monté deux pièces: 'A Petites Pierres' et 'Petites Histoire de la Folie Ordinaire.<br/>`
        }
      ]
    };
  }
};
</script>

<style scoped></style>
