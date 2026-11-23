package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;

/* JADX INFO: loaded from: classes3.dex */
public class TodayWufunBroadcast extends CollectionBeanSub {
    private int bespeak_switch;
    private int down_status;
    DownloadTask downloadTask;
    private String download_original_switch;
    private String download_outside_url;
    private String download_source_switch_v1;
    private String download_source_switch_v2;
    private String download_source_url;
    private String game_desc;
    private String game_down;
    private String game_ico;
    private String game_id;
    private String game_img;
    private String game_info_tpl_type;
    private String game_name;
    private int game_open_switch;
    private long game_open_time;
    private int game_plugin_num;
    private String ico_remote;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68124id;
    private ModInfoBean mod_info;
    private String online_time;
    PayTagInfo pay_tag_info;
    private String pic;
    private float score_count;
    private SingleGameModInfoBean single_game_mod_info;
    private TipNew sp_tag_info;
    private int sp_tpl_two_position;
    private String title;
    private String tpl_type;

    @Override // com.join.mgps.dto.CollectionBeanSub
    public int getBespeak_switch() {
        return this.bespeak_switch;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public int getDown_status() {
        int i10 = this.down_status;
        if (i10 == 2 && this.bespeak_switch == 1) {
            return 6;
        }
        return i10;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    public DownloadTask getDownloadTask() {
        return this.downloadTask;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getDownload_original_switch() {
        return this.download_original_switch;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getDownload_outside_url() {
        return this.download_outside_url;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getDownload_source_switch_v1() {
        return this.download_source_switch_v1;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getDownload_source_switch_v2() {
        return this.download_source_switch_v2;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getDownload_source_url() {
        return this.download_source_url;
    }

    public String getGame_desc() {
        return this.game_desc;
    }

    public String getGame_down() {
        return this.game_down;
    }

    public String getGame_ico() {
        return this.game_ico;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getGame_id() {
        return this.game_id;
    }

    public String getGame_img() {
        return this.game_img;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getGame_info_tpl_type() {
        return this.game_info_tpl_type;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getGame_name() {
        return this.game_name;
    }

    public int getGame_open_switch() {
        return this.game_open_switch;
    }

    public int getGame_plugin_num() {
        return this.game_plugin_num;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String getIco_remote() {
        return this.ico_remote;
    }

    public String getId() {
        return this.f68124id;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public ModInfoBean getMod_info() {
        return this.mod_info;
    }

    public String getOnline_time() {
        return this.online_time;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public PayTagInfo getPay_tag_info() {
        return this.pay_tag_info;
    }

    public String getPic() {
        return this.pic;
    }

    public float getScore_count() {
        return this.score_count;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public SingleGameModInfoBean getSingle_game_mod_info() {
        return this.single_game_mod_info;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public TipNew getSp_tag_info() {
        return this.sp_tag_info;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public int getSp_tpl_two_position() {
        return this.sp_tpl_two_position;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setBespeak_switch(int bespeak_switch) {
        this.bespeak_switch = bespeak_switch;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setDown_status(int down_status) {
        this.down_status = down_status;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    public void setDownloadTask(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setDownload_original_switch(String download_original_switch) {
        this.download_original_switch = download_original_switch;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setDownload_outside_url(String download_outside_url) {
        this.download_outside_url = download_outside_url;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setDownload_source_switch_v1(String download_source_switch_v1) {
        this.download_source_switch_v1 = download_source_switch_v1;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setDownload_source_switch_v2(String download_source_switch_v2) {
        this.download_source_switch_v2 = download_source_switch_v2;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setDownload_source_url(String download_source_url) {
        this.download_source_url = download_source_url;
    }

    public void setGame_desc(String game_desc) {
        this.game_desc = game_desc;
    }

    public void setGame_down(String game_down) {
        this.game_down = game_down;
    }

    public void setGame_ico(String game_ico) {
        this.game_ico = game_ico;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setGame_img(String game_img) {
        this.game_img = game_img;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setGame_info_tpl_type(String game_info_tpl_type) {
        this.game_info_tpl_type = game_info_tpl_type;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }

    public void setGame_open_switch(int game_open_switch) {
        this.game_open_switch = game_open_switch;
    }

    public void setGame_plugin_num(int game_plugin_num) {
        this.game_plugin_num = game_plugin_num;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setIco_remote(String ico_remote) {
        this.ico_remote = ico_remote;
    }

    public void setId(String id2) {
        this.f68124id = id2;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setMod_info(ModInfoBean mod_info) {
        this.mod_info = mod_info;
    }

    public void setOnline_time(String online_time) {
        this.online_time = online_time;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setPay_tag_info(PayTagInfo pay_tag_info) {
        this.pay_tag_info = pay_tag_info;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public void setScore_count(float score_count) {
        this.score_count = score_count;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setSingle_game_mod_info(SingleGameModInfoBean single_game_mod_info2) {
        this.single_game_mod_info = single_game_mod_info2;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setSp_tag_info(TipNew sp_tag_info) {
        this.sp_tag_info = sp_tag_info;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setSp_tpl_two_position(int sp_tpl_two_position) {
        this.sp_tpl_two_position = sp_tpl_two_position;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }
}
