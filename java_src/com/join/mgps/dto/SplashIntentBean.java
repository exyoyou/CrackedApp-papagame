package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class SplashIntentBean {
    private int ad_switch;
    private String crc_link_type_val;
    private SimbGameinfo game_info;
    private int jump_id;
    private int jump_type;
    private int link_type;
    private String link_type_val;
    private String pic_remote;
    private String pic_remote_local;
    private int showPosition = 0;
    private long show_time;
    private int tag_show;
    private String title;
    private String tpl_type;
    private String vedio_url;
    private String vedio_url_local;

    public static class SimbGameinfo {
        private String game_info_tpl_type;
        private String ico_remote;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68121id;
        private String sp_tpl_two_position;
        private String title;

        public static SimbGameinfo from(JSONObject json) {
            SimbGameinfo simbGameinfo = new SimbGameinfo();
            try {
                simbGameinfo.setId(json.optString("id"));
                simbGameinfo.setTitle(json.optString("title"));
                simbGameinfo.setIco_remote(json.optString("ico_remote"));
                simbGameinfo.setGame_info_tpl_type(json.optString("game_info_tpl_type"));
                simbGameinfo.setSp_tpl_two_position(json.optString("sp_tpl_two_position"));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return simbGameinfo;
        }

        public String getGame_info_tpl_type() {
            return this.game_info_tpl_type;
        }

        public String getIco_remote() {
            return this.ico_remote;
        }

        public String getId() {
            return this.f68121id;
        }

        public String getSp_tpl_two_position() {
            return this.sp_tpl_two_position;
        }

        public String getTitle() {
            return this.title;
        }

        public void setGame_info_tpl_type(String game_info_tpl_type) {
            this.game_info_tpl_type = game_info_tpl_type;
        }

        public void setIco_remote(String ico_remote) {
            this.ico_remote = ico_remote;
        }

        public void setId(String id2) {
            this.f68121id = id2;
        }

        public void setSp_tpl_two_position(String sp_tpl_two_position) {
            this.sp_tpl_two_position = sp_tpl_two_position;
        }

        public void setTitle(String title) {
            this.title = title;
        }
    }

    public static SplashIntentBean from(JSONObject json) {
        SplashIntentBean splashIntentBean = new SplashIntentBean();
        try {
            splashIntentBean.setLink_type(json.optInt("link_type"));
            splashIntentBean.setLink_type_val(json.optString("link_type_val"));
            splashIntentBean.setCrc_link_type_val(json.optString("crc_link_type_val"));
            splashIntentBean.setJump_type(json.optInt("jump_type"));
            splashIntentBean.setJump_id(json.optInt("jump_id"));
            splashIntentBean.setTpl_type(json.optString("tpl_type"));
            splashIntentBean.setTitle(json.optString("title"));
            splashIntentBean.setPic_remote(json.optString("pic_remote"));
            splashIntentBean.setPic_remote_local(json.optString("pic_remote_local"));
            splashIntentBean.setAd_switch(json.optInt("ad_switch"));
            splashIntentBean.setShow_time(json.optLong("show_time"));
            splashIntentBean.setTag_show(json.optInt("tag_show"));
            splashIntentBean.setShowPosition(json.optInt("showPosition"));
            splashIntentBean.setVedio_url(json.optString("vedio_url"));
            splashIntentBean.setVedio_url_local(json.optString("vedio_url_local"));
            JSONObject jSONObjectOptJSONObject = json.optJSONObject("game_info");
            if (jSONObjectOptJSONObject != null) {
                splashIntentBean.setGame_info(SimbGameinfo.from(jSONObjectOptJSONObject));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return splashIntentBean;
    }

    public int getAd_switch() {
        return this.ad_switch;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public SimbGameinfo getGame_info() {
        return this.game_info;
    }

    public IntentDateBean getIntentDataBean() {
        SimbGameinfo simbGameinfo;
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setJump_type(this.jump_type);
        intentDateBean.setLink_type(this.link_type);
        intentDateBean.setLink_type_val(this.link_type_val);
        intentDateBean.setCrc_link_type_val(this.crc_link_type_val);
        if (this.link_type != 1 || (simbGameinfo = this.game_info) == null) {
            intentDateBean.setTpl_type(this.tpl_type);
        } else {
            intentDateBean.setTpl_type(simbGameinfo.getGame_info_tpl_type());
        }
        return intentDateBean;
    }

    public int getJump_id() {
        return this.jump_id;
    }

    public int getJump_type() {
        return this.jump_type;
    }

    public int getLink_type() {
        return this.link_type;
    }

    public String getLink_type_val() {
        return this.link_type_val;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getPic_remote_local() {
        return this.pic_remote_local;
    }

    public int getShowPosition() {
        return this.showPosition;
    }

    public long getShow_time() {
        return this.show_time;
    }

    public int getTag_show() {
        return this.tag_show;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public String getVedio_url() {
        return this.vedio_url;
    }

    public String getVedio_url_local() {
        return this.vedio_url_local;
    }

    public void setAd_switch(int ad_switch) {
        this.ad_switch = ad_switch;
    }

    public void setCrc_link_type_val(String crc_link_type_val) {
        this.crc_link_type_val = crc_link_type_val;
    }

    public void setGame_info(SimbGameinfo game_info) {
        this.game_info = game_info;
    }

    public void setJump_id(int jump_id) {
        this.jump_id = jump_id;
    }

    public void setJump_type(int jump_type) {
        this.jump_type = jump_type;
    }

    public void setLink_type(int link_type) {
        this.link_type = link_type;
    }

    public void setLink_type_val(String link_type_val) {
        this.link_type_val = link_type_val;
    }

    public void setPic_remote(String pic_remote) {
        this.pic_remote = pic_remote;
    }

    public void setPic_remote_local(String pic_remote_local) {
        this.pic_remote_local = pic_remote_local;
    }

    public void setShowPosition(int showPosition) {
        this.showPosition = showPosition;
    }

    public void setShow_time(long show_time) {
        this.show_time = show_time;
    }

    public void setTag_show(int tag_show) {
        this.tag_show = tag_show;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }

    public void setVedio_url(String vedio_url) {
        this.vedio_url = vedio_url;
    }

    public void setVedio_url_local(String vedio_url_local) {
        this.vedio_url_local = vedio_url_local;
    }
}
