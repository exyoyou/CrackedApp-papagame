package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatorPathCfgBean extends BaseBean {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private Integer f68118id;
    private List<PlayCfgBean> play_cfg;
    private Integer switch_state;

    public Integer getId() {
        return this.f68118id;
    }

    public List<PlayCfgBean> getPlay_cfg() {
        return this.play_cfg;
    }

    public Integer getSwitch_state() {
        return this.switch_state;
    }

    public void setId(Integer id2) {
        this.f68118id = id2;
    }

    public void setPlay_cfg(List<PlayCfgBean> play_cfg) {
        this.play_cfg = play_cfg;
    }

    public void setSwitch_state(Integer switch_state) {
        this.switch_state = switch_state;
    }
}
