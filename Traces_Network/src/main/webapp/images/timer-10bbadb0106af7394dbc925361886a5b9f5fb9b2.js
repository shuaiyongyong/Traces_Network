angular.module('timer', [])
    .directive('timer', ['$compile', function ($compile) {
        return  {
            restrict: 'EA',
            replace: false,
            scope: {
                interval: '=interval',
                startTimeAttr: '=startTime',
                countdownattr: '=countdown',
                nodayattr: '=noday',
                iscountdown: '=iscountdown',
                autoStart: '&autoStart'
            },
            controller: ['$scope', '$element', '$attrs', function ($scope, $element, $attrs) {


                //angular 1.2 doesn't support attributes ending in "-start", so we're
                //supporting both "autostart" and "auto-start" as a solution for
                //backward and forward compatibility.
                $scope.autoStart = $attrs.autoStart || $attrs.autostart;
                $scope.noday = $attrs.nodayattr || true;

                $element.replaceWith($compile('<span>{{hours}}:{{minutes}}:{{seconds}}</span>')($scope));

                $scope.startTime = null;
                $scope.timeoutId = null;
                $scope.countdown = $scope.countdownattr && parseInt($scope.countdownattr, 10) >= 0 ? parseInt($scope.countdownattr, 10) : undefined;
                $scope.isRunning = false;

                $scope.$on('timer-start', function () {
                    $scope.start();
                });

                $scope.$on('timer-resume', function () {
                    $scope.resume();
                });

                $scope.$on('timer-stop', function () {
                    $scope.stop();
                });

                function resetTimeout() {
                    if ($scope.timeoutId) {
                        clearTimeout($scope.timeoutId);
                    }
                }

                $scope.start = $element[0].start = function () {
                    $scope.startTime = $scope.startTimeAttr ? new Date($scope.startTimeAttr) : new Date();
                    $scope.countdown = $scope.countdownattr && parseInt($scope.countdownattr, 10) > 0 ? parseInt($scope.countdownattr, 10) : undefined;
                    resetTimeout();
                    tick();
                };

                $scope.resume = $element[0].resume = function () {
                    resetTimeout();
                    if ($scope.countdownattr) {
                        $scope.countdown += 1;
                    }
                    $scope.startTime = new Date() - ($scope.stoppedTime - $scope.startTime);
                    tick();
                };

                $scope.stop = $scope.pause = $element[0].stop = $element[0].pause = function () {
                    $scope.stoppedTime = new Date();
                    resetTimeout();
                    $scope.$emit('timer-stopped', {millis: $scope.millis, seconds: $scope.seconds, minutes: $scope.minutes, hours: $scope.hours, days: $scope.days});
                    $scope.timeoutId = null;
                };

                $element.bind('$destroy', function () {
                    resetTimeout();
                });

                function calculateTimeUnits() {
                    $scope.seconds = Math.floor(($scope.millis / 1000) % 60);
                    $scope.minutes = Math.floor((($scope.millis / (60000)) % 60));
                    $scope.hours = Math.floor((($scope.millis / (3600000)) % 24));
                    $scope.days = Math.floor((($scope.millis / (3600000)) / 24));


                    if($scope.noday && $scope.days){
                        $scope.hours = $scope.hours + $scope.days*24;
                        $scope.days = 0;
                    }
                    if($scope.seconds < 10 ) $scope.seconds = '0'+$scope.seconds;
                    if($scope.minutes < 10 ) $scope.minutes = '0'+$scope.minutes;
                    if($scope.hours < 10 ) $scope.hours = '0' + $scope.hours;

                }

                //determine initial values of time units
                if ($scope.countdownattr) {
                    $scope.millis = $scope.countdownattr * 1000;
                } else {
                    $scope.millis = 0;
                }
                calculateTimeUnits();

                var tick = function () {

                    if(!$scope.countdown && $scope.iscountdown == "1"){
                        $scope.stop();
                        return;
                    }



                    $scope.millis = new Date() - $scope.startTime;
                    var adjustment = $scope.millis % 1000;

                    if ($scope.countdownattr) {
                        $scope.millis = $scope.countdown * 1000;
                    }

                    calculateTimeUnits();
                    if ($scope.countdown > 0) {
                        $scope.countdown--;
                    }
                    else if ($scope.countdown <= 0) {
                        $scope.stop();
                        return;
                    }

                    //We are not using $timeout for a reason. Please read here - https://github.com/siddii/angular-timer/pull/5
                    $scope.timeoutId = setTimeout(function () {
                        tick();
                        $scope.$apply();
                    }, $scope.interval - adjustment);

                    $scope.$emit('timer-tick', {timeoutId: $scope.timeoutId, millis: $scope.millis});
                };

                if ($scope.autoStart === undefined || $scope.autoStart === true) {
                    $scope.start();
                }
            }]
        };
    }]);