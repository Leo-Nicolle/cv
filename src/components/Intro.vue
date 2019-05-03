<template>
  <div class= "intro-containter">
    <div>
      <div class= "flex-intro-container">
          <p>Léo Nicolle</p>    
          <div id = "contact"> 
            <p> <a href="mailto:nicolle_leo@yahoo.fr">Contact</a></p>
          </div>
      </div>
    </div>
    <p id ="subtitle">Computer Vision, 3D Developer</p>
  </div>
</template>

<script>

export default {
  name: 'Intro',
};
</script>

<style lang="scss" scoped>
p, a{
   font-size: 28px;
   font-family: 'antique_olive_t_otbold', serif;
   font-weight: bold;
   color: var( --second-color);
   margin-bottom: 0px;
}

.intro-containter{
  display: "flex";

}
.flex-intro-container{
  display:flex;
  justify-content: space-between;
}
#contact{
  display:flex;
}
#contact > p {
  margin-right: 32px;
}
#subtitle{
  text-align: left;
  margin-top: 32px;
  margin-bottom: 32px;

}

@media only screen and (max-width: 768px) {
   p, a{
    font-size: 18px;
   }
}

    

</style>
