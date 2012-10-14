class Achievement::Githubbie < Achievement
  Title = 'Githubbie'
  ImagePath = 'achievements/badge_hubbie.png'
  Description = 'User owns at least 1 repo.'

  def self.check(user)
    user.github.repos.all.count >= 1
  end

end