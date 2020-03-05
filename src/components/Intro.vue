<template>
  <div class="intro-containter">
    <div>
      <div class="flex-intro-container">
        <p>Léo Nicolle</p>
        <div id="contact">
          <p><a href="mailto:nicolle_leo@yahoo.fr">Contact</a></p>
          <div id="flag-container">
            <img src="french.png" @click="$emit('translate-to', 'french')" />
            <img src="english.png" @click="$emit('translate-to', 'english')" />
          </div>
        </div>
      </div>
    </div>
    <p id="subtitle">
      {{
        getTranslated([
          "Computer Vision, 3D Developer",
          "Développeur 3D, Vision par Ordinateur"
        ])
      }}
    </p>
  </div>
</template>

<script>
export default {
  name: "Intro",
  props: ["language"]
};
</script>

<style lang="scss" scoped>
p,
a {
  font-size: 28px;
  font-family: "antique_olive_t_otbold", serif;
  font-weight: bold;
  color: var(--second-color);
  margin-bottom: 0px;
}

.intro-containter {
  display: "flex";
}
.flex-intro-container {
  display: flex;
  justify-content: space-between;
}
#contact {
  display: flex;
}
#contact > p {
  margin-right: 32px;
}
#subtitle {
  text-align: left;
  margin-top: 32px;
  margin-bottom: 32px;
}
#flag-container {
  display: flex;
  max-width: 24px;
}
#flag-container > img {
  width: 100%;
  height: auto;
  margin: 0 2px;
  transform-origin: center;
  transform: translateY(25%);
  cursor: pointer;
}

@media only screen and (max-width: 768px) {
  p,
  a {
    font-size: 18px;
  }
}
</style>
