(function () {
	'use strict';
	angular
        .module('webForms')
        .controller('webFormsController', [
			'$http',
            webFormsController]
    )

	function webFormsController($http) {
		var vm = this;
		vm.products = [];

		$http({
			method: 'GET',
			url: 'api/product'
		}).then(function successCallback(response) {
		    vm.products = response.data;
		}, function errorCallback(response) {
			// called asynchronously if an error occurs
			// or server returns response with an error status.
		});
	}
})();