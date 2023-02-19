<template>
  <h1>Pokedex</h1>
  <p>This will display pokemons from Gen1!</p>
  <i class="material-symbols-outlined" :class="{ isPressed: ArrowUp }" v-html="'expand_less'" id="arrowKeyUp"/>
  <i class="material-symbols-outlined" :class="{ isPressed: ArrowRight }" v-html="'chevron_right'" id="arrowKeyRight"/>
  <i class="material-symbols-outlined" :class="{ isPressed: ArrowLeft }" v-html="'chevron_left'" id="arrowKeyLeft"/>
  <i class="material-symbols-outlined" :class="{ isPressed: ArrowDown }" v-html="'expand_more'" id="arrowKeyDown"/>
</template>

<script setup>
import { useMagicKeys } from '@vueuse/core'

const {ArrowUp, ArrowDown, ArrowLeft, ArrowRight} = useMagicKeys()
</script>

<style scoped>
.isPressed {
  color: white;
}
</style>