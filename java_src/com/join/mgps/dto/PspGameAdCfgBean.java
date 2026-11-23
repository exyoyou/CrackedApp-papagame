package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class PspGameAdCfgBean extends BaseBean {
    private int count_down;
    private String l_btn_text;
    private String l_btn_url;
    private List<PlayCfgBean> play_cfg;
    private String r_btn_text;
    private int switch_state;
    private String tip_text;
    private int what_day;

    public int getCount_down() {
        return this.count_down;
    }

    public String getL_btn_text() {
        return this.l_btn_text;
    }

    public String getL_btn_url() {
        return this.l_btn_url;
    }

    public List<PlayCfgBean> getPlay_cfg() {
        return this.play_cfg;
    }

    public String getR_btn_text() {
        return this.r_btn_text;
    }

    public int getSwitch_state() {
        return this.switch_state;
    }

    public String getTip_text() {
        return this.tip_text;
    }

    public int getWhat_day() {
        return this.what_day;
    }

    public void setCount_down(int count_down) {
        this.count_down = count_down;
    }

    public void setL_btn_text(String l_btn_text) {
        this.l_btn_text = l_btn_text;
    }

    public void setL_btn_url(String l_btn_url) {
        this.l_btn_url = l_btn_url;
    }

    public void setPlay_cfg(List<PlayCfgBean> play_cfg) {
        this.play_cfg = play_cfg;
    }

    public void setR_btn_text(String r_btn_text) {
        this.r_btn_text = r_btn_text;
    }

    public void setSwitch_state(int switch_state) {
        this.switch_state = switch_state;
    }

    public void setTip_text(String tip_text) {
        this.tip_text = tip_text;
    }

    public void setWhat_day(int what_day) {
        this.what_day = what_day;
    }
}
