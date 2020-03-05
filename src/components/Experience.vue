<template>
  <div>
    <div class = "h2-container">
      <div class = "h2-container">
        <h2>{{getTranslated(['Experience','Expérience'])}}</h2>
      </div>
    </div>
    <ul>
       <li v-for="experience in experiences">
         <h3 class="experience-title">
          <span>{{ experience.year}} -- {{ getTranslated(experience, "time")}}: {{getTranslated(experience, "title")}}</span>
         </h3>
         <div class= "project-container">
           <p class="experience-description" v-html= " getTranslated(experience, 'description')"> </p>
           <div class = "icon-list-container">
             <ul>
                <li v-for="project in experience.projects" @click= "onProjectClick({url:project.link.url})">
                     <div>
                        <i :class="project.icon"></i>
                        <h3 class="icon-title">{{ project.topic }}</h3>
                     </div>
                </li>
             </ul>
         </div>
        </div>
       </li>
    </ul>
     <div class = "h2-container">
      <div class = "h2-container">
        <h2>Education</h2>
      </div>
    </div>
    <ul class= "education">
       <li v-for="education in educations">
         <h3 class="education-title">
          <span class= "year">{{ getTranslated(education, "year")}} -- </span>
          <span class= "title">{{  getTranslated(education, "title")}}</span>
         </h3>
       </li>
    </ul>
  </div>
</template>

<script>

export default {
  name: "Experience",
  props: ["language"],
  methods: {
    onProjectClick({url}){
      win = window.open(url, '_blank');
    },
  },

  data () {
    return {
      educations: [
        {
          year: "2016",
          title_english:"Master's Degree in Image Processing and Artificial Intelligence, Université de Bourgogne",
          title_french:"Master Imagerie et Intelligence Artificielle, Université de Bourgogne",

        },
        {
          year: "2015",
          title_english:"Master's Degree (first year), ERASMUS in Budapest, Hungary",
          title_french: "Première Année de master, ERASMUS à Budapest, Hongrie"
        },
        {
          year: "2014",
          title_english:"Bachelor Degree, in maths and computer science, Université de Bourgogne",
          title_french: "Licence en mathématiques et informatique, Université de Bourgogne"
        }
      ],
      experiences: [
        {
          year: `2019`,
          title_english: `Creative Developer at Displayground`,
          title_french: "Développeur Artistique à Displayground",
          time_english: `3 months`,
          time_french: `3 mois`,
          description_english: `At displayground I discovered emergency, quick deliveries, undecised clients and reactivity.<br/>
           I was working mainly with THREE, I integrated a <a target='_blank' href='https://github.com/Leo-Nicolle/image-background-removal'>Neural Net</a> in a project
           and made a <a target='_blank' href='https://configurator.themonkeyscobbler.com.au/'>car configurator</a>.<br/>`,
           description_french:`À displayground j'ai découvert l'urgence,les livraisons rapides; les clients indécis et la réactivité.<br/>
          J'ai principalement travaillé avec THREE,j'ai aussi intégré <a target='_blank' href='https://github.com/Leo-Nicolle/image-background-removal'>un réseau de neurones</a> dans une page web
          et mit au point un <a target='_blank' href='https://configurator.themonkeyscobbler.com.au/'>configurateur de voitures</a><br/>`
         },
        {
          year: `2018`,
          title_english: `WebGL developper at Wanadev`,
          title_french: "Développeur WebGL à Wanadev",
          time_english: `2 years`,
          time_french: `2 ans`,
          description_english: `The main project that I was involved in is called Kazaplan, a big WebGL app, as well as some other little side-projects related to 3D.<br/>
           We were a team of 10 developers, working within a strict gitlab workflow.<br/>
          I contributed to main features of Kazaplan such as the procedural generation of the walls and roofs, had responsibility in project management and liaised daily with our client.
<br>I have learned so much at Wanadev, and I will always be thankful to them.`,
          description_french: `J'ai principalement travaillé sur une grosse appli WebGL qui s'appelle Kazaplan et sur divers projets en 3D.<br/>
           Nous étions une équipe de 10 développeurs travaillant avec gitlab (isues, board, reviews, milestones....).<br/>
          J'ai contribué aux principales fonctionnalités de Kazaplan: la génération procédurale des murs et des toits, fait un peut de gestion de projet et
          communiqué quotidiennement avec nos clients.<br>J'ai beaucoup apprit à Wanadev et je leur serai toujours reconnaissant.`,

          projects: [
            {
              topic: `Wanadev`,
              icon:"icon-wanadev",
              link: {
                title_english: `Wanadev page`,
                title_french: `Wanadev`,

                url: `https://www.wanadev.fr/`,
              },
            },
            {
              topic: `Kazaplan`,
              icon:"icon-home",
              link: {
                title_english: `The Kazaplan application`,
                title_french: `Kazaplan`,
                url: `https://www.kozikaza.com/kazaplan/new`,
              },
            },
            {
              topic: `Holes-in`,
              icon:"icon-poker",
              link: {
                title_english: `Holes-in demo page`,
                title_french: `Holes-in demo`,
                url: `https://wanadev.github.io/holes-in/debug/index.html#page`,
              },
            },
          ],
          image: `assets/placeholder.jpg`,
        },
        {
          year: `2016`,
          title_english: `Internship at LIRIS (CNRS)`,
          title_french: `stage de fin d'études au LIRIS (CNRS)`,
          time_english: `6 months`,
          time_french: `6 mois`,

          description_english: `During this internship I developed a program that extracts the skyline from a landscape image and matches it with a Digital Elevation Model.<br/>
The final goal was to create a smart-phone application that was able to display geo-localized informations in AR.<br/>
This work led to a publication at VISAPP 2017.`,
          description_french: `Pendant ce stage j'ai développé un programme qui extrait la ligne d'horizon d'une image et qui la recale sur un modele 3d du relief.<br/>
          Le but était à terme de faire une application smartphone qui affiche des informations géo localisées en réalité augmentée.<br/>
          Nous avons publié nos résultats dans VISAPP 2017.`,
          projects: [
             {
              topic: `LIRIS`,
              icon:"icon-liris",
              link: {
                title_english: `LIRIS page`,
                title_french: `LIRIS`,

                url: `https://liris.cnrs.fr/`,
              },
            },
            {
              topic: `Publication`,
              icon:"icon-mountains",
              link: {
                title_english: `Read the publication`,
                title_french: `Lire la publication`,
                url: `https://hal-ujm.archives-ouvertes.fr/ujm-01486568/file/main.pdf`,
              },
            }
          ],
          image: `assets/experience/internship.png`,
        },
      ],
    }
  },
};

