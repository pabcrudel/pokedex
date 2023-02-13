import { createApp } from 'vue'
import { createPinia } from 'pinia'
import { createHead } from "@unhead/vue"

import App from './App.vue'

import './assets/style/main.css'

const app = createApp(App)

app.use(createPinia())

const head = createHead()
app.use(head)

app.mount('#app')