<template>
  <header class="bg-blue-600 text-white p-4 shadow-md">
    <div class="container mx-auto flex justify-between items-center">
      <h1 class="text-2xl font-bold">Meu Site</h1>
      <nav>
        <ul class="flex space-x-6">
          <li><a href="#" class="hover:underline hover:text-blue-200">Home</a></li>
          <li><a href="#" class="hover:underline hover:text-blue-200">Sobre</a></li>
          <li><a href="#" class="hover:underline hover:text-blue-200">Serviços</a></li>
          <li><a href="#" class="hover:underline hover:text-blue-200">Contato</a></li>
        </ul>
      </nav>
    </div>
  </header>
</template>

<script>
export default {
  name: 'Header',
}
</script>

<style scoped>
/* Não precisa, Tailwind cuida do estilo */
</style>
