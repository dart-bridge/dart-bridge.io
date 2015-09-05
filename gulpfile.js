var gulp = require('gulp');
var stylus = require('gulp-stylus');

gulp.task('default', function() {
  gulp.src('stylesheets/app.styl')
      .pipe(stylus({ compress: true }))
      .pipe(gulp.dest('web/'))
});

gulp.task('watch', ['default'], function() {
  gulp.watch('stylesheets/**/*.styl', ['default']);
});