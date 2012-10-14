class Achievement::Forker < LeveledAchievement
  Title = 'Forker'
  ImagePath = 'achievements/badge_forker.png'
  Description = 'User owns at least 10 forks.'
  Bubble = {
      right: 84,
      bottom: 88,
      orientation: :right
  };
  Levels = [5,15,40,100]

  def self.check(user)
    user.github.repos.all(type: 'owner').select { |repo| repo.fork == true }.count
  end
end