require "./finger_point"

win_flag = 0
hand = {"0": "グー", "1": "チョキ", "2": "パー"}
start_call = "じゃんけん..."

winner = ""

# じゃんけん
while win_flag == 0 do
  puts "--------------------------------"
  puts start_call
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
  me = gets.chomp.to_i
  
  if me != 0 && me != 1 && me != 2
    puts "出す手に当てはまる番号を指定してください"
    redo
  end
  
  puts "ホイ!"
  puts "--------------------------------"
  rival = rand(3)
  puts "あなた: #{hand[:"#{me}"]}を出しました"
  puts "相手: #{hand[:"#{rival}"]}を出しました"
  
  victory_of_defeat = me.to_i - rival
  
  case victory_of_defeat
  when 0 then
    start_call = "あいこで..."
    redo
  when 2, -1 then
    win_flag = 1
    winner = "あなた" 
    puts "あなたが勝ちました"
    win_flag = finger_point(win_flag, winner)
  when 1, -2 then
    win_flag = 2
    winner = "相手"
    puts "相手が勝ちました"
    win_flag = finger_point(win_flag, winner)
  end
  
  start_call = "じゃんけん..."
  
end    

