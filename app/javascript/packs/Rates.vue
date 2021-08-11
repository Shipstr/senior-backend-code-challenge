<template>
  <div>
    <ul>
      <li class="title">
        <div>Carrier</div>
        <div>Origin</div>
        <div>Destination</div>
        <div>Rate</div>
      </li>
      <li v-for="rate in rates" :key="rate.id">
        <div>{{ rate.name }}</div>
        <div>{{ rate.origin }}</div>
        <div>{{ rate.destination }}</div>
        <div>{{ rate.rate }} USD</div>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'Rates',
  data () {
    return {
      rates: [
        {
          id: 1,
          name: 'carrier name',
          origin: 'US',
          destination: 'ZA',
          rate: 1200.00
        }
      ]
    }
  },
  methods: {}
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: flex;
  justify-content: space-between;
  margin: 0 10px;
}
.title {
  font-weight: bold;
  border-bottom: 1px solid #c0c0c0;
  margin-bottom: 10px;
  text-transform: uppercase;
}
</style>
