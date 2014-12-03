Router.configure({
  layoutTemplate: 'layout'
});

Router.map(function(){
  this.route('home', {path:'/'});
  this.route('about', {path:'/about'});
  this.route('myList', {path:'/myList'});
  this.route('contact', {path:'/contact'});
})

// Another way to route...

// Router.route('/', function () {
//   this.render('home');
// });

// Router.route('/about');

// Router.route('/contact');

// Router.route('/myList');

// Router.route('/navigation');