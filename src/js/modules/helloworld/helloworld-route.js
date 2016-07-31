angular.module('playground.helloworld', ['helloworld.ctrl'])
    .config(['$stateProvider', function($stateProvider) {
        $stateProvider
            .state('helloworld', {
                url: '',
                templateUrl: 'js/modules/helloworld/hello-world.html',
                controller: 'HelloWorldCtrl'
            });
    }]);