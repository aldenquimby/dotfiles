
# https://github.com/phinze/homebrew-cask/blob/master/USAGE.md#options
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# for each installed package, list other packages that depend on it
brew_reverse_dependencies() {
    brew list | while read cask; do echo -n "$cask ->"; brew uses --installed $cask | awk '{printf(" %s ", $0)}'; echo ""; done
}

# for each installed package, list other packages that it depends on
brew_dependencies() {
    brew list | while read cask; do echo -n "$cask ->"; brew deps $cask | awk '{printf(" %s ", $0)}'; echo ""; done
}

brew_cask_outdated() {
	set -- $(brew cask list)
	sentinel='/'

	oldIFS="$IFS"
	IFS="$sentinel"
	apps="$sentinel$*$sentinel"
	IFS="$oldIFS"

	for appdir in /usr/local/Caskroom/*
	do
	  [ -d "$appdir" ] || continue
	  app="${appdir##*/}"

	  verlocal="$(find "$appdir"/* -type d -print -quit)"
	  verlocal="${verlocal##*/}"
	  verlatest="$(brew cask info "$app" | awk -v app="$app" '$1 == app":" { print $2; exit }')"

	  case "$apps" in
	    *"$sentinel$app$sentinel"*)
	      if [ "$verlocal" != "$verlatest" ]
	      then
	        printf -- '\n:: found app: %s\n' "$app"
	        printf -- 'local v  : %s\n' "$verlocal"
	        printf -- 'latest v : %s\n' "$verlatest"
	        printf -- 'upgrade  : brew cask install --force %s\n' "$app"
	        printf -- 'cleanup  : rm -rf %s/%s && rm -rf %s/.metadata/%s\n' "$appdir" "$verlocal" "$appdir" "$verlocal"
	      fi
	      ;;
	    *)
	      printf -- '\napp not found: %s\n' "$app"
	      ;;
	  esac
	done
}
