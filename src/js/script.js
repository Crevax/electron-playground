angular.module('playground', [
    'ui.router',
    'playground.helloworld',
])
.config(['$urlRouterProvider', function($urlRouterProvider) {
    $urlRouterProvider.otherwise('/');
}]);
