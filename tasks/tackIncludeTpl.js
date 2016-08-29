var gulp = require('gulp'),
    fileinclude = require('gulp-file-include');

gulp.task('include-tpl', function() {
    gulp.src(['./app/static-files/templates/page.html'])
        .pipe(fileinclude({
            prefix: '@@',
            basepath: '@file'
        }))
        .pipe(gulp.dest('./dist/'));
});