var app = angular
			.module("myModule", [])
			.controller("myController", function($scope) {
				$scope.productList = productList;
				$scope.sortColumn = "";
				$scope.reverseSort = false;
				$scope.sortData = function(column) {
					$scope.reverseSort = ($scope.sortColumn == column) ? !$scope.reverseSort : false;
					$scope.sortColumn = column;
				}
				$scope.getSortClass = function(column) {
					if($scope.sortColumn == column){
						return $scope.reverseSort ? 'arrow-down' : 'arrow-up';
					}
					return '';
				}
			});