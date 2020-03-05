<script>
import Gallery from "./Gallery.vue";

export default {
  name: "Projects",
  extends: Gallery,
  props: ["language"],
  data() {
    return {
      title: "Personal Projects",
      ulgallery: "project",
      slideshowid: "project-slideshow",
      items: [
        {
          title: "H.O.M.E.R",
          icon: "icon-homer",
          image: "/homer/1.jpg",
          description: `H.O.M.E.R is an outer space story telling machine.<br/>
             The user inserts three words in it, presses a button and H.O.M.E.R prints them a story on a receipt. Magic!<br/>
              Inside H.O.M.E.R there is an RFID reader, a Raspberry-PI and a thermal printer.<br/>
                However, scientists still don't know how the story is generated.
            `,
          description_french: `H.O.M.E.R est une machine interstellaire à raconter les histoires.<br/>
             L'utilisateur insère trois mots, presse un bouton et H.O.M.E.R imprime une histoire sur un ticket de caisse. Magique!<br/>
              À l'intérieur d'H.O.M.E.R il y a un lecteur RFID, un Raspberry-PI et une imprimante.<br/>
              Cependant, les scientifiques n'ont toujours pas comprit comment l'histoire est générée.
            `
        },
        {
          title: "Dynamobile",
          icon: "icon-dynamobile",
          slideshow: ["/dynamo/1.jpg", "/dynamo/2.jpg"],
          description: `Dynamobile is a slot-car circuit plugged on bike dynamo.<br/>
          The faster you pedal, the faster your car goes!<br/>
          A sensor placed below the circuit is used to measure riders lap time, and a screen displays the top scores.<br/>
          Huge success with kids!<br/>`,
          description_french: `Dynamobile est un circuit de voitures branché sur dynamo.<br/>
          Plus vite vous pédalez; plus vite va votre voiture!<br/>
          Un capteur placé sous la piste mesure les meilleurs temps et les affiche sur l'écran des scores.<br/>
          Gros succès auprès des enfants!<br/>`
        },
        {
          title: "Les Ombres",
          icon: "icon-ombres",
          slideshow: ["/ombres/1.jpg", "/ombres/3.jpg", "/ombres/4.jpg"],
          description: `
          Les ombres is a poetic installation.<br/>
          People are invited to cut out a cardboard shape to complete a participatory moving shadows scene. <br/>
          In front of the screen, a crank triggers the light moving system, for more variations.<br/>`,
          description_french: `
          Les ombres est une installation poétique.<br/>
          Les participants sont invités à découper des formes en carton pour compléter une scène participative d'ombres mouvantes. <br/>
          Devant l'écran, une manivelle actionne le système de mouvement des lampes, pour plus de variations.<br/>`
        },
        {
          title: "Bwatazik",
          icon: "icon-bruit",
          slideshow: ["/bwatazik/1.jpg", "/bwatazik/2.jpg"],
          description: `Bwatazik (music box) is a musical installation.<br/>
          The table is stuffed with piezo and infrared sensors which each trigger a musical sample.<br/>
          Four people can play simultaneously (drum, bass, voice and effects).
          A visual feedback is displayed on the table to help players perceive what they are doing.<br/>`,
          description_french: `Bwatazik est une installation musicale.<br/>
          La table est truffée de capteurs infrarouges et piézos, chacun déclenchant un son différent.<br/>
          Quatre personnes peuvent jouer en même temps (batterie, basse, voix et effets).
          Un retour visuel est projeté sur la table pour aider les utilisateurs à voir ce qu'ils front.<br/>`
        },
        {
          title: "Carabino",
          icon: "icon-carabino",
          slideshow: ["/carabino/1.jpg", "/carabino/2.jpg", "/carabino/4.jpg"],
          description: `Carabinophotomaton is a pellet gun shooting stand where a photo if taken of the player if they manage to hit the target.<br/>
            The photo is then printed and the player can bring home a nice souvenir of our festival.`,
          description_french: `Carabinophotomaton est un tir à la carabine dans lequel une photo est prise si le tireur atteind le centre de la cible.<br/>
           La photo est ensuite imprimée et le joueur repart avec un souvenir du festival.`
        }
      ]
    };
  }
};
</script>

<style lang="scss" scoped></style>
