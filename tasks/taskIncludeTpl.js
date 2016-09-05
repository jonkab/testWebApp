var gulp = require('gulp'),
    fileinclude = require('gulp-file-include');

gulp.task('includeTpl', function() {
    gulp.src(['./app/static-files/layout/index.html'])
        .pipe(fileinclude({
            prefix: '@@',
            basepath: '@file'
        }))
        .pipe(gulp.dest('.tmp/'));
});
