class CultureController < ApplicationController
    # main page
    def index 
        if user_signed_in? 
           #yes
           @user_type = current_user.typenum # 0 => viewer, 1 => performer
        end
    end
    
    def enroll_result
       
       @subject = params[:subject]
       @user_name = params[:user_name]
       @datepicker = params[:datepicker]
       @lat = params[:lat]
       @lng = params[:lng]
     
    end
    
    def add
        if current_user.nil?
           redirect_to '/' 
        end
    end
    
    # 새 데이터를 저장함.
    def outputsave
        hello = Newpf.new
        hello.pf_title = params[:pf_title]
        hello.pf_add_br = params[:pf_add_br]
                
        hello.pf_address = params[:pf_address]
        hello.pf_address_sub = params[:pf_address_sub]
        hello.pf_userid = params[:pf_userid]    
        
        hello.pf_infor = params[:pf_infor]
        hello.pf_add_lat = params[:pf_add_lat]
        hello.pf_add_lng = params[:pf_add_lng]
        hello.pf_image = params[:pf_image]
        hello.pf_date = params[:dt_due]
        hello.pf_time = params[:pf_time]
        
        hello.musical = params[:musical]
        hello.play = params[:play]
        hello.concert = params[:concert]
        hello.classic = params[:classic]
        hello.jeonsi = params[:jeonsi]
        hello.sport = params[:sport]
        hello.busking = params[:busking]
        hello.amateur = params[:amateur]
        hello.etc = params[:etc]
        hello.save
        
        redirect_to '/culture/explore'
    
    end

    def explore
        
        @articles = Newpf.all
        
    end
    
    def single          
       
       @pid = Newpf.find(params[:id])
        
    end
    
    #댓글
    def comment_post
       c = Comment.new
       c.newpf_id = params[:newpf_id]
       c.user_id = params[:user_id]
       c.context = params[:context]
       c.save
       
       redirect_to '/culture/single/' + c.newpf_id.to_s
    end
    
    def comment_destory
        pid = params[:pid] # 게시글 id
        cid = params[:cid] # 덧글 id
        
        User.find(pid).comments.find(cid).destroy
        
        redirect_to '/culture/single/' + pid.to_s
    end
    
    #대댓글
    def reply_post
        pid = params[:newpf_id]
        r = Reply.new
        r.comment_id = params[:comment_id]
        r.user_id = params[:user_id]
        r.context = params[:context]
        r.save
        
        redirect_to '/culture/single/' + pid.to_s
    end
    
    def reply_destory
        Reply.find(rid).destroy
        redirect_to '/culture/single/' + pid.to_s
    end
    
    
    
    def add_update
        if current_user.nil?
           redirect_to '/' 
        end
        
        @pid = Newpf.find(params[:id])
        
    end
    
    def add_update_1
        if current_user.nil?
           redirect_to '/' 
        end
        
        @pid = Newpf.find(params[:id])
        @pid.pf_title = params[:new_pf_title]
        @pid.pf_add_br = params[:new_pf_add_br]

        @pid.pf_infor = params[:new_pf_infor]
        @pid.pf_image = params[:new_pf_image]
        @pid.pf_date = params[:new_dt_due]
        @pid.pf_time = params[:new_pf_time]
        @pid.musical = params[:new_musical]
        @pid.play = params[:new_play]
        @pid.concert = params[:new_concert]
        @pid.classic = params[:new_classic]
        @pid.jeonsi = params[:new_jeonsi]
        @pid.sport = params[:new_sport]
        @pid.busking = params[:new_busking]
        @pid.amateur = params[:new_amateur]
        @pid.etc = params[:new_etc]
        @pid.save
        
        redirect_to '/culture/single/' + @pid.id.to_s
            
    end
    
    def delete
        if current_user.nil?
           redirect_to '/' 
        end
        
        @pid = Newpf.find(params[:id])
        
        @pid.destroy
        
        redirect_to '/culture/explore'
        
    end
    
    
    
    def search
    end
    
    def pfadd
        
        @pfid = Performanceinfo.all
        
    end
    
    def outputsave_1
        
        hello = Performanceinfo.new
        hello.team_name = params[:team_name]
        hello.team_member = params[:team_member]
                
        hello.team_pic = params[:team_pic]
        hello.team_loca = params[:team_loca]
        hello.team_info = params[:team_info]    
        
        hello.team_fb = params[:team_fb]
        hello.team_tw = params[:team_tw]
        hello.team_blog = params[:team_blog]

        hello.team_musical = params[:team_musical]
        hello.team_play = params[:team_play]
        hello.team_concert = params[:team_concert]
        hello.team_classic = params[:team_classic]
        hello.team_jeonsi = params[:team_jeonsi]
        hello.team_sport = params[:team_sport]
        hello.team_busking = params[:team_busking]
        hello.team_amateur = params[:team_amateur]
        hello.team_etc = params[:team_etc]
        hello.save
        
        redirect_to '/culture/pfadd'
        
    end
    
    def profile
        
        @pfid = Performanceinfo.find(params[:id])
        
    end
    
    def pf_update
        
        @pfid = Performanceinfo.find(params[:id])
        
    end
    
    def pf_update_1
        
        @pfid = Performanceinfo.find(params[:id])
        
        @pfid.team_name = params[:new_team_name]
        @pfid.team_member = params[:new_team_member]
                
        @pfid.team_pic = params[:new_team_pic]
        @pfid.team_loca = params[:new_team_loca]
        @pfid.team_info = params[:new_team_info]    
        
        @pfid.team_fb = params[:new_team_fb]
        @pfid.team_tw = params[:new_team_tw]
        @pfid.team_blog = params[:new_team_blog]

        @pfid.team_musical = params[:new_team_musical]
        @pfid.team_play = params[:new_team_play]
        @pfid.team_concert = params[:new_team_concert]
        @pfid.team_classic = params[:new_team_classic]
        @pfid.team_jeonsi = params[:new_team_jeonsi]
        @pfid.team_sport = params[:new_team_sport]
        @pfid.team_busking = params[:new_team_busking]
        @pfid.team_amateur = params[:new_team_amateur]
        @pfid.team_etc = params[:new_team_etc]
        @pfid.save
        
        redirect_to '/culture/pfadd'
    end
    
    def pf_delete
        
        @pfid = Performanceinfo.find(params[:id])
        
        @pfid.destroy
        
        redirect_to '/culture/pfadd'
        
    end
end
