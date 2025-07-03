<template>
  <div>
    <Header />
    <main class="p-8">
      <h2 class="text-xl font-semibold mb-4">Conteúdo da página</h2>
      <p>Este é um texto de exemplo para testar Tailwind CSS.</p>
    </main>
  </div>
</template>

<script>
import Header from '../Components/Header.vue'

export default {
  components: {
    Header
  }
}
</script>
