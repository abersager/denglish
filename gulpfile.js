var gulp = require('gulp'),
    shell = require('gulp-shell'),
    ghPages = require('gulp-gh-pages');

var pkg = require('./package.json');

gulp.task('build', shell.task('./build.sh'))

gulp.task('deploy', ['build'], function() {
  return gulp.src('./dist/**/*')
    .pipe(ghPages({
      message: 'Publish version ' + pkg.version
    }));
});
