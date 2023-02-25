<template>
  

  <div class="cube-container">
      <div class="cube">
        <div class="cube-face cube-face-front">Pokedex</div>
        <div class="cube-face cube-face-bottom"></div>
      </div>
    </div> 

<h1>Pokedex de la primera generacion</h1>
  <div class="cross">
    <button class="material-symbols-outlined" :class="{ isPressed: ArrowUp || up }" v-html="'expand_less'" id="arrowKeyUp" @mousedown="up = true" @mouseup="up = false"/>
    <button class="material-symbols-outlined" :class="{ isPressed: ArrowLeft || left }" v-html="'chevron_left'" id="arrowKeyLeft" @mousedown="left = true" @mouseup="left = false"/>
    <button class="material-symbols-outlined" :class="{ isPressed: ArrowRight || right }" v-html="'chevron_right'" id="arrowKeyRight" @mousedown="right = true" @mouseup="right = false"/>
    <button class="material-symbols-outlined" :class="{ isPressed: ArrowDown || down }" v-html="'expand_more'" id="arrowKeyDown" @mousedown="down = true" @mouseup="down = false"/>
  </div>
</template>

<script setup>
import { useMagicKeys } from '@vueuse/core';
import { ref } from 'vue';

const {ArrowUp, ArrowDown, ArrowLeft, ArrowRight} = useMagicKeys();

const up = ref(false);
const down = ref(false);
const right = ref(false);
const left = ref(false);
</script>

<style scoped>
.cross {
  /*las primeras 5 lineas son para centrar el grid*/
  width: 100%;
  height: 100%;
  display: grid;
  justify-content: center;
  align-items: center;
  
  grid-template-areas: 
  '... up ...'
  'left ... right'
  '... down ...';
}
#arrowKeyUp {grid-area: up;}
#arrowKeyLeft {grid-area: left;}
#arrowKeyRight {grid-area: right;}
#arrowKeyDown {grid-area: down;}
.isPressed {
  color: white;
}
</style>