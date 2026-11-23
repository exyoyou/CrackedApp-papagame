package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DownloadSpeedupCfgBean extends BaseBean {
    private String btn_text;
    private int net_status = 0;
    private List<PlayCfgBean> play_cfg;
    private int show_users;
    private int speedup_times;
    private int switch_state;
    private String tip_text;
    private int what_day;

    public String getBtn_text() {
        return this.btn_text;
    }

    public int getNet_status() {
        return this.net_status;
    }

    public List<PlayCfgBean> getPlay_cfg() {
        return this.play_cfg;
    }

    public int getShow_users() {
        return this.show_users;
    }

    public int getSpeedup_times() {
        return this.speedup_times;
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

    public void setBtn_text(String btn_text) {
        this.btn_text = btn_text;
    }

    public void setNet_status(int net_status) {
        this.net_status = net_status;
    }

    public void setPlay_cfg(List<PlayCfgBean> play_cfg) {
        this.play_cfg = play_cfg;
    }

    public void setShow_users(int show_users) {
        this.show_users = show_users;
    }

    public void setSpeedup_times(int speedup_times) {
        this.speedup_times = speedup_times;
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