</script>

<style lang="scss" scoped>

#projects-title{
  text-align: left;
}

.project-container{
}

.experience-description{
  text-align: left;
  margin-left: 32px;
}

.education{
  display: block;
  font-size: 16px;
}

.year{
  font-family: 'Helvetica_Roman', sans-serif;
  font-size: 16px;
}

.title{
  font-size: 16px;
  font-weight: initial;
}

li{
  margin-bottom: 10px;
}

@media only screen and (max-width: 768px) {
   .project-container{
   	margin-left: 12px;
   }
   .experience-description{
     text-align: justify;
     margin-left: 4px;
   }
   .education-title{
     letter-spacing: 0.1px;
     line-height: 25px;
   }


}
</style>
        topic: `Publication`,
              icon:"icon-mountains",
              link: {
                title: `Read the publication`,
                url: `https://hal-ujm.archives-ouvertes.fr/ujm-01486568/file/main.pdf`,
              },
            }
          ],
          image: `assets/experience/internship.png`,
        },
      ],
    }
  },
};

</script>

<style lang="scss" scoped>

#projects-title{
  text-align: left;
}

.project-container{
}

.experience-description{
  text-align: left;
  margin-left: 32px;
}

.education{
  display: block;
  font-size: 16px;
}

.year{
  font-family: 'Helvetica_Roman', sans-serif;
  font-size: 16px;
}

.title{
  font-size: 16px;
  font-weight: initial;
}

li{
  margin-bottom: 10px;
}

@media only screen and (max-width: 768px) {
   .project-container{
   	margin-left: 12px;
   }
   .experience-description{
     text-align: justify;
     margin-left: 4px;
   }
   .education-title{
     letter-spacing: 0.1px;
     line-height: 25px;
   }


}
</style>
