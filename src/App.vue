<template>
  <h1>Pokedex</h1>
  <p>This will display pokemons from Gen1!</p>
  <i class="material-symbols-outlined" v-html="'expand_less'" id="arrowKeyUp"/>
  <i class="material-symbols-outlined" v-html="'chevron_right'" id="arrowKeyRight"/>
  <i class="material-symbols-outlined" v-html="'chevron_left'" id="arrowKeyLeft"/>
  <i class="material-symbols-outlined" v-html="'expand_more'" id="arrowKeyDown"/>
</template>

<script setup>
import { useHead } from '@unhead/vue';
useHead({  
  title: 'Pokedex'
});


</script>