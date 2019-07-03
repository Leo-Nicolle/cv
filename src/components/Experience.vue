<template>
  <div>
    <div class = "h2-container">
      <div class = "h2-container">
        <h2>Experience</h2>
      </div>
    </div>
    <ul>
       <li v-for="experience in experiences">
         <h3 class="experience-title">
          <span>{{ experience.year}} -- {{ experience.time}}: {{ experience.title}}</span>
         </h3>
         <div class= "project-container">
           <p class="experience-description" v-html= " experience.description"> </p>
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
          <span class= "year">{{ education.year}} -- </span>
          <span class= "title">{{ education.title}}</span>
         </h3>
       </li>
    </ul>
  </div>
</template>

<script>

export default {
  name: "Experience",

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
          title:"Master's Degree in Image Processing and Artificial Intelligence, Université de Bourgogne",
        },
        {
          year: "2015",
          title:"Master's Degree (first year), ERASMUS in Budapest, Hungary",
        },
        {
          year: "2014",
          title:"Bachelor Degree, in maths and computer science, Université de Bourgogne",
        }
      ],
      experiences: [
        {
          year: `2019`,
          title: `Creative Developer at Displayground`,
          time: `3 months`,
          description: `At displayground I discovered emergency, quick deliveries, undecised clients and reactivity.<br/>
           I was working mainly with THREE, I integrated a <a target='_blank' href='https://github.com/Leo-Nicolle/image-background-removal'>Neural Net</a> in a project
           and made a <a target='_blank' href='https://configurator.themonkeyscobbler.com.au/'>car configurator</a>.<br/>`
         },
        {
          year: `2018`,
          title: `WebGL developper at Wanadev`,
          time: `2 years`,
          description: `The main project that I was involved in is called Kazaplan, a big WebGL app, as well as some other little side-projects related to 3D.<br/>
           We were a team of 10 developers, working within a strict gitlab workflow.<br/>
          I contributed to main features of Kazaplan such as the procedural generation of the walls and roofs, had responsibility in project management and liaised daily with our client.
<br>I have learned so much at Wanadev, and I will always be thankful to them.`,
          projects: [
            {
              topic: `Wanadev`,
              icon:"icon-wanadev",
              link: {
                title: `Wanadev page`,
                url: `https://www.wanadev.fr/`,
              },
            },
            {
              topic: `Kazaplan`,
              icon:"icon-home",
              link: {
                title: `The Kazaplan application`,
                url: `https://www.kozikaza.com/kazaplan/new`,
              },
            },
            {
              topic: `Holes-in`,
              icon:"icon-poker",
              link: {
                title: `Holes-in demo page`,
                url: `https://wanadev.github.io/holes-in/debug/index.html#page`,
              },
            },
          ],
          image: `assets/placeholder.jpg`,
        },
        {
          year: `2016`,
          title: `Internship at LIRIS (CNRS)`,
          time: `6 months`,
          description: `During this internship I developed a program that extracts the skyline from a landscape image and matches it with a Digital Elevation Model.<br/>
The final goal was to create a smart-phone application that was able to display geo-localized informations in AR.<br/>
This work led to a publication at VISAPP 2017.`,
          projects: [
             {
              topic: `LIRIS`,
              icon:"icon-liris",
              link: {
                title: `LIRIS page`,
                url: `https://liris.cnrs.fr/`,
              },
            },
            {
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
