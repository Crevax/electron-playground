var gulp = require('gulp'),
    gulp_concat = require('gulp-concat'),
    gulp_uglify = require('gulp-uglify');


gulp.task('build:js', function() {
    return gulp.src(['src/js/**/*.js',])
        .pipe(gulp_concat('app.min.js'))
        .pipe(gulp_uglify())
        .pipe(gulp.dest('src/dist/js/'));
});

gulp.task('build:lib-js', function() {
    return gulp.src([
            'bower_components/angular/angular.js',
            'bower_components/angular-ui-router/release/angular-ui-router.js'
        ])
        .pipe(gulp_concat('lib.min.js'))
        .pipe(gulp_uglify())
        .pipe(gulp.dest('src/dist/js/'))
})
