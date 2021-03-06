﻿module.exports = function (angApp) {
    angApp.service('homeService', function ($http, $q) {
        this.getHomeData = function () {
            var deferred = $q.defer();
            $http({ method: 'GET', url: '/api/user/getuser' }).then(
                function (response) {
                    deferred.resolve(response);
                },
                function (response) {
                    deferred.reject('Error');
                }
            );
            return deferred.promise;
        };

        this.updateScore = function (matchId, isOne, value) {
            return $http.post('/api/home/updatescore', {
                'MatchId': matchId,
                'IsOne': isOne,
                'Value': value
            });
        };
    });
};