BUILD_DIR = "_build"

desc "Build website"

task :build do
  system("JEKYLL_ENV=production bundle exec jekyll build -d #{ BUILD_DIR }")
end

desc "Commit the latest version of the site to the gh-pages branch"
task :deploy do
  site = `git ls-tree -d HEAD #{ BUILD_DIR } | awk '{print $3}'`.strip
  new_commit = `echo 'Update website' | git commit-tree #{site} -p refs/heads/master`.strip
  system("git update-ref refs/heads/master #{new_commit}")
  system("git push origin master -f")
end
