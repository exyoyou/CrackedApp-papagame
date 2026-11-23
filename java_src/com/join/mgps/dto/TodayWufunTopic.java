package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class TodayWufunTopic {
    private String auth;
    private int bespeak_switch;
    private int down_status;
    private String game_ico;
    private String game_id;
    private String game_name;
    private int game_open_switch;
    private int game_open_time;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68126id;
    private String pic;
    private TipNew sp_tag_info;
    private int sp_tpl_two_position;
    private int tag_type;
    private String title;
    private String tpl_type;

    public String getAuth() {
        return this.auth;
    }

    public int getBespeak_switch() {
        return this.bespeak_switch;
    }

    public int getDown_status() {
        int i10 = this.down_status;
        if (i10 == 2 && this.bespeak_switch == 1) {
            return 6;
        }
        return i10;
    }

    public String getGame_ico() {
        return this.game_ico;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public int getGame_open_switch() {
        return this.game_open_switch;
    }

    public int getGame_open_time() {
        return this.game_open_time;
    }

    public String getId() {
        return this.f68126id;
    }

    public String getPic() {
        return this.pic;
    }

    public TipNew getSp_tag_info() {
        return this.sp_tag_info;
    }

    public int getSp_tpl_two_position() {
        return this.sp_tpl_two_position;
    }

    public int getTag_type() {
        return this.tag_type;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setAuth(String auth) {
        this.auth = auth;
    }

    public void setBespeak_switch(int bespeak_switch) {
        this.bespeak_switch = bespeak_switch;
    }

    public void setDown_status(int down_status) {
        this.down_status = down_status;
    }

    public void setGame_ico(String game_ico) {
        this.game_ico = game_ico;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }

    public void setGame_open_switch(int game_open_switch) {
        this.game_open_switch = game_open_switch;
    }

    public void setGame_open_time(int game_open_time) {
        this.game_open_time = game_open_time;
    }

    public void setId(String id2) {
        this.f68126id = id2;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public void setSp_tag_info(TipNew sp_tag_info) {
        this.sp_tag_info = sp_tag_info;
    }

    public void setSp_tpl_two_position(int sp_tpl_two_position) {
        this.sp_tpl_two_position = sp_tpl_two_position;
    }

    public void setTag_type(int tag_type) {
        this.tag_type = tag_type;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }
}
