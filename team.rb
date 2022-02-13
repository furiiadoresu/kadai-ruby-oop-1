class Team
  # オブジェクトの変数（値）
  attr_accessor :name, :win, :lose, :draw

  # 初期化用の特別なメソッド
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end

  # オブジェクトのメソッド（勝率）
  def calc_win_rate(win, lose)
    # 勝ち数/(勝ち数+負け数)
    return win.to_f/(win.to_f + lose.to_f)
  end
  
  def show_team_result
    puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{self.calc_win_rate(win, lose)}です。"
  end
end

team_giants = Team.new("Giants",67, 45, 8)
team_giants.show_team_result

team_tigers = Team.new("Tigers",60, 53, 7)
team_tigers.show_team_result
#p team_Tigers

team_dragons = Team.new("Dragons",60, 55, 5)
team_dragons.show_team_result

team_bayStars = Team.new("BayStars",56, 58, 6)
team_bayStars.show_team_result

team_carp = Team.new("Carp",52, 56, 12)
team_carp.show_team_result

team_swallows = Team.new("Swallows",41, 69, 10)
team_swallows.show_team_result