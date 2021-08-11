<template>
  <div id="app">
    <rates />
  </div>
</template>

<script>
import rates from './packs/Rates'

export default {
  components: {
    rates: rates
  }
}
</script>
<style scoped>
#app {
  font-family: 'Helvetica Neue', Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
