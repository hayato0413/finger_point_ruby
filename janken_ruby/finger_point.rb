# あっち向いてホイ
def finger_point(win_flag, winner)
  if win_flag == 1 || win_flag == 2
    
    finger_direction = {"0": "上", "1": "下", "2": "左", "3": "右"}
    finger_me = 4
    puts "--------------------------------"
    puts "あっちむいて〜"
    puts "0(上) 1(下) 2(左) 3(右)"
    
    loop do
      finger_me = gets.chomp.to_i
      if finger_me != 0 && finger_me != 1 && finger_me != 2 && finger_me != 3
        puts "方向に当てはまる番号を指定してください"
      else 
        break
      end
    end
    
    puts "ホイ！"
    
    finger_rival = rand(4)
    
    puts "あなた: #{finger_direction[:"#{finger_me}"]}"
    puts "相手: #{finger_direction[:"#{finger_rival}"]}"
    
    if finger_me == finger_rival
      puts "#{winner}が勝ちました"
      return win_flag
    else 
      win_flag = 0
      return win_flag
    end
  end
end


