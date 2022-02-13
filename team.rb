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

team_Giants = Team.new("Giants",67, 45, 8)
team_Giants.show_team_result
#p team_Giants

team_Tigers = Team.new("Tigers",60, 53, 7)
team_Tigers.show_team_result
#p team_Tigers

team_Dragons = Team.new("Dragons",60, 55, 5)
team_Dragons.show_team_result
#p team_Dragons

team_BayStars = Team.new("BayStars",56, 58, 6)
team_BayStars.show_team_result
#p team_BayStars

team_Carp = Team.new("Carp",52, 56, 12)
team_Carp.show_team_result
#p team_Carp

team_Swallows = Team.new("Swallows",41, 69, 10)
team_Swallows.show_team_result
#p team_Swallows