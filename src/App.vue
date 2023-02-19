<template>
  <h1>Pokedex</h1>
  <p>This will display pokemons from Gen1!</p>
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
  width: 0;
  display: grid;
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