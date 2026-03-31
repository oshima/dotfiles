function r
  cd ~/github.com/rentio/rentio

  if test -n "$argv"
    docker compose exec rails $argv
  end
end
