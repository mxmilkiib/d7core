;;; core.make 
;;; by Milk Miruku

; Drush Make API version
api = 2

; Core version. Aegir doesn't like just projects[] = "drupal" for some reason.
core = 7.x

projects[drupal][type] = core

;;; Theme is set in .info via Profiler library

projects[] = admin_menu
projects[] = devel
projects[] = devel_themer


;;; Profile and .make

projects[profile_base][type] = profile
projects[profile_base][download][type] = git
projects[profile_base][download][url] = profile_git_location


;;; Libraries

; Profiler simplifies Profiles with the .info
libraries[profiler][download][type] = get
libraries[profiler][download][url] = http://ftp.drupal.org/files/projects/profiler-7.x-2.x-dev.tar.gz
libraries[profiler][destination] = libraries
