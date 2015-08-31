class CreatePerformanceinfos < ActiveRecord::Migration
  def change
    create_table :performanceinfos do |t|
      
            t.string :team_name    # 팀이름
      t.string :team_member   # 위치에 대한 간략한 설명
      t.string :team_pic    # 이미지 파일
      t.string :team_loca  # 정확한 위치
      t.text :team_info      # 내용
      
      t.string :team_fb  # 페이스북
      t.string :team_tw  # 위도
      t.string :team_blog  # 경도
      
      t.string :team_musical
      t.string :team_play
      t.string :team_concert
      t.string :team_classic
      t.string :team_jeonsi
      t.string :team_sport
      t.string :team_busking
      t.string :team_amateur
      t.string :team_etc

      t.timestamps null: false
    end
  end
end
