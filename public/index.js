// var itemTemplate = document.querySelector('#item-card');
// var itemContainer = document.querySelector('.row');

// itemContainer.appendChild(itemTemplate.content.cloneNode(true));
// itemContainer.appendChild(itemTemplate.content.cloneNode(true));

// axios.get("http://localhost:3000/v1/all-products").then(function(response)) {

//   // console.log(response.data);
//   var item = response.data;
//   // loop through data
//   for (var i = 0; i < item.length; i++) {
//     var itemClone = itemTemplate.content.cloneNode(true);
//     itemClone.querySelector('.card-title').innerText = item[i].title;
//     itemClone.querySelector('.instructions').innerText = item[i].ingredients;
//     itemClone.querySelector('.when').innerText = item[i].directions;
//     itemClone.querySelector('.seller').innerText = item[i].chef;
//     itemClone.querySelector('.image-url').src = item[i].image_url;
//     itemContainer.appendChild(recipeClone);
//   }

//   // modify the clone
// });
// }

// setTimeout(function() {
//   console.log("Second task done!");
// }, 4000)

// setTimeout(function() {
//   console.log("Third task done!");

// }, 6000)

// setTimeout(function() {
//   console.log("First task done!");
// }, 2000)


var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "Welcome to Vue.js!"
    };
  },
  created: function() {},
  methods: {},
  computed: {}
};

var router = new VueRouter({
  routes: [{ path: "/", component: HomePage }],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router
});
